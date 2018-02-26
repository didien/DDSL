# Sensor Simulation Language -> SSL

## Description
Ce projet a pour but de créer un langage spécifique au domaine de la simulation de capteurs de type IoT. 

L'objectif est de fournir un langage qui permet les quatre fonctionalités suivantes :
- créer et paramétrer des lois de génération de relevés de capteurs;
- créer des grappes de capteurs suivant une loi précédemment créée;
- rejouer des relevés de capteurs stockés dans un fichier;
- de paramétrer des dashboards sur Grafana.

Les données générées sont envoyées sur une base de données InfluxDB, qui permet d'alimenter le moteur de rendu Grafana.

## Présentation
Ce DSL a été réalisé avec MPS de Jetbrains et présente donc quelques particularités du point de vue utilisateur : 
- le texte est préformaté : il n'y a qu'à rajouter des blocs et compléter les trous;
- on ne peut pas disposer les blocs dans un ordre arbitraire;
- il faut utiliser un IDE particulier (MPS) pour créer et exécuter des scritps.

## Prérequis
### Connaissance de l'utilisation de MPS
Ce court tutoriel part du principe que l'on sait utiliser MPS.

### Instances à lancer
Avant de pouvoir exécuter le DSL, il faut qu'une instance d'influxDB et de Grafana soient en cours d'exécution et accessibles quelque part. Le plus simple reste encore d'exécuter `docker-compose up` dans le répertoire principal du projet : cela va créer les instances nécessaires.

### Configuration de Grafana
Pour pouvoir utiliser la fonctionnalité de paramétrage de dashboards, il faut réunir deux conditions :
- avoir paramétré une source de données influxDB ayant pour nom influxdb;
- avoir généré une clé d'API pour Grafana avec les droits admin ([marche à suivre](http://docs.grafana.org/http_api/auth/#create-api-token)).

## Utilisation
### Création d'un script de simulation
Lorsque l'on créé une simulation en faisant _sandbox_ -> _clic droit_ -> _new SSL Simulation_, le contenu par défaut du script est le suivant :
```
simulation TutorialSimulation            
influxDB host : http://localhost:8086    
grafana host  : http://localhost:3000

starts the dd-MM-yy HH:mm                
ends the dd-MM-yy HH:mm    

data sources:                            
  no data source defined !  
  
sensor collections:        
  no collection defined !  
  
grafana displays:                        
  no dashboards set, but it's ok that way
```

### Configuration de la simulation
On peut si on souhaite modifier les urls par défaut d'influxDB et/ou de Grafana, pour pointer vers d'autres instances que celles qui apparaitraient en déployant le fichier docker-compose.

Il faut ensuite configurer une date de début et une date de fin à la simulation, en respectant le format **dd-MM-YY HH:mm**. Cela donnerait 25-02-18 15:15 pour le 25 février 2018 à 15 heure et 15 minutes. Il a été envisagé de laisser le format à la discrétion de l'utilisateur, mais cela n'a pas été retenu car jugé source d'erreurs et de confusions pour l'utilisateur.

**Attention** : l'heure est donnée par rapport au fuseau horaire UTC.

Il y a ensuite les trois blocs principaux suivants : les sources de données, les grappes de capteurs et les dashboards Grafana.
Il est conseillé de les compléter dans l'ordre dans lequel ils sont présentés : cela réduira les erreurs possibles lors de la complétion et résultera en un gain de temps.

