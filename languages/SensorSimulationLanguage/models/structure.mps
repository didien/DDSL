<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e465baf8-de2e-4ffc-b433-5fde6234c8fc(SensorSimulationLanguage.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="6" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="3PPzdvo2E7B">
    <property role="EcuMT" value="4428600667259183591" />
    <property role="TrG5h" value="Simulation" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3PPzdvo2E7C" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="3PPzdvo2E7E" role="1TKVEi">
      <property role="IQ2ns" value="4428600667259183594" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="dataSources" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="75cVuPqSa90" resolve="IDataSource" />
    </node>
    <node concept="1TJgyj" id="3PPzdvo2E7G" role="1TKVEi">
      <property role="IQ2ns" value="4428600667259183596" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="sensors" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="3PPzdvo2E7J" resolve="SensorCollection" />
    </node>
  </node>
  <node concept="1TIwiD" id="3PPzdvo2E7J">
    <property role="EcuMT" value="4428600667259183599" />
    <property role="TrG5h" value="SensorCollection" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3PPzdvo2E7K" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="3PPzdvo2Eg_" role="1TKVEi">
      <property role="IQ2ns" value="4428600667259184165" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="dataSource" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="75cVuPqSa90" resolve="IDataSource" />
    </node>
    <node concept="1TJgyi" id="75cVuPqSa61" role="1TKVEl">
      <property role="IQ2nx" value="8164161828203569537" />
      <property role="TrG5h" value="quantity" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="3PPzdvo2Egx">
    <property role="EcuMT" value="4428600667259184161" />
    <property role="TrG5h" value="Random" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3PPzdvo2EgG" role="1TKVEl">
      <property role="IQ2nx" value="4428600667259184172" />
      <property role="TrG5h" value="min" />
      <ref role="AX2Wp" to="tpee:gc$lTUB" resolve="_FPNumber_String" />
    </node>
    <node concept="1TJgyi" id="3PPzdvo2EgI" role="1TKVEl">
      <property role="IQ2nx" value="4428600667259184174" />
      <property role="TrG5h" value="max" />
      <ref role="AX2Wp" to="tpee:gc$lTUB" resolve="_FPNumber_String" />
    </node>
    <node concept="PrWs8" id="75cVuPqSa9H" role="PzmwI">
      <ref role="PrY4T" node="75cVuPqSa90" resolve="IDataSource" />
    </node>
  </node>
  <node concept="1TIwiD" id="3PPzdvo2Egy">
    <property role="EcuMT" value="4428600667259184162" />
    <property role="TrG5h" value="CSV" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3PPzdvo2EgC" role="1TKVEl">
      <property role="IQ2nx" value="4428600667259184168" />
      <property role="TrG5h" value="filepath" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="75cVuPqSa9j" role="1TKVEl">
      <property role="IQ2nx" value="8164161828203569747" />
      <property role="TrG5h" value="identifier" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="75cVuPqSa9g" role="PzmwI">
      <ref role="PrY4T" node="75cVuPqSa90" resolve="IDataSource" />
    </node>
  </node>
  <node concept="1TIwiD" id="3PPzdvo2EgB">
    <property role="EcuMT" value="4428600667259184167" />
    <property role="TrG5h" value="Display" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="PlHQZ" id="75cVuPqSa90">
    <property role="EcuMT" value="8164161828203569728" />
    <property role="TrG5h" value="IDataSource" />
    <node concept="PrWs8" id="75cVuPqSa94" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="75cVuPqSa98" role="1TKVEl">
      <property role="IQ2nx" value="8164161828203569736" />
      <property role="TrG5h" value="period" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="75cVuPqSa9b" role="1TKVEl">
      <property role="IQ2nx" value="8164161828203569739" />
      <property role="TrG5h" value="sampling" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
</model>

