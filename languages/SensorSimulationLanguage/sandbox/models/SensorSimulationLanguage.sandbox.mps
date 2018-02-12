<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:663025a1-1e7a-453d-b44a-22b7ae4c4b13(SensorSimulationLanguage.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="bc16fd15-bfa2-47e7-b9c2-9f80e5b399e0" name="SensorSimulationLanguage" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
  </languages>
  <imports />
  <registry>
    <language id="bc16fd15-bfa2-47e7-b9c2-9f80e5b399e0" name="SensorSimulationLanguage">
      <concept id="8164161828203569728" name="SensorSimulationLanguage.structure.IDataSource" flags="ng" index="FF4YH">
        <property id="8164161828203569736" name="period" index="FF4Y_" />
        <property id="8164161828203569739" name="sampling" index="FF4YA" />
      </concept>
      <concept id="4428600667259184161" name="SensorSimulationLanguage.structure.Random" flags="ng" index="3_vMzQ">
        <property id="4428600667259184174" name="max" index="3_vMzT" />
        <property id="4428600667259184172" name="min" index="3_vMzV" />
      </concept>
      <concept id="4428600667259183591" name="SensorSimulationLanguage.structure.Simulation" flags="ng" index="3_vMOK">
        <child id="4428600667259183596" name="sensors" index="3_vMOV" />
        <child id="4428600667259183594" name="dataSources" index="3_vMOX" />
      </concept>
      <concept id="4428600667259183599" name="SensorSimulationLanguage.structure.SensorCollection" flags="ng" index="3_vMOS">
        <property id="8164161828203569537" name="quantity" index="FF4LG" />
        <reference id="4428600667259184165" name="dataSource" index="3_vMzM" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3_vMOK" id="75cVuPqScV3">
    <property role="TrG5h" value="TestSimulation" />
    <node concept="3_vMOS" id="75cVuPqSgcl" role="3_vMOV">
      <property role="TrG5h" value="randomDoorSensor" />
      <property role="FF4LG" value="24" />
      <ref role="3_vMzM" node="75cVuPqSf8D" resolve="random_1_10" />
    </node>
    <node concept="3_vMOS" id="75cVuPqSgcv" role="3_vMOV">
      <property role="TrG5h" value="randomParkingLot" />
      <property role="FF4LG" value="110" />
      <ref role="3_vMzM" node="75cVuPqSgcD" resolve="random_boolean" />
    </node>
    <node concept="3_vMzQ" id="75cVuPqSf8D" role="3_vMOX">
      <property role="TrG5h" value="random_1_10" />
      <property role="FF4Y_" value="86400" />
      <property role="FF4YA" value="5" />
      <property role="3_vMzV" value="0" />
      <property role="3_vMzT" value="10" />
    </node>
    <node concept="3_vMzQ" id="75cVuPqSgcD" role="3_vMOX">
      <property role="TrG5h" value="random_boolean" />
      <property role="FF4Y_" value="86400" />
      <property role="FF4YA" value="5" />
      <property role="3_vMzV" value="0" />
      <property role="3_vMzT" value="1" />
    </node>
  </node>
</model>

