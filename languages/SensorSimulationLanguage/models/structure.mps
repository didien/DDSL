<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e465baf8-de2e-4ffc-b433-5fde6234c8fc(SensorSimulationLanguage.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="6" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="unno" ref="r:61e3d524-8c49-4491-b5e3-f6d6e9364527(jetbrains.mps.util)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="4fqr" ref="r:fa713d69-08ea-4732-b1f2-cb07f9e103ef(jetbrains.mps.execution.util.structure)" implicit="true" />
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
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
    <node concept="PrWs8" id="3K9a83axIR$" role="PzmwI">
      <ref role="PrY4T" to="4fqr:431DWIovi3l" resolve="IMainClass" />
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
    <node concept="1TJgyi" id="3juagqJxhEC" role="1TKVEl">
      <property role="IQ2nx" value="3809527443493296808" />
      <property role="TrG5h" value="startDate" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3juagqJxhEE" role="1TKVEl">
      <property role="IQ2nx" value="3809527443493296810" />
      <property role="TrG5h" value="endDate" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
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
    <property role="3GE5qa" value="laws" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3PPzdvo2EgG" role="1TKVEl">
      <property role="IQ2nx" value="4428600667259184172" />
      <property role="TrG5h" value="min" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="3PPzdvo2EgI" role="1TKVEl">
      <property role="IQ2nx" value="4428600667259184174" />
      <property role="TrG5h" value="max" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
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
      <property role="TrG5h" value="updatePeriod" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="3juagqJxLPu" role="1TKVEl">
      <property role="IQ2nx" value="3809527443493428574" />
      <property role="TrG5h" value="resetPeriod" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="75cVuPqSa9b" role="1TKVEl">
      <property role="IQ2nx" value="8164161828203569739" />
      <property role="TrG5h" value="samplingPeriod" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="7dKB6cHPzZ_">
    <property role="EcuMT" value="8318320461538017253" />
    <property role="TrG5h" value="Markov" />
    <property role="3GE5qa" value="laws" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7dKB6cHP$0s" role="PzmwI">
      <ref role="PrY4T" node="75cVuPqSa90" resolve="IDataSource" />
    </node>
    <node concept="1TJgyj" id="7dKB6cHP$0u" role="1TKVEi">
      <property role="IQ2ns" value="8318320461538017310" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="states" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="7dKB6cHP$0X" resolve="MarkovStates" />
    </node>
  </node>
  <node concept="1TIwiD" id="7dKB6cHP$0X">
    <property role="EcuMT" value="8318320461538017341" />
    <property role="3GE5qa" value="laws" />
    <property role="TrG5h" value="MarkovStates" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7dKB6cHPCXV" role="1TKVEi">
      <property role="IQ2ns" value="8318320461538037627" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="transitions" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="7dKB6cHPCI6" resolve="MarkovTransition" />
    </node>
    <node concept="PrWs8" id="7dKB6cHQn4J" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="7dKB6cHPCI6">
    <property role="EcuMT" value="8318320461538036614" />
    <property role="3GE5qa" value="laws" />
    <property role="TrG5h" value="MarkovTransition" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="7dKB6cHPCIy" role="1TKVEl">
      <property role="IQ2nx" value="8318320461538036642" />
      <property role="TrG5h" value="probability" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
</model>

