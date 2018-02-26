<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e465baf8-de2e-4ffc-b433-5fde6234c8fc(SensorSimulationLanguage.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="-1" />
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
    <node concept="1TJgyj" id="5kA4vFmjPTe" role="1TKVEi">
      <property role="IQ2ns" value="6135611311373901390" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="displays" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="pAhsp7vwiy" resolve="GrafanaDisplay" />
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
    <node concept="1TJgyi" id="pAhsp7uh0Z" role="1TKVEl">
      <property role="IQ2nx" value="461132729757012031" />
      <property role="TrG5h" value="influxdb" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="pAhsp7uh13" role="1TKVEl">
      <property role="IQ2nx" value="461132729757012035" />
      <property role="TrG5h" value="grafana" />
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
      <property role="TrG5h" value="sensorFilter" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="5u9gdSXmaGX" role="1TKVEl">
      <property role="IQ2nx" value="6307644076365228861" />
      <property role="TrG5h" value="timeColumn" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="5u9gdSXmfKE" role="1TKVEl">
      <property role="IQ2nx" value="6307644076365249578" />
      <property role="TrG5h" value="nameColumn" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="5u9gdSXmfKJ" role="1TKVEl">
      <property role="IQ2nx" value="6307644076365249583" />
      <property role="TrG5h" value="valueColumn" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="PrWs8" id="75cVuPqSa9g" role="PzmwI">
      <ref role="PrY4T" node="75cVuPqSa90" resolve="IDataSource" />
    </node>
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
  <node concept="1TIwiD" id="7rYs2gBc2i3">
    <property role="EcuMT" value="8574414041138603139" />
    <property role="3GE5qa" value="laws" />
    <property role="TrG5h" value="ModellingLaw" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7rYs2gBc3lZ" role="PzmwI">
      <ref role="PrY4T" node="75cVuPqSa90" resolve="IDataSource" />
    </node>
    <node concept="PrWs8" id="6vH4OV2H1QY" role="PzmwI">
      <ref role="PrY4T" node="6vH4OV2H1QU" resolve="INoisable" />
    </node>
    <node concept="1TJgyi" id="7rYs2gBc2i9" role="1TKVEl">
      <property role="IQ2nx" value="8574414041138603145" />
      <property role="TrG5h" value="upperBound" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="7rYs2gBc2ib" role="1TKVEl">
      <property role="IQ2nx" value="8574414041138603147" />
      <property role="TrG5h" value="lowerBound" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyj" id="7rYs2gBc2ie" role="1TKVEi">
      <property role="IQ2ns" value="8574414041138603150" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="constraint" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="7rYs2gBc2i6" resolve="ModellingConstraint" />
    </node>
  </node>
  <node concept="1TIwiD" id="7rYs2gBc2i6">
    <property role="EcuMT" value="8574414041138603142" />
    <property role="3GE5qa" value="laws" />
    <property role="TrG5h" value="ModellingConstraint" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="7rYs2gBc2ik" role="1TKVEl">
      <property role="IQ2nx" value="8574414041138603156" />
      <property role="TrG5h" value="bound" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="7rYs2gBc2im" role="1TKVEl">
      <property role="IQ2nx" value="8574414041138603158" />
      <property role="TrG5h" value="closure" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vH4OV2EW7y">
    <property role="EcuMT" value="7488662984381415906" />
    <property role="TrG5h" value="Noise" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vH4OV2EW7z" role="1TKVEl">
      <property role="IQ2nx" value="7488662984381415907" />
      <property role="TrG5h" value="min" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="6vH4OV2EW7_" role="1TKVEl">
      <property role="IQ2nx" value="7488662984381415909" />
      <property role="TrG5h" value="max" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="6vH4OV2EW7C" role="1TKVEl">
      <property role="IQ2nx" value="7488662984381415912" />
      <property role="TrG5h" value="scale" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="PlHQZ" id="6vH4OV2H1QU">
    <property role="EcuMT" value="7488662984381963706" />
    <property role="TrG5h" value="INoisable" />
    <node concept="1TJgyj" id="6vH4OV2EWaQ" role="1TKVEi">
      <property role="IQ2ns" value="7488662984381416118" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="noise" />
      <ref role="20lvS9" node="6vH4OV2EW7y" resolve="Noise" />
    </node>
  </node>
  <node concept="1TIwiD" id="5kA4vFmjO2P">
    <property role="EcuMT" value="6135611311373893813" />
    <property role="TrG5h" value="ClassicGraph" />
    <property role="3GE5qa" value="displays" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5kA4vFmjO3h" role="PzmwI">
      <ref role="PrY4T" node="5kA4vFmjO1U" resolve="IDisplay" />
    </node>
    <node concept="1TJgyj" id="pAhsp7whWO" role="1TKVEi">
      <property role="IQ2ns" value="461132729757540148" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="rows" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="pAhsp7whpc" resolve="Row" />
    </node>
  </node>
  <node concept="PlHQZ" id="5kA4vFmjO1U">
    <property role="EcuMT" value="6135611311373893754" />
    <property role="TrG5h" value="IDisplay" />
    <node concept="PrWs8" id="5kA4vFmjO2L" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="pAhsp7vwiy">
    <property role="EcuMT" value="461132729757336738" />
    <property role="TrG5h" value="GrafanaDisplay" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="pAhsp7vwjp" role="1TKVEi">
      <property role="IQ2ns" value="461132729757336793" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="displays" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="5kA4vFmjO1U" resolve="IDisplay" />
    </node>
    <node concept="1TJgyi" id="pAhsp7vwjr" role="1TKVEl">
      <property role="IQ2nx" value="461132729757336795" />
      <property role="TrG5h" value="token" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="pAhsp7wdC6">
    <property role="EcuMT" value="461132729757522438" />
    <property role="3GE5qa" value="displays" />
    <property role="TrG5h" value="Panel" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="pAhsp7wdCy" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="pAhsp7whkP" role="1TKVEl">
      <property role="IQ2nx" value="461132729757537589" />
      <property role="TrG5h" value="yAxis" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="pAhsp7whp7" role="1TKVEl">
      <property role="IQ2nx" value="461132729757537863" />
      <property role="TrG5h" value="span" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="pAhsp7whpc">
    <property role="EcuMT" value="461132729757537868" />
    <property role="3GE5qa" value="displays" />
    <property role="TrG5h" value="Row" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="pAhsp7whpC" role="1TKVEi">
      <property role="IQ2ns" value="461132729757537896" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="panels" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="pAhsp7wdC6" resolve="Panel" />
    </node>
  </node>
</model>

