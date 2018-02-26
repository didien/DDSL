# Sensor Simulation Language -> SSL

## Description
Ce projet a pour but de créer un langage spécifique au domaine de la simulation de capteurs de type IoT. 

L'objectif est de fournir un langage qui permet les quatres fonctionalités suivantes :
- créer et paramétrer des lois de génération de relevés de capteurs;
- créer des grappes de capteurs suivant une loi précédement créée;
- rejouer des relevés de capteurs stockés dans un fichier;
- de paramétrer des dashboards sur Grafana.

Les données générées sont envoyées sur une base de données InfluxDB, qui permet d'alimenter le moteur de rendu Grafana.

## Présentation
Ce DSL a été réalisé avec MPS de Jetbrains et présente donc quelques particularités du point de vue utilisateur : 
- le texte est préformaté : il n'y a qu'a rajouter des blocs et compléter les trous;
- on ne peut pas disposer les blocs dans un ordre arbitraire;
- il faut utiliser un IDE particulier (MPS) pour créer et exécuter des scritps.

## Prérequis
### Connaissance de l'utilisation de MPS
Ce court tutoriel part du principe que l'on sait utiliser MPS.

### Instances à lancer
Avant de pouvoir exécuter le DSL, il faut qu'une instance d'influxDB et de Grafana soient en cours d'exécution et accessible quelque part. Le plus simple reste encore d'exécuter `docker-compose up` dans le répertoire principal du projet : cela va créer les instances nécessaires.

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
On peut si on souhaite modifier les urls par défaut d'influxDB et/ou de Grafana, pour pointer vers d'autres instances que celles qui apparaitraient en déployer le fichier docker-compose.

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

Ces champs ne sont présents que quand ils ont une pertinence par rapport à la source de données dont il est question.

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
Il faut ensuite donner les bornes inférieures et supérieures (avec des nombres entiers, où `min >= max`) et paramétrer les champs restant.

Dans notre exemple, la loi est nommée `random_angle` (en hommage à l'IoT random) avec des valeurs comprises entre `0` et `180`°, avec un nouveau relevé toutes les `55` secondes et une lecture toutes les `30` secondes.

### Chaine de Markov
Plus complexe que la premier, cette loi permet de passer d'un état à un autre selon des règles de transitions ([voir le superbe exemple de Doudou le hamster](https://fr.wikipedia.org/wiki/Chaîne_de_Markov#Exemple_:_Doudou_le_hamster)).
Le bloc suivant apparait lors de son instanciation :
```
data source <no name> follows markov's chain    
  transitions :                                 
                <no name> : [ <no probability> ]                
  update period   : <no updatePeriod>           
  sampling period : <no samplingPeriod>         
  reset period    : <no resetPeriod>            
```

Il faut ici nommer la loi et créer des états. Un état possède un label (le nom de l'état) et un nombre de transitions égal au nombre d'états totaux. Chaque transition est un nombre décimal compris entre 0 et 1. La somme de toutes les transitions doit être égale à 1.

Dans notre exemple représentant encore un capteur emplématique du monde l'IoT, nous avons retenu la configuration suivante :
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
