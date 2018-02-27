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
    <property role="117PnT" value="http://influxdb.meatbox.fr" />
    <property role="117Pm5" value="http://grafana.meatbox.fr" />
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
      <property role="11644t" value="eyJrIjoiQWRHbTJYNUpBRHdSS0d2YVJ5SEZNNjB1YTY4OXgzVWkiLCJuIjoiZnplIiwiaWQiOjF9" />
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
    <node concept="3_vMzP" id="5qdpREsI1HI" role="C6m5H">
      <property role="C8I2t" value="lkj" />
      <property role="3aaEPu" value="mlk" />
      <property role="1EOrNO" value="1" />
      <property role="1EOuJz" value="2" />
      <property role="1EOrNL" value="3" />
      <node concept="2_hHaG" id="5qdpREsIgmc" role="2_hH7S">
        <property role="2_hHaH" value="0." />
        <property role="2_hHaF" value="10." />
        <property role="2_hHaA" value="0" />
      </node>
    </node>
  </node>
  <node concept="3_vMOK" id="1nZ6g$XSYgf">
    <property role="TrG5h" value="SimpleTest" />
    <property role="2rmNeI" value="27-02-18 16:00" />
    <property role="2rmNeG" value="27-02-18 17:00" />
  </node>
</model>

