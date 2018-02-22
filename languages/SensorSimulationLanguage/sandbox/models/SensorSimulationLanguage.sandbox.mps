<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:663025a1-1e7a-453d-b44a-22b7ae4c4b13(SensorSimulationLanguage.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="bc16fd15-bfa2-47e7-b9c2-9f80e5b399e0" name="SensorSimulationLanguage" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <use id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8" version="0" />
  </languages>
  <imports>
    <import index="2ns9" ref="r:2ebb615b-7d7d-46a9-af25-8b8353fe1098(SensorSimulationLanguage.runtime.simulation)" />
    <import index="9nbq" ref="cc7fb470-7d0c-4aea-af2a-5d870ff3092f/java:org.influxdb(InfluxDB/)" />
  </imports>
  <registry>
    <language id="bc16fd15-bfa2-47e7-b9c2-9f80e5b399e0" name="SensorSimulationLanguage">
      <concept id="7488662984381415906" name="SensorSimulationLanguage.structure.Noise" flags="ng" index="2_hHaG">
        <property id="7488662984381415912" name="scale" index="2_hHaA" />
        <property id="7488662984381415909" name="max" index="2_hHaF" />
        <property id="7488662984381415907" name="min" index="2_hHaH" />
      </concept>
      <concept id="7488662984381963706" name="SensorSimulationLanguage.structure.INoisable" flags="ng" index="2_mgVO">
        <child id="7488662984381416118" name="noise" index="2_hH7S" />
      </concept>
      <concept id="8164161828203569728" name="SensorSimulationLanguage.structure.IDataSource" flags="ng" index="FF4YH">
        <property id="3809527443493428574" name="resetPeriod" index="2rmjho" />
        <property id="8164161828203569736" name="updatePeriod" index="FF4Y_" />
        <property id="8164161828203569739" name="samplingPeriod" index="FF4YA" />
      </concept>
      <concept id="8574414041138603142" name="SensorSimulationLanguage.structure.ModellingConstraint" flags="ng" index="1hN_iy">
        <property id="8574414041138603156" name="bound" index="1hN_iK" />
        <property id="8574414041138603158" name="closure" index="1hN_iM" />
      </concept>
      <concept id="8574414041138603139" name="SensorSimulationLanguage.structure.ModellingLaw" flags="ng" index="1hN_iB">
        <child id="8574414041138603150" name="constraint" index="1hN_iE" />
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
  <node concept="3_vMOK" id="lhB3YR9EAW">
    <property role="TrG5h" value="Simulation" />
    <property role="2rmNeI" value="18-02-18 01:15" />
    <property role="2rmNeG" value="18-02-18 23:45" />
    <node concept="3_vMOS" id="6ZqfKAE0OF6" role="3_vMOV">
      <property role="FF4LG" value="1" />
      <property role="TrG5h" value="weather_sensor" />
      <ref role="3_vMzM" node="6vH4OV2HlWj" resolve="modelling_law" />
    </node>
    <node concept="3_vMzQ" id="lhB3YR9EBQ" role="3_vMOX">
      <property role="TrG5h" value="random_angle" />
      <property role="3_vMzT" value="175" />
      <property role="3_vMzV" value="0" />
      <property role="FF4Y_" value="30" />
      <property role="FF4YA" value="5" />
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
    <node concept="1hN_iB" id="6vH4OV2HlWj" role="3_vMOX">
      <property role="TrG5h" value="modelling_law" />
      <property role="FF4Y_" value="500" />
      <property role="FF4YA" value="180" />
      <node concept="1hN_iy" id="6vH4OV2HlWl" role="1hN_iE">
        <property role="1hN_iK" value="7" />
        <property role="1hN_iM" value="0" />
      </node>
      <node concept="1hN_iy" id="6vH4OV2HlWI" role="1hN_iE">
        <property role="1hN_iK" value="18" />
        <property role="1hN_iM" value="abs(1/2x^2 - 11x + 20)" />
      </node>
      <node concept="1hN_iy" id="6vH4OV2HlWL" role="1hN_iE">
        <property role="1hN_iK" value="24" />
        <property role="1hN_iM" value="0" />
      </node>
      <node concept="2_hHaG" id="6vH4OV2HlXD" role="2_hH7S">
        <property role="2_hHaH" value="-3." />
        <property role="2_hHaF" value="3." />
        <property role="2_hHaA" value="0" />
      </node>
    </node>
  </node>
</model>

