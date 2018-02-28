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
    <import index="ynw8" ref="d102dc8e-32ba-4d10-8f95-be5a142b6537/java:com.appnexus.grafana.client(Grafana/)" />
    <import index="onjl" ref="d102dc8e-32ba-4d10-8f95-be5a142b6537/java:com.appnexus.grafana.exceptions(Grafana/)" />
    <import index="ry35" ref="642f71f8-327a-425b-84f9-44ad58786d27/f:project#d102dc8e-32ba-4d10-8f95-be5a142b6537(jetbrains.mps.lang.project.modules/module.Grafana@project_stub)" />
    <import index="an4w" ref="d102dc8e-32ba-4d10-8f95-be5a142b6537/java:com.appnexus.grafana.client.models(Grafana/)" />
    <import index="v2y1" ref="d102dc8e-32ba-4d10-8f95-be5a142b6537/java:com.appnexus.grafana.configuration(Grafana/)" />
  </imports>
  <registry>
    <language id="bc16fd15-bfa2-47e7-b9c2-9f80e5b399e0" name="SensorSimulationLanguage">
      <concept id="6135611311373893813" name="SensorSimulationLanguage.structure.ClassicGraph" flags="ng" index="23ql5f">
        <child id="461132729757540148" name="rows" index="11TPFM" />
      </concept>
      <concept id="7488662984381415906" name="SensorSimulationLanguage.structure.Noise" flags="ng" index="2_hHaG">
        <property id="7488662984381415912" name="scale" index="2_hHaA" />
        <property id="7488662984381415909" name="max" index="2_hHaF" />
        <property id="7488662984381415907" name="min" index="2_hHaH" />
      </concept>
      <concept id="7488662984381963706" name="SensorSimulationLanguage.structure.INoisable" flags="ng" index="2_mgVO">
        <child id="7488662984381416118" name="noise" index="2_hH7S" />
      </concept>
      <concept id="1585013121341061496" name="SensorSimulationLanguage.structure.IReplay" flags="ng" index="C8I1L">
        <property id="1585013121341061524" name="filepath" index="C8I2t" />
        <property id="6236754835289917988" name="sensorNames" index="3aaEPu" />
      </concept>
      <concept id="8164161828203569728" name="SensorSimulationLanguage.structure.IDataSource" flags="ng" index="FF4YH">
        <property id="3809527443493428574" name="resetPeriod" index="2rmjho" />
        <property id="8164161828203569736" name="updatePeriod" index="FF4Y_" />
        <property id="8164161828203569739" name="samplingPeriod" index="FF4YA" />
      </concept>
      <concept id="461132729757336738" name="SensorSimulationLanguage.structure.GrafanaDisplay" flags="ng" index="11645$">
        <property id="461132729757336795" name="token" index="11644t" />
        <child id="461132729757336793" name="displays" index="11644v" />
      </concept>
      <concept id="461132729757522438" name="SensorSimulationLanguage.structure.Panel" flags="ng" index="11TDZ0">
        <property id="461132729757537589" name="yAxis" index="11TP3N" />
        <property id="461132729757537863" name="span" index="11TPe1" />
      </concept>
      <concept id="461132729757537868" name="SensorSimulationLanguage.structure.Row" flags="ng" index="11TPea">
        <child id="461132729757537896" name="panels" index="11TPeI" />
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
      <concept id="4428600667259184162" name="SensorSimulationLanguage.structure.CSV" flags="ng" index="3_vMzP">
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
        <property id="461132729757012035" name="grafana" index="117Pm5" />
        <property id="461132729757012031" name="influxdb" index="117PnT" />
        <child id="6135611311373901390" name="displays" index="23qkYO" />
        <child id="1585013121341618276" name="replays" index="C6m5H" />
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
    <property role="2rmNeI" value="25-02-18 17:15" />
    <property role="2rmNeG" value="25-02-18 20:45" />
    <node concept="3_vMOS" id="3QxC82ZIvzJ" role="3_vMOV">
      <property role="FF4LG" value="2" />
      <property role="TrG5h" value="door_sensor" />
      <ref role="3_vMzM" node="lhB3YR9EBQ" resolve="random_angle" />
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
    <node concept="11645$" id="pAhsp7w0dC" role="23qkYO">
      <property role="11644t" value="e" />
      <node concept="23ql5f" id="pAhsp7ycTv" role="11644v">
        <property role="TrG5h" value="fancy dashboard" />
        <node concept="11TPea" id="pAhsp7ycTw" role="11TPFM">
          <node concept="11TDZ0" id="pAhsp7ycTx" role="11TPeI">
            <property role="TrG5h" value="Door angle sensor" />
            <property role="11TP3N" value="angle" />
            <property role="11TPe1" value="6" />
          </node>
          <node concept="11TDZ0" id="pAhsp7ycTH" role="11TPeI">
            <property role="TrG5h" value="Parking availability sensor" />
            <property role="11TP3N" value="free spots" />
            <property role="11TPe1" value="6" />
          </node>
        </node>
        <node concept="11TPea" id="pAhsp7ycUf" role="11TPFM">
          <node concept="11TDZ0" id="pAhsp7ycUg" role="11TPeI">
            <property role="TrG5h" value="Occupants counter" />
            <property role="11TP3N" value="number of persons in building" />
            <property role="11TPe1" value="10" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3_vMOK" id="pAhsp7$whj">
    <property role="TrG5h" value="TutorialSimulation" />
    <property role="2rmNeI" value="27-02-18 15:00" />
    <property role="2rmNeG" value="27-02-18 18:00" />
    <node concept="3_vMzQ" id="pAhsp7$xCB" role="3_vMOX">
      <property role="TrG5h" value="random_angle" />
      <property role="3_vMzV" value="0" />
      <property role="3_vMzT" value="180" />
      <property role="FF4Y_" value="55" />
      <property role="FF4YA" value="30" />
    </node>
    <node concept="1uDEe6" id="pAhsp7$L6p" role="3_vMOX">
      <property role="TrG5h" value="weather_law" />
      <property role="FF4Y_" value="500" />
      <property role="FF4YA" value="350" />
      <property role="2rmjho" value="86400" />
      <node concept="1uDHLu" id="pAhsp7$L6r" role="1uDHLX">
        <property role="TrG5h" value="sunny" />
        <node concept="1uDxv_" id="pAhsp7$L6t" role="1uDxco">
          <property role="1uDxv1" value="0.6" />
        </node>
        <node concept="1uDxv_" id="pAhsp7$L6Z" role="1uDxco">
          <property role="1uDxv1" value="0.2" />
        </node>
        <node concept="1uDxv_" id="pAhsp7$L72" role="1uDxco">
          <property role="1uDxv1" value="0.05" />
        </node>
        <node concept="1uDxv_" id="pAhsp7$L76" role="1uDxco">
          <property role="1uDxv1" value="0.15" />
        </node>
      </node>
      <node concept="1uDHLu" id="pAhsp7$L6B" role="1uDHLX">
        <property role="TrG5h" value="cloudy" />
        <node concept="1uDxv_" id="pAhsp7$L6C" role="1uDxco">
          <property role="1uDxv1" value="0.2" />
        </node>
        <node concept="1uDxv_" id="pAhsp7$L7b" role="1uDxco">
          <property role="1uDxv1" value="0.5" />
        </node>
        <node concept="1uDxv_" id="pAhsp7$L7e" role="1uDxco">
          <property role="1uDxv1" value="0.1" />
        </node>
        <node concept="1uDxv_" id="pAhsp7$L7i" role="1uDxco">
          <property role="1uDxv1" value="0.2" />
        </node>
      </node>
      <node concept="1uDHLu" id="pAhsp7$L6H" role="1uDHLX">
        <property role="TrG5h" value="snowy" />
        <node concept="1uDxv_" id="pAhsp7$L6I" role="1uDxco">
          <property role="1uDxv1" value="0.3" />
        </node>
        <node concept="1uDxv_" id="pAhsp7$L7n" role="1uDxco">
          <property role="1uDxv1" value="0.3" />
        </node>
        <node concept="1uDxv_" id="pAhsp7$L7q" role="1uDxco">
          <property role="1uDxv1" value="0.4" />
        </node>
        <node concept="1uDxv_" id="pAhsp7$L7u" role="1uDxco">
          <property role="1uDxv1" value="0." />
        </node>
      </node>
      <node concept="1uDHLu" id="pAhsp7$L6P" role="1uDHLX">
        <property role="TrG5h" value="rainy" />
        <node concept="1uDxv_" id="pAhsp7$L6Q" role="1uDxco">
          <property role="1uDxv1" value="0.1" />
        </node>
        <node concept="1uDxv_" id="pAhsp7$L7z" role="1uDxco">
          <property role="1uDxv1" value="0.3" />
        </node>
        <node concept="1uDxv_" id="pAhsp7$L7A" role="1uDxco">
          <property role="1uDxv1" value="0.1" />
        </node>
        <node concept="1uDxv_" id="pAhsp7$L7E" role="1uDxco">
          <property role="1uDxv1" value="0.5" />
        </node>
      </node>
    </node>
    <node concept="1hN_iB" id="pAhsp7$L9h" role="3_vMOX">
      <property role="TrG5h" value="modelling_law" />
      <property role="FF4Y_" value="500" />
      <property role="FF4YA" value="180" />
      <node concept="1hN_iy" id="pAhsp7$L9i" role="1hN_iE">
        <property role="1hN_iK" value="7" />
        <property role="1hN_iM" value="0" />
      </node>
      <node concept="1hN_iy" id="pAhsp7$L9j" role="1hN_iE">
        <property role="1hN_iK" value="18" />
        <property role="1hN_iM" value="abs(1/2x^2 - 11x + 20)" />
      </node>
      <node concept="1hN_iy" id="pAhsp7$L9k" role="1hN_iE">
        <property role="1hN_iK" value="24" />
        <property role="1hN_iM" value="0" />
      </node>
      <node concept="2_hHaG" id="pAhsp7$L9l" role="2_hH7S">
        <property role="2_hHaH" value="-3." />
        <property role="2_hHaF" value="3." />
        <property role="2_hHaA" value="0" />
      </node>
    </node>
    <node concept="3_vMOS" id="pAhsp7$LL1" role="3_vMOV">
      <property role="FF4LG" value="15" />
      <property role="TrG5h" value="fancy_awesome_door" />
      <ref role="3_vMzM" node="pAhsp7$xCB" resolve="random_angle" />
    </node>
    <node concept="3_vMOS" id="pAhsp7$LL3" role="3_vMOV">
      <property role="FF4LG" value="2" />
      <property role="TrG5h" value="bipolar_weather_sensor" />
      <ref role="3_vMzM" node="pAhsp7$L6p" resolve="weather_law" />
    </node>
    <node concept="3_vMOS" id="pAhsp7$LL6" role="3_vMOV">
      <property role="FF4LG" value="20" />
      <property role="TrG5h" value="thingy_sensor" />
      <ref role="3_vMzM" node="pAhsp7$L9h" resolve="modelling_law" />
    </node>
    <node concept="11645$" id="pAhsp7_nxm" role="23qkYO">
      <property role="11644t" value="e" />
      <node concept="23ql5f" id="pAhsp7_nxo" role="11644v">
        <property role="TrG5h" value="tutorial dashboard" />
        <node concept="11TPea" id="pAhsp7_nxp" role="11TPFM">
          <node concept="11TDZ0" id="pAhsp7_nxq" role="11TPeI">
            <property role="TrG5h" value="Door panel" />
            <property role="11TP3N" value="door angle" />
            <property role="11TPe1" value="11" />
          </node>
        </node>
        <node concept="11TPea" id="pAhsp7_nyd" role="11TPFM">
          <node concept="11TDZ0" id="pAhsp7_nye" role="11TPeI">
            <property role="TrG5h" value="Weather" />
            <property role="11TP3N" value="weather values" />
            <property role="11TPe1" value="6" />
          </node>
          <node concept="11TDZ0" id="pAhsp7_ny$" role="11TPeI">
            <property role="TrG5h" value="Weird thingy panel" />
            <property role="11TP3N" value="stuff, I guess?" />
            <property role="11TPe1" value="6" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3_vMOK" id="1nZ6g$XSYgf">
    <property role="TrG5h" value="SimpleTest" />
    <property role="2rmNeI" value="27-02-18 16:00" />
    <property role="2rmNeG" value="27-02-18 17:00" />
    <property role="117PnT" value="http://192.168.99.100:8086" />
    <property role="117Pm5" value="http://192.168.99.100:3000" />
    <node concept="3_vMzP" id="1XfQ9HmStpl" role="C6m5H">
      <property role="C8I2t" value="E:/csvtest.csv" />
      <property role="3aaEPu" value="bike" />
      <property role="1EOrNO" value="1" />
      <property role="1EOuJz" value="2" />
      <property role="1EOrNL" value="3" />
    </node>
  </node>
  <node concept="3_vMOK" id="5qdpREsKxal">
    <property role="TrG5h" value="ParkingSimulation" />
    <property role="2rmNeI" value="15-02-18 01:00" />
    <property role="2rmNeG" value="20-02-18 23:00" />
    <node concept="3_vMOS" id="5qdpREsKxbC" role="3_vMOV">
      <property role="FF4LG" value="56" />
      <property role="TrG5h" value="fancy_parking_sensor" />
      <ref role="3_vMzM" node="5qdpREsKxao" resolve="parking_law" />
    </node>
    <node concept="3_vMOS" id="5qdpREsKxbR" role="3_vMOV">
      <property role="FF4LG" value="1" />
      <property role="TrG5h" value="parking_users_sensor" />
      <ref role="3_vMzM" node="5qdpREsKxaR" resolve="parking_lot_law" />
    </node>
    <node concept="1uDEe6" id="5qdpREsKxao" role="3_vMOX">
      <property role="TrG5h" value="parking_law" />
      <property role="FF4Y_" value="500" />
      <property role="FF4YA" value="300" />
      <property role="2rmjho" value="86400" />
      <node concept="1uDHLu" id="5qdpREsKxaq" role="1uDHLX">
        <property role="TrG5h" value="free" />
        <node concept="1uDxv_" id="5qdpREsKxas" role="1uDxco">
          <property role="1uDxv1" value="0.5" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKxax" role="1uDxco">
          <property role="1uDxv1" value="0.5" />
        </node>
      </node>
      <node concept="1uDHLu" id="5qdpREsKxa$" role="1uDHLX">
        <property role="TrG5h" value="occupied" />
        <node concept="1uDxv_" id="5qdpREsKxa_" role="1uDxco">
          <property role="1uDxv1" value="0.9" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKxaF" role="1uDxco">
          <property role="1uDxv1" value="0.1" />
        </node>
      </node>
    </node>
    <node concept="1hN_iB" id="5qdpREsKxaR" role="3_vMOX">
      <property role="TrG5h" value="parking_lot_law" />
      <property role="FF4Y_" value="300" />
      <property role="FF4YA" value="250" />
      <node concept="1hN_iy" id="5qdpREsKxaT" role="1hN_iE">
        <property role="1hN_iK" value="7" />
        <property role="1hN_iM" value="3" />
      </node>
      <node concept="1hN_iy" id="5qdpREsKxb4" role="1hN_iE">
        <property role="1hN_iK" value="18" />
        <property role="1hN_iM" value="-x^2 + 24x" />
      </node>
      <node concept="1hN_iy" id="5qdpREsKxby" role="1hN_iE">
        <property role="1hN_iK" value="24" />
        <property role="1hN_iM" value="3" />
      </node>
      <node concept="2_hHaG" id="5qdpREsKxbA" role="2_hH7S">
        <property role="2_hHaH" value="-1." />
        <property role="2_hHaF" value="1." />
        <property role="2_hHaA" value="0" />
      </node>
    </node>
  </node>
  <node concept="3_vMOK" id="5qdpREsKxbU">
    <property role="TrG5h" value="WeatherSimulation" />
    <property role="2rmNeI" value="10-02-18 01:00" />
    <property role="2rmNeG" value="26-02-18 15:16" />
    <property role="117PnT" value="http://influxdb.meatbox.fr" />
    <property role="117Pm5" value="http://grafana.meatbox.fr" />
    <node concept="1uDEe6" id="5qdpREsKxc1" role="3_vMOX">
      <property role="TrG5h" value="weather_law" />
      <property role="FF4Y_" value="500" />
      <property role="FF4YA" value="350" />
      <property role="2rmjho" value="86400" />
      <node concept="1uDHLu" id="5qdpREsKxc2" role="1uDHLX">
        <property role="TrG5h" value="sunny" />
        <node concept="1uDxv_" id="5qdpREsKxc3" role="1uDxco">
          <property role="1uDxv1" value="0.6" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKxc4" role="1uDxco">
          <property role="1uDxv1" value="0.2" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKxc5" role="1uDxco">
          <property role="1uDxv1" value="0.05" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKxc6" role="1uDxco">
          <property role="1uDxv1" value="0.15" />
        </node>
      </node>
      <node concept="1uDHLu" id="5qdpREsKxc7" role="1uDHLX">
        <property role="TrG5h" value="cloudy" />
        <node concept="1uDxv_" id="5qdpREsKxc8" role="1uDxco">
          <property role="1uDxv1" value="0.2" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKxc9" role="1uDxco">
          <property role="1uDxv1" value="0.5" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKxca" role="1uDxco">
          <property role="1uDxv1" value="0.1" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKxcb" role="1uDxco">
          <property role="1uDxv1" value="0.2" />
        </node>
      </node>
      <node concept="1uDHLu" id="5qdpREsKxcc" role="1uDHLX">
        <property role="TrG5h" value="snowy" />
        <node concept="1uDxv_" id="5qdpREsKxcd" role="1uDxco">
          <property role="1uDxv1" value="0.3" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKxce" role="1uDxco">
          <property role="1uDxv1" value="0.3" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKxcf" role="1uDxco">
          <property role="1uDxv1" value="0.4" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKxcg" role="1uDxco">
          <property role="1uDxv1" value="0." />
        </node>
      </node>
      <node concept="1uDHLu" id="5qdpREsKxch" role="1uDHLX">
        <property role="TrG5h" value="rainy" />
        <node concept="1uDxv_" id="5qdpREsKxci" role="1uDxco">
          <property role="1uDxv1" value="0.1" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKxcj" role="1uDxco">
          <property role="1uDxv1" value="0.3" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKxck" role="1uDxco">
          <property role="1uDxv1" value="0.1" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKxcl" role="1uDxco">
          <property role="1uDxv1" value="0.5" />
        </node>
      </node>
    </node>
    <node concept="3_vMzQ" id="5qdpREsKxdN" role="3_vMOX">
      <property role="TrG5h" value="wind_direction_law" />
      <property role="3_vMzV" value="-180" />
      <property role="3_vMzT" value="180" />
      <property role="FF4Y_" value="60" />
      <property role="FF4YA" value="90" />
    </node>
    <node concept="1hN_iB" id="5qdpREsKxez" role="3_vMOX">
      <property role="TrG5h" value="sun_exposure" />
      <property role="FF4Y_" value="500" />
      <property role="FF4YA" value="1700" />
      <node concept="1hN_iy" id="5qdpREsKxe_" role="1hN_iE">
        <property role="1hN_iK" value="9" />
        <property role="1hN_iM" value="0" />
      </node>
      <node concept="1hN_iy" id="5qdpREsK$0Q" role="1hN_iE">
        <property role="1hN_iK" value="18" />
        <property role="1hN_iM" value="10(-0.5(x - 13.6)^2 + 9.99)" />
      </node>
      <node concept="1hN_iy" id="5qdpREsK$0T" role="1hN_iE">
        <property role="1hN_iK" value="24" />
        <property role="1hN_iM" value="0" />
      </node>
      <node concept="2_hHaG" id="5qdpREsK$0X" role="2_hH7S">
        <property role="2_hHaH" value="-0.5" />
        <property role="2_hHaF" value="0.5" />
        <property role="2_hHaA" value="1" />
      </node>
    </node>
    <node concept="3_vMOS" id="5qdpREsK$0Z" role="3_vMOV">
      <property role="FF4LG" value="1" />
      <property role="TrG5h" value="weather_sensor" />
      <ref role="3_vMzM" node="5qdpREsKxc1" resolve="weather_law" />
    </node>
    <node concept="3_vMOS" id="5qdpREsK$11" role="3_vMOV">
      <property role="FF4LG" value="2" />
      <property role="TrG5h" value="wind_direction_sensor" />
      <ref role="3_vMzM" node="5qdpREsKxdN" resolve="wind_direction_law" />
    </node>
    <node concept="3_vMOS" id="5qdpREsK$14" role="3_vMOV">
      <property role="FF4LG" value="6" />
      <property role="TrG5h" value="sun_exposure_sensor" />
      <ref role="3_vMzM" node="5qdpREsKxez" resolve="sun_exposure" />
    </node>
  </node>
  <node concept="3_vMOK" id="5qdpREsKAs6">
    <property role="TrG5h" value="KittenSimulation" />
    <property role="2rmNeI" value="01-02-18 01:00" />
    <property role="2rmNeG" value="26-02-18 19:00" />
    <property role="117Pm5" value="http://grafana.meatbox.fr" />
    <property role="117PnT" value="http://influxdb.meatbox.fr" />
    <node concept="1uDEe6" id="5qdpREsKAsy" role="3_vMOX">
      <property role="TrG5h" value="kitten_activity_law" />
      <property role="FF4Y_" value="240" />
      <property role="FF4YA" value="180" />
      <property role="2rmjho" value="0" />
      <node concept="1uDHLu" id="5qdpREsKAtg" role="1uDHLX">
        <property role="TrG5h" value="meowing" />
        <node concept="1uDxv_" id="5qdpREsKAth" role="1uDxco">
          <property role="1uDxv1" value="0.2" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAtu" role="1uDxco">
          <property role="1uDxv1" value="0.1" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAtx" role="1uDxco">
          <property role="1uDxv1" value="0.35" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAt_" role="1uDxco">
          <property role="1uDxv1" value="0.05" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAtE" role="1uDxco">
          <property role="1uDxv1" value="0.3" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAtK" role="1uDxco">
          <property role="1uDxv1" value="0." />
        </node>
      </node>
      <node concept="1uDHLu" id="5qdpREsKAt4" role="1uDHLX">
        <property role="TrG5h" value="on_keyboard" />
        <node concept="1uDxv_" id="5qdpREsKAt5" role="1uDxco">
          <property role="1uDxv1" value="0.1" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAtR" role="1uDxco">
          <property role="1uDxv1" value="0.3" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAtU" role="1uDxco">
          <property role="1uDxv1" value="0.2" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAtY" role="1uDxco">
          <property role="1uDxv1" value="0.2" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAu3" role="1uDxco">
          <property role="1uDxv1" value="0." />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAu9" role="1uDxco">
          <property role="1uDxv1" value="0.2" />
        </node>
      </node>
      <node concept="1uDHLu" id="5qdpREsKAsU" role="1uDHLX">
        <property role="TrG5h" value="random_walk" />
        <node concept="1uDxv_" id="5qdpREsKAsV" role="1uDxco">
          <property role="1uDxv1" value="0.1" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAug" role="1uDxco">
          <property role="1uDxv1" value="0.3" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAuj" role="1uDxco">
          <property role="1uDxv1" value="0.3" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAun" role="1uDxco">
          <property role="1uDxv1" value="0.1" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAus" role="1uDxco">
          <property role="1uDxv1" value="0.1" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKDo_" role="1uDxco">
          <property role="1uDxv1" value="0.1" />
        </node>
      </node>
      <node concept="1uDHLu" id="5qdpREsKAsM" role="1uDHLX">
        <property role="TrG5h" value="purring" />
        <node concept="1uDxv_" id="5qdpREsKAsN" role="1uDxco">
          <property role="1uDxv1" value="0.15" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAuy" role="1uDxco">
          <property role="1uDxv1" value="0.15" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAu_" role="1uDxco">
          <property role="1uDxv1" value="0.1" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAuD" role="1uDxco">
          <property role="1uDxv1" value="0.3" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAuI" role="1uDxco">
          <property role="1uDxv1" value="0.2" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAuV" role="1uDxco">
          <property role="1uDxv1" value="0.1" />
        </node>
      </node>
      <node concept="1uDHLu" id="5qdpREsKAsG" role="1uDHLX">
        <property role="TrG5h" value="eating" />
        <node concept="1uDxv_" id="5qdpREsKAsH" role="1uDxco">
          <property role="1uDxv1" value="0.25" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAuO" role="1uDxco">
          <property role="1uDxv1" value="0.05" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAuR" role="1uDxco">
          <property role="1uDxv1" value="0.3" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAv2" role="1uDxco">
          <property role="1uDxv1" value="0.15" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAv7" role="1uDxco">
          <property role="1uDxv1" value="0.2" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAvd" role="1uDxco">
          <property role="1uDxv1" value="0.05" />
        </node>
      </node>
      <node concept="1uDHLu" id="5qdpREsKAsz" role="1uDHLX">
        <property role="TrG5h" value="sleeping" />
        <node concept="1uDxv_" id="5qdpREsKAs$" role="1uDxco">
          <property role="1uDxv1" value="0." />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAvk" role="1uDxco">
          <property role="1uDxv1" value="0.1" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAvn" role="1uDxco">
          <property role="1uDxv1" value="0.3" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAvr" role="1uDxco">
          <property role="1uDxv1" value="0.3" />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAvw" role="1uDxco">
          <property role="1uDxv1" value="0." />
        </node>
        <node concept="1uDxv_" id="5qdpREsKAvA" role="1uDxco">
          <property role="1uDxv1" value="0.3" />
        </node>
      </node>
    </node>
    <node concept="1hN_iB" id="5qdpREsKAys" role="3_vMOX">
      <property role="TrG5h" value="food_consumption_law" />
      <property role="FF4Y_" value="3600" />
      <property role="FF4YA" value="2400" />
      <node concept="1hN_iy" id="5qdpREsKAyu" role="1hN_iE">
        <property role="1hN_iK" value="4" />
        <property role="1hN_iM" value="0" />
      </node>
      <node concept="1hN_iy" id="5qdpREsKAzc" role="1hN_iE">
        <property role="1hN_iK" value="24" />
        <property role="1hN_iM" value="(0.3(x - 14.44) + 3.24) * 10" />
      </node>
      <node concept="2_hHaG" id="5qdpREsKAzf" role="2_hH7S">
        <property role="2_hHaH" value="-5." />
        <property role="2_hHaF" value="5." />
        <property role="2_hHaA" value="0" />
      </node>
    </node>
    <node concept="3_vMOS" id="5qdpREsKAzn" role="3_vMOV">
      <property role="FF4LG" value="1" />
      <property role="TrG5h" value="kitten_sensor" />
      <ref role="3_vMzM" node="5qdpREsKAsy" resolve="kitten_activity_law" />
    </node>
    <node concept="3_vMOS" id="5qdpREsKAzp" role="3_vMOV">
      <property role="FF4LG" value="1" />
      <property role="TrG5h" value="food_bowl_sensor" />
      <ref role="3_vMzM" node="5qdpREsKAys" resolve="food_consumption_law" />
    </node>
  </node>
</model>

