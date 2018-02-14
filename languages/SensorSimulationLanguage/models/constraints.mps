<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:51e6aaa6-cfc9-4e88-a56d-3a68f9f02331(SensorSimulationLanguage.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="4" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="28m1" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.time(JDK/)" />
    <import index="8iu6" ref="642f71f8-327a-425b-84f9-44ad58786d27/f:project#daafa647-f1f7-4b0b-b096-69cd7c8408c0(jetbrains.mps.lang.project.modules/module.jetbrains.mps.baseLanguage.regexp@project_stub)" />
    <import index="7ew6" ref="r:e465baf8-de2e-4ffc-b433-5fde6234c8fc(SensorSimulationLanguage.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1212097481299" name="propertyValidator" index="QCWH9" />
      </concept>
      <concept id="1147468365020" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" flags="nn" index="EsrRn" />
      <concept id="1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" flags="in" index="QB0g5" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213098023997" name="property" index="1MhHOB" />
      </concept>
      <concept id="1153138554286" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" flags="nn" index="1Wqviy" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="1M2fIO" id="5fx1X_lOQzO">
    <ref role="1M2myG" to="7ew6:3PPzdvo2E7J" resolve="SensorCollection" />
    <node concept="EnEH3" id="5fx1X_lOQzP" role="1MhHOB">
      <ref role="EomxK" to="7ew6:75cVuPqSa61" resolve="quantity" />
      <node concept="QB0g5" id="5fx1X_lOQzR" role="QCWH9">
        <node concept="3clFbS" id="5fx1X_lOQzS" role="2VODD2">
          <node concept="3clFbF" id="5fx1X_lOS42" role="3cqZAp">
            <node concept="2d3UOw" id="5fx1X_lOTTj" role="3clFbG">
              <node concept="3cmrfG" id="5fx1X_lOU0D" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="1Wqviy" id="5fx1X_lOS41" role="3uHU7B" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3juagqJxhF6">
    <ref role="1M2myG" to="7ew6:3PPzdvo2E7B" resolve="Simulation" />
    <node concept="EnEH3" id="3juagqJxhFX" role="1MhHOB">
      <ref role="EomxK" to="7ew6:3juagqJxhEC" resolve="startDate" />
      <node concept="QB0g5" id="3juagqJxhFZ" role="QCWH9">
        <node concept="3clFbS" id="3juagqJxhG0" role="2VODD2">
          <node concept="3clFbF" id="3juagqJxhN9" role="3cqZAp">
            <node concept="2OqwBi" id="3juagqJxifl" role="3clFbG">
              <node concept="1Wqviy" id="3juagqJxhN8" role="2Oq$k0" />
              <node concept="liA8E" id="3juagqJxiZ$" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String):boolean" resolve="matches" />
                <node concept="Xl_RD" id="3juagqJxjmW" role="37wK5m">
                  <property role="Xl_RC" value="[0-9]{2}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="3juagqJxjDH" role="1MhHOB">
      <ref role="EomxK" to="7ew6:3juagqJxhEE" resolve="endDate" />
      <node concept="QB0g5" id="3juagqJxjDX" role="QCWH9">
        <node concept="3clFbS" id="3juagqJxjDY" role="2VODD2">
          <node concept="3clFbF" id="lhB3YR6vS9" role="3cqZAp">
            <node concept="2OqwBi" id="lhB3YR6vSa" role="3clFbG">
              <node concept="1Wqviy" id="lhB3YR6vSb" role="2Oq$k0" />
              <node concept="liA8E" id="lhB3YR6vSc" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String):boolean" resolve="matches" />
                <node concept="Xl_RD" id="lhB3YR6vSd" role="37wK5m">
                  <property role="Xl_RC" value="[0-9]{2}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="lhB3YR58JM">
    <property role="3GE5qa" value="laws" />
    <ref role="1M2myG" to="7ew6:3PPzdvo2Egx" resolve="Random" />
    <node concept="EnEH3" id="lhB3YR5cqf" role="1MhHOB">
      <ref role="EomxK" to="7ew6:3PPzdvo2EgI" resolve="max" />
      <node concept="QB0g5" id="lhB3YR5cR6" role="QCWH9">
        <node concept="3clFbS" id="lhB3YR5cR7" role="2VODD2">
          <node concept="3clFbF" id="lhB3YR5cYg" role="3cqZAp">
            <node concept="3eOSWO" id="lhB3YR5eF9" role="3clFbG">
              <node concept="2OqwBi" id="lhB3YR5ffm" role="3uHU7w">
                <node concept="EsrRn" id="lhB3YR5eMy" role="2Oq$k0" />
                <node concept="3TrcHB" id="lhB3YR5fBN" role="2OqNvi">
                  <ref role="3TsBF5" to="7ew6:3PPzdvo2EgG" resolve="min" />
                </node>
              </node>
              <node concept="1Wqviy" id="lhB3YR5cYf" role="3uHU7B" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="lhB3YR5kpo">
    <ref role="1M2myG" to="7ew6:75cVuPqSa90" resolve="IDataSource" />
    <node concept="EnEH3" id="lhB3YR5kpp" role="1MhHOB">
      <ref role="EomxK" to="7ew6:3juagqJxLPu" resolve="resetPeriod" />
      <node concept="QB0g5" id="lhB3YR5kpr" role="QCWH9">
        <node concept="3clFbS" id="lhB3YR5kps" role="2VODD2">
          <node concept="3clFbF" id="lhB3YR5kw_" role="3cqZAp">
            <node concept="2d3UOw" id="lhB3YR5mlQ" role="3clFbG">
              <node concept="2OqwBi" id="lhB3YR5mT1" role="3uHU7w">
                <node concept="EsrRn" id="lhB3YR5mtf" role="2Oq$k0" />
                <node concept="3TrcHB" id="lhB3YR5n7x" role="2OqNvi">
                  <ref role="3TsBF5" to="7ew6:75cVuPqSa98" resolve="updatePeriod" />
                </node>
              </node>
              <node concept="1Wqviy" id="lhB3YR5kw$" role="3uHU7B" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="7dKB6cHP$35">
    <property role="3GE5qa" value="laws" />
    <ref role="1M2myG" to="7ew6:7dKB6cHPCI6" resolve="MarkovTransition" />
    <node concept="EnEH3" id="7dKB6cHP$3x" role="1MhHOB">
      <ref role="EomxK" to="7ew6:7dKB6cHPCIy" resolve="probability" />
      <node concept="QB0g5" id="7dKB6cHP$3z" role="QCWH9">
        <node concept="3clFbS" id="7dKB6cHP$3$" role="2VODD2">
          <node concept="3clFbF" id="7dKB6cHP$bT" role="3cqZAp">
            <node concept="2OqwBi" id="7dKB6cHP$C5" role="3clFbG">
              <node concept="1Wqviy" id="7dKB6cHP$bS" role="2Oq$k0" />
              <node concept="liA8E" id="7dKB6cHP_aD" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String):boolean" resolve="matches" />
                <node concept="Xl_RD" id="7dKB6cHP_iw" role="37wK5m">
                  <property role="Xl_RC" value="^[0-9]*\\.[0-9]*$" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

