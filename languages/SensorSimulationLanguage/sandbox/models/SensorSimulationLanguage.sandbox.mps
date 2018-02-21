<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:663025a1-1e7a-453d-b44a-22b7ae4c4b13(SensorSimulationLanguage.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="bc16fd15-bfa2-47e7-b9c2-9f80e5b399e0" name="SensorSimulationLanguage" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="-1" />
    <use id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8" version="-1" />
  </languages>
  <imports>
    <import index="2ns9" ref="r:2ebb615b-7d7d-46a9-af25-8b8353fe1098(SensorSimulationLanguage.runtime.simulation)" />
    <import index="9nbq" ref="cc7fb470-7d0c-4aea-af2a-5d870ff3092f/java:org.influxdb(InfluxDB/)" />
  </imports>
  <registry>
    <language id="bc16fd15-bfa2-47e7-b9c2-9f80e5b399e0" name="SensorSimulationLanguage">
      <concept id="8164161828203569728" name="SensorSimulationLanguage.structure.IDataSource" flags="ng" index="FF4YH">
        <property id="3809527443493428574" name="resetPeriod" index="2rmjho" />
        <property id="8164161828203569736" name="updatePeriod" index="FF4Y_" />
        <property id="8164161828203569739" name="samplingPeriod" index="FF4YA" />
      </concept>
      <concept id="8318320461538036614" name="SensorSimulationLanguage.structure.MarkovTransition" flags="ng" index="1uDxv_">
        <property id="8318320461538036642" name="probability" index="1uDxv1" />
      </concept>
      <concept id="8318320461538017253" name="SensorSimulationLanguage.structure.Markov" flags="ng" index="1uDEe6">
        <child id="8318320461538017310" name="states" index="1uDHLX" />
      </concept>
      <concept id="8318320461538017341" name="SensorSimulationLanguage.structure.MarkovStates" flags="ng" index="1uDHLu">
        <child id="8318320461538037627" name="transitions" index="1uDxco" />
      </concept>
      <concept id="4428600667259184162" name="SensorSimulationLanguage.structure.CSV" flags="ng" index="3_vMzP">
        <property id="8164161828203569747" name="sensorFilter" index="FF4YY" />
        <property id="4428600667259184168" name="filepath" index="3_vMzZ" />
        <property id="6307644076365249583" name="valueColumn" index="1EOrNL" />
        <property id="6307644076365249578" name="nameColumn" index="1EOrNO" />
        <property id="6307644076365228861" name="timeColumn" index="1EOuJz" />
      </concept>
      <concept id="4428600667259184161" name="SensorSimulationLanguage.structure.Random" flags="ng" index="3_vMzQ">
        <property id="4428600667259184174" name="max" index="3_vMzT" />
        <property id="4428600667259184172" name="min" index="3_vMzV" />
      </concept>
      <concept id="4428600667259183591" name="SensorSimulationLanguage.structure.Simulation" flags="ng" index="3_vMOK">
        <property id="3809527443493296810" name="endDate" index="2rmNeG" />
        <property id="3809527443493296808" name="startDate" index="2rmNeI" />
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
  <node concept="3_vMOK" id="lhB3YR55MJ">
    <property role="TrG5h" value="LaDemo" />
    <property role="2rmNeI" value="14-02-10 02:00" />
    <property role="2rmNeG" value="14-02-18 02:20" />
    <node concept="3_vMOS" id="lhB3YR55NJ" role="3_vMOV">
      <property role="FF4LG" value="30" />
      <property role="TrG5h" value="porte_connectee" />
      <ref role="3_vMzM" node="lhB3YR55NG" resolve="random_law_dooropening" />
    </node>
    <node concept="3_vMzQ" id="lhB3YR55NG" role="3_vMOX">
      <property role="TrG5h" value="random_law_dooropening" />
      <property role="3_vMzV" value="0" />
      <property role="3_vMzT" value="175" />
      <property role="FF4Y_" value="26" />
      <property role="FF4YA" value="7" />
      <property role="2rmjho" value="26" />
    </node>
  </node>
  <node concept="3_vMOK" id="lhB3YR9EAW">
    <property role="TrG5h" value="Simulation" />
    <property role="2rmNeI" value="20-02-18 15:15" />
    <property role="2rmNeG" value="20-02-18 17:45" />
    <node concept="3_vMOS" id="6ZqfKAE0OF6" role="3_vMOV">
      <property role="FF4LG" value="1" />
      <property role="TrG5h" value="weather_sensor" />
      <ref role="3_vMzM" node="7dKB6cHPHr2" resolve="weather_law" />
    </node>
    <node concept="3_vMOS" id="6ZqfKAE3gYy" role="3_vMOV">
      <property role="FF4LG" value="56" />
      <property role="TrG5h" value="door_sensor" />
      <ref role="3_vMzM" node="lhB3YR9EBQ" resolve="random_angle" />
    </node>
    <node concept="3_vMOS" id="6ZqfKAE3gY_" role="3_vMOV">
      <property role="FF4LG" value="107" />
      <property role="TrG5h" value="parking_sensor" />
      <ref role="3_vMzM" node="6ZqfKAE3gZq" resolve="parking_law" />
    </node>
    <node concept="3_vMzQ" id="lhB3YR9EBQ" role="3_vMOX">
      <property role="TrG5h" value="random_angle" />
      <property role="3_vMzT" value="175" />
      <property role="3_vMzV" value="0" />
      <property role="FF4Y_" value="30" />
      <property role="FF4YA" value="5" />
      <property role="2rmjho" value="86400" />
    </node>
    <node concept="3_vMzQ" id="lhB3YR9EC7" role="3_vMOX">
      <property role="TrG5h" value="random_bool" />
      <property role="3_vMzT" value="1" />
      <property role="3_vMzV" value="0" />
      <property role="FF4Y_" value="45" />
      <property role="FF4YA" value="6" />
      <property role="2rmjho" value="86400" />
    </node>
    <node concept="1uDEe6" id="7dKB6cHPHr2" role="3_vMOX">
      <property role="TrG5h" value="weather_law" />
      <property role="FF4Y_" value="60" />
      <property role="FF4YA" value="45" />
      <property role="2rmjho" value="86400" />
      <node concept="1uDHLu" id="7dKB6cHPMh_" role="1uDHLX">
        <property role="TrG5h" value="sunny" />
        <node concept="1uDxv_" id="7dKB6cHPMi6" role="1uDxco">
          <property role="1uDxv1" value="0.50" />
        </node>
        <node concept="1uDxv_" id="7dKB6cHPMi3" role="1uDxco">
          <property role="1uDxv1" value="0.30" />
        </node>
        <node concept="1uDxv_" id="7dKB6cHPMif" role="1uDxco">
          <property role="1uDxv1" value="0.20" />
        </node>
      </node>
      <node concept="1uDHLu" id="7dKB6cHPMht" role="1uDHLX">
        <property role="TrG5h" value="cloudy" />
        <node concept="1uDxv_" id="7dKB6cHPMhu" role="1uDxco">
          <property role="1uDxv1" value="0.33" />
        </node>
        <node concept="1uDxv_" id="7dKB6cHPMin" role="1uDxco">
          <property role="1uDxv1" value="0.34" />
        </node>
        <node concept="1uDxv_" id="7dKB6cHPMiq" role="1uDxco">
          <property role="1uDxv1" value="0.33" />
        </node>
      </node>
      <node concept="1uDHLu" id="7dKB6cHPHs8" role="1uDHLX">
        <property role="TrG5h" value="rainy" />
        <node concept="1uDxv_" id="7dKB6cHPKEE" role="1uDxco">
          <property role="1uDxv1" value="0.10" />
        </node>
        <node concept="1uDxv_" id="7dKB6cHPKEH" role="1uDxco">
          <property role="1uDxv1" value="0.70" />
        </node>
        <node concept="1uDxv_" id="7dKB6cHPKEQ" role="1uDxco">
          <property role="1uDxv1" value="0.20" />
        </node>
      </node>
    </node>
    <node concept="1uDEe6" id="6ZqfKAE3gZq" role="3_vMOX">
      <property role="TrG5h" value="parking_law" />
      <property role="FF4Y_" value="500" />
      <property role="FF4YA" value="60" />
      <property role="2rmjho" value="86400" />
      <node concept="1uDHLu" id="6ZqfKAE3gZs" role="1uDHLX">
        <property role="TrG5h" value="free" />
        <node concept="1uDxv_" id="6ZqfKAE3gZu" role="1uDxco">
          <property role="1uDxv1" value="0.33" />
        </node>
        <node concept="1uDxv_" id="6ZqfKAE3gZM" role="1uDxco">
          <property role="1uDxv1" value="0.67" />
        </node>
      </node>
      <node concept="1uDHLu" id="6ZqfKAE3gZP" role="1uDHLX">
        <property role="TrG5h" value="occupied" />
        <node concept="1uDxv_" id="6ZqfKAE3gZQ" role="1uDxco">
          <property role="1uDxv1" value="0.80" />
        </node>
        <node concept="1uDxv_" id="6ZqfKAE3gZW" role="1uDxco">
          <property role="1uDxv1" value="0.20" />
        </node>
      </node>
    </node>
    <node concept="3_vMzP" id="5u9gdSXmGC2" role="3_vMOX">
      <property role="TrG5h" value="csv_file" />
      <property role="3_vMzZ" value="E:/file.csv" />
      <property role="FF4YY" value="door_sensor" />
      <property role="1EOrNO" value="1" />
      <property role="1EOuJz" value="2" />
      <property role="1EOrNL" value="3" />
    </node>
  </node>
</model>