### Configuration des sources de données
#### Commun à toutes les sources de données
Lors que les champs suivants apparaissent :
```
update period   : <no updatePeriod>  
sampling period : <no samplingPeriod>
reset period    : <no resetPeriod>
```
Il faut les remplir de la manière suivante :
- update period est la fréquence en secondes à laquelle le capteur **génère** un nouveau relevé;
- sampling period est la fréquence en secondes à laquelle une **lecture** du capteur est réalisée;
- reset period est la fréquence en secondes à laquelle la loi du capteur est réinitialisée (si `resetPeriod = 0`, elle n'est jamais réinitialisée).

Ces champs ne sont présents que lorsqu'ils ont une pertinence par rapport à la source de données dont il est question.

#### Loi aléatoire
Il faut faire apparaitre le bloc de configuration de la loi aléatoire.
Une fois cela fait, on a le bloc suivant :
```
data source <no name> is random_law    
  min      : <no min>                  
  max      : <no max>                  
  update period   : <no updatePeriod>  
  sampling period : <no samplingPeriod>
```
Il faut ensuite donner les bornes inférieures et supérieures (avec des nombres entiers, où `min > max`) et paramétrer les champs restants.

Dans notre exemple, la loi est nommée `random_angle` (en hommage à l'IoT random) avec des valeurs comprises entre `0` et `180`°, avec un nouveau relevé toutes les `55` secondes et une lecture toutes les `30` secondes.

#### Chaine de Markov
Plus complexe que la première, cette loi permet de passer d'un état à un autre selon des règles de transitions ([voir le superbe exemple de Doudou le hamster](https://fr.wikipedia.org/wiki/Chaîne_de_Markov#Exemple_:_Doudou_le_hamster)).
Le bloc suivant apparaît lors de son instanciation :
```
data source <no name> follows markov's chain    
  transitions :                                 
                <no name> : [ <no probability> ]                
  update period   : <no updatePeriod>           
  sampling period : <no samplingPeriod>         
  reset period    : <no resetPeriod>            
```

Il faut ici nommer la loi et créer des états. Un état possède un label (le nom de l'état) et un nombre de transitions égal au nombre d'états totaux. Chaque transition est un nombre décimal compris entre 0 et 1. La somme de toutes les transitions doit être égale à 1.

Dans notre exemple représentant encore un capteur emblématique du monde de l'IoT, nous avons retenu la configuration suivante :
```
data source weather_law follows markov's chain     
  transitions :                                    
                sunny : [ 0.6 | 0.2 | 0.05 | 0.15 ]
                cloudy : [ 0.2 | 0.5 | 0.1 | 0.2 ] 
                snowy : [ 0.3 | 0.3 | 0.4 | 0. ]   
                rainy : [ 0.1 | 0.3 | 0.1 | 0.5 ]                     
  update period   : 500                            
  sampling period : 350                            
  reset period    : 86400                          
```
Appréciez la disposition gracieuse, pratique et automatique des valeurs de transitions.

#### Loi de modélisation
Avec cette loi, on peut configurer un modèle qui, en fonction de l'heure de la journée, produit une valeur de manière plus ou moins complexe.
Le bloc par défaut se présente sous la forme suivante :
```
data source <no name> follows a modelling function      
  x is in hours, lower bound is 00 and upper bound is 24
  constraints : until <no bound> apply y = <no closure> 
  update period   : <no updatePeriod>                   
  sampling period : <no samplingPeriod>                 
  <no noise>                                            
  ```
  La seconde ligne reflète l'introduction de cette loi : il n'a pas été jugé utile de permettre de générer des valeurs autrement qu'en fonction de l'heure de la journée (même si c'est très simple à rajouter, grâce à une simple modification de notre modèle :wink:)
  
Pour utiliser la loi, il faut indiquer des règles : une expression fonction de l'heure courante et l'heure jusqu'à laquelle ladite expression est valable.
L'expression à fournir doit être une expression mathématique valide et reconnue ([voir liste des fonctions reconnues](https://www.objecthunter.net/exp4j/#Built-in_functions)), comportant ou ne comportant pas la variable x. 

La dernière expression **doit** être explicitement valide jusqu'à minuit (24h).

On peut donc obtenir le bloc suivant avec trois règles :
```
data source modelling_law follows a modelling function   
  x is in hours, lower bound is 00 and upper bound is 24 
  constraints : until 7 apply y = 0                      
                until 18 apply y = abs(1/2x^2 - 11x + 20)
                until 24 apply y = 0                     
  update period   : 500                                  
  sampling period : 180
```
On aura donc une valeur égale à 0 jusqu'à 7h du matin, puis une valeur suivant `abs(1/2x^2 - 11x + 20)` jusqu'à 18h, puis revaudra 0 jusqu'à minuit. Simple. Basique.

##### Ajout de bruit
Étant donné que ce modèle est déterministe, toutes les simulations avec cette loi auront les mêmes valeurs. Pour faire varier légèrement les relevés, on peut ajouter un générateur de bruit au modèle, en additionnant une valeur aléatoire au relevé déterministe produit. Pour obtenir un générateur, il suffit d'ajouter un bloc au champ `<no noise>`.

La configuration du générateur consiste à spécifier une valeur minimale, une valeur maximale (valeurs décimales avec `min >= max`) et le nombre de chiffres après la virgule (nombre entier naturel) que doit avoir la valeur générée. Cela est complètement transparent pour le reste de la loi.

On ajoute le générateur suivant :
```
  with random noise                                      
    min   : -3.                                          
    max   : 3.                                           
    scale : 0                                            
```

### Configuration des grappes de capteurs
Une fois les sources de données configurées, il faut paramétrer les grappes de capteurs qui vont les utiliser.  
Une grappe de capteurs est définie par le nombre de capteurs qu'elle comporte, le nom de la grappe (chaque capteur porte le nom de la grappe suivi d'un numéro incrémental) ainsi que la source de données à utiliser pour générer les relevés.

Le bloc par défaut est le suivant :  
```<no quantity> sensors <no name> following <no dataSource>```

On va ici créer les grappes suivantes :
```
15 sensors awesome_door following random_angle        
2 sensors bipolar_weather_sensor following weather_law
20 sensors thingy_sensor following modelling_law      
```

Il n'y a rien d'autre à faire, à une génération du code et une exécution près, c'est comme si les données étaient déjà dans influxDB :heart_eyes:

### Configuration de dashboards Grafana
Avec SSL, il est possible de définir des dashboards Grafana et leur composition. Cependant en raison d'une API limitée en fonctionnalités et d'un client Java encore plus limité, les possibilités sont pour le moment restreintes à la disposition de panels dans des lignes, et de lignes dans des dashboards.  
Le seul type de graphique supporté est le graphique classique. Alors que la version de Grafana dans le docker-compose comporte de beaux et pratiques graphiques discrets.  

Le bloc par défaut est le suivant :
```
  API token : <no token>    
  add at least one dashboard
```
#### Token d'API
Dans un premier temps il faut fournir le token d'API obtenu en début de tutoriel (voir prérequis). Contrairement à ce que fournit la bibliothèque utilisée, voici des instructions pour donner le token : il faut coller la chaîne de caractères générée, sans le mot _Bearer_ devant. Il est accolé devant de manière automatique lors de la génération de code, pour simplifier l'utilisation.

#### Dashboard
Il faut ensuite générer un bloc pour créer un dashboard :
```
setup a dashboard named <no name> with the following rows
  panel name  : <no name>                                
  yAxis label : <no yAxis>                               
  span (on 12): <no span>                                
```

Étant donné qu'un dashboard ne peut exister sans avoir au moins un panel, un bloc panel est fourni lors de la génération du bloc. On peut ensuite ajouter des panels sur la même ligne, ou sur une autre ligne.

Chaque panel a besoin d'un nom, d'un label sur l'axe Y et d'une largeur (nombre entier naturel compris entre 1 et 12). La largeur maximale d'une ligne est de 12 : il faut donc que la somme des largeurs de panels d'une même ligne soit inférieure ou égale à 12.  
On peut ajouter autant de lignes qu'on ne le désire.

Voici le dashboard défini pour ce tutoriel :
```
setup a dashboard named tutorial dashboard with the following rows
  panel name  : Door panel                                        
  yAxis label : door angle                                        
  span (on 12): 11                                                
  -------------                                                   
  panel name  : Weather       | panel name  : Weird thingy panel  
  yAxis label : weather values  yAxis label : stuff, I guess?     
  span (on 12): 6               span (on 12): 6                   
```
Et le rendu sur Grafana :
![Dashboard généré](https://i.imgur.com/gBFTnon.png)

#### Choisir le type de panel et afficher des données dans les panels 
En attente d'une API de Grafana pour le faire, et d'un client Java approprié et documenté :no_mouth:


That's all folks !
