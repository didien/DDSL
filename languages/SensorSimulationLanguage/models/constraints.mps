<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:51e6aaa6-cfc9-4e88-a56d-3a68f9f02331(SensorSimulationLanguage.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="-1" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="m4b9" ref="f94783b1-6c83-46e2-a40e-86c1cdf7b0d4/java:net.objecthunter.exp4j(exp4j/)" />
    <import index="7ew6" ref="r:e465baf8-de2e-4ffc-b433-5fde6234c8fc(SensorSimulationLanguage.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
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
            <node concept="22lmx$" id="7rYs2gBcpPD" role="3clFbG">
              <node concept="3clFbC" id="7rYs2gBcwMb" role="3uHU7w">
                <node concept="3cmrfG" id="7rYs2gBcxEC" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="1Wqviy" id="7rYs2gBcq4Z" role="3uHU7B" />
              </node>
              <node concept="2d3UOw" id="lhB3YR5mlQ" role="3uHU7B">
                <node concept="1Wqviy" id="lhB3YR5kw$" role="3uHU7B" />
                <node concept="2OqwBi" id="lhB3YR5mT1" role="3uHU7w">
                  <node concept="EsrRn" id="lhB3YR5mtf" role="2Oq$k0" />
                  <node concept="3TrcHB" id="lhB3YR5n7x" role="2OqNvi">
                    <ref role="3TsBF5" to="7ew6:75cVuPqSa98" resolve="updatePeriod" />
                  </node>
                </node>
              </node>
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
  <node concept="1M2fIO" id="7rYs2gB7cg$">
    <property role="3GE5qa" value="laws" />
    <ref role="1M2myG" to="7ew6:7dKB6cHPzZ_" resolve="Markov" />
  </node>
  <node concept="1M2fIO" id="7rYs2gB7g7d">
    <property role="3GE5qa" value="laws" />
    <ref role="1M2myG" to="7ew6:7dKB6cHP$0X" resolve="MarkovStates" />
  </node>
  <node concept="1M2fIO" id="5u9gdSXmhph">
    <property role="3GE5qa" value="replays" />
    <ref role="1M2myG" to="7ew6:3PPzdvo2Egy" resolve="CSV" />
    <node concept="EnEH3" id="5u9gdSXmhpH" role="1MhHOB">
      <ref role="EomxK" to="7ew6:5u9gdSXmfKE" resolve="nameColumn" />
      <node concept="QB0g5" id="5u9gdSXmhq8" role="QCWH9">
        <node concept="3clFbS" id="5u9gdSXmhq9" role="2VODD2">
          <node concept="3clFbF" id="5u9gdSXmhA2" role="3cqZAp">
            <node concept="1Wc70l" id="5u9gdSXmr94" role="3clFbG">
              <node concept="3y3z36" id="5u9gdSXmsrb" role="3uHU7w">
                <node concept="2OqwBi" id="5u9gdSXmt9L" role="3uHU7w">
                  <node concept="EsrRn" id="5u9gdSXmsHR" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5u9gdSXmtHx" role="2OqNvi">
                    <ref role="3TsBF5" to="7ew6:5u9gdSXmfKJ" resolve="valueColumn" />
                  </node>
                </node>
                <node concept="1Wqviy" id="5u9gdSXmroF" role="3uHU7B" />
              </node>
              <node concept="1Wc70l" id="5u9gdSXmnfx" role="3uHU7B">
                <node concept="2d3UOw" id="5u9gdSXmkH2" role="3uHU7B">
                  <node concept="1Wqviy" id="5u9gdSXmhA1" role="3uHU7B" />
                  <node concept="3cmrfG" id="5u9gdSXmkOr" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
                <node concept="3y3z36" id="5u9gdSXmorj" role="3uHU7w">
                  <node concept="1Wqviy" id="5u9gdSXmnsl" role="3uHU7B" />
                  <node concept="2OqwBi" id="5u9gdSXmp76" role="3uHU7w">
                    <node concept="EsrRn" id="5u9gdSXmoFy" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5u9gdSXmpvW" role="2OqNvi">
                      <ref role="3TsBF5" to="7ew6:5u9gdSXmaGX" resolve="timeColumn" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="5u9gdSXmlic" role="1MhHOB">
      <ref role="EomxK" to="7ew6:5u9gdSXmaGX" resolve="timeColumn" />
      <node concept="QB0g5" id="5u9gdSXmu0j" role="QCWH9">
        <node concept="3clFbS" id="5u9gdSXmu0k" role="2VODD2">
          <node concept="3clFbF" id="5u9gdSXmu7t" role="3cqZAp">
            <node concept="1Wc70l" id="5u9gdSXmwPz" role="3clFbG">
              <node concept="3y3z36" id="5u9gdSXmy1l" role="3uHU7w">
                <node concept="2OqwBi" id="5u9gdSXmyH8" role="3uHU7w">
                  <node concept="EsrRn" id="5u9gdSXmyh$" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5u9gdSXmzhQ" role="2OqNvi">
                    <ref role="3TsBF5" to="7ew6:5u9gdSXmfKJ" resolve="valueColumn" />
                  </node>
                </node>
                <node concept="1Wqviy" id="5u9gdSXmx2n" role="3uHU7B" />
              </node>
              <node concept="2d3UOw" id="5u9gdSXmv9u" role="3uHU7B">
                <node concept="1Wqviy" id="5u9gdSXmu7s" role="3uHU7B" />
                <node concept="3cmrfG" id="5u9gdSXmvgO" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="5u9gdSXmz$g" role="1MhHOB">
      <ref role="EomxK" to="7ew6:5u9gdSXmfKJ" resolve="valueColumn" />
      <node concept="QB0g5" id="5u9gdSXm$5k" role="QCWH9">
        <node concept="3clFbS" id="5u9gdSXm$5l" role="2VODD2">
          <node concept="3clFbF" id="5u9gdSXm$cu" role="3cqZAp">
            <node concept="2d3UOw" id="5u9gdSXm_ev" role="3clFbG">
              <node concept="3cmrfG" id="5u9gdSXm_lP" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="1Wqviy" id="5u9gdSXm$ct" role="3uHU7B" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="6vH4OV2Dhaz">
    <property role="3GE5qa" value="laws" />
    <ref role="1M2myG" to="7ew6:7rYs2gBc2i6" resolve="ModellingConstraint" />
    <node concept="EnEH3" id="6vH4OV2Dha$" role="1MhHOB">
      <ref role="EomxK" to="7ew6:7rYs2gBc2im" resolve="closure" />
      <node concept="QB0g5" id="6vH4OV2DhaA" role="QCWH9">
        <node concept="3clFbS" id="6vH4OV2DhaB" role="2VODD2">
          <node concept="3cpWs8" id="6vH4OV2Dhp1" role="3cqZAp">
            <node concept="3cpWsn" id="6vH4OV2Dhp2" role="3cpWs9">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="6vH4OV2Dhp3" role="1tU5fm">
                <ref role="3uigEE" to="m4b9:~Expression" resolve="Expression" />
              </node>
              <node concept="2OqwBi" id="6vH4OV2DiPf" role="33vP2m">
                <node concept="2OqwBi" id="6vH4OV2Di6k" role="2Oq$k0">
                  <node concept="2ShNRf" id="6vH4OV2DhBx" role="2Oq$k0">
                    <node concept="1pGfFk" id="6vH4OV2DhM9" role="2ShVmc">
                      <ref role="37wK5l" to="m4b9:~ExpressionBuilder.&lt;init&gt;(java.lang.String)" resolve="ExpressionBuilder" />
                      <node concept="1Wqviy" id="6vH4OV2DhTt" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6vH4OV2Dioa" role="2OqNvi">
                    <ref role="37wK5l" to="m4b9:~ExpressionBuilder.variable(java.lang.String):net.objecthunter.exp4j.ExpressionBuilder" resolve="variable" />
                    <node concept="Xl_RD" id="6vH4OV2Diw8" role="37wK5m">
                      <property role="Xl_RC" value="x" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6vH4OV2Dja2" role="2OqNvi">
                  <ref role="37wK5l" to="m4b9:~ExpressionBuilder.build():net.objecthunter.exp4j.Expression" resolve="build" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="6vH4OV2DjFn" role="3cqZAp">
            <node concept="2OqwBi" id="6vH4OV2Dl74" role="3cqZAk">
              <node concept="2OqwBi" id="6vH4OV2Dk6y" role="2Oq$k0">
                <node concept="37vLTw" id="6vH4OV2DjVn" role="2Oq$k0">
                  <ref role="3cqZAo" node="6vH4OV2Dhp2" resolve="e" />
                </node>
                <node concept="liA8E" id="6vH4OV2Dko_" role="2OqNvi">
                  <ref role="37wK5l" to="m4b9:~Expression.validate(boolean):net.objecthunter.exp4j.ValidationResult" resolve="validate" />
                  <node concept="3clFbT" id="6vH4OV2DkH2" role="37wK5m">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6vH4OV2Dlwg" role="2OqNvi">
                <ref role="37wK5l" to="m4b9:~ValidationResult.isValid():boolean" resolve="isValid" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="6vH4OV2FdK6">
    <ref role="1M2myG" to="7ew6:6vH4OV2EW7y" resolve="Noise" />
    <node concept="EnEH3" id="6vH4OV2FdK7" role="1MhHOB">
      <ref role="EomxK" to="7ew6:6vH4OV2EW7z" resolve="min" />
      <node concept="QB0g5" id="6vH4OV2FdYN" role="QCWH9">
        <node concept="3clFbS" id="6vH4OV2FdYO" role="2VODD2">
          <node concept="3clFbF" id="6vH4OV2Fe5W" role="3cqZAp">
            <node concept="2OqwBi" id="6vH4OV2Fe5X" role="3clFbG">
              <node concept="1Wqviy" id="6vH4OV2Fe5Y" role="2Oq$k0" />
              <node concept="liA8E" id="6vH4OV2Fe5Z" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String):boolean" resolve="matches" />
                <node concept="Xl_RD" id="6vH4OV2Fe60" role="37wK5m">
                  <property role="Xl_RC" value="^-?[0-9]*\\.[0-9]*$" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="6vH4OV2Fehr" role="1MhHOB">
      <ref role="EomxK" to="7ew6:6vH4OV2EW7_" resolve="max" />
      <node concept="QB0g5" id="6vH4OV2FehF" role="QCWH9">
        <node concept="3clFbS" id="6vH4OV2FehG" role="2VODD2">
          <node concept="3clFbF" id="6vH4OV2FeoO" role="3cqZAp">
            <node concept="1Wc70l" id="6vH4OV2FfSB" role="3clFbG">
              <node concept="3eOSWO" id="6vH4OV2Fj9I" role="3uHU7w">
                <node concept="2YIFZM" id="6vH4OV2FjJC" role="3uHU7w">
                  <ref role="37wK5l" to="wyt6:~Double.parseDouble(java.lang.String):double" resolve="parseDouble" />
                  <ref role="1Pybhc" to="wyt6:~Double" resolve="Double" />
                  <node concept="2OqwBi" id="6vH4OV2FkbP" role="37wK5m">
                    <node concept="EsrRn" id="6vH4OV2FjVU" role="2Oq$k0" />
                    <node concept="3TrcHB" id="6vH4OV2FkBD" role="2OqNvi">
                      <ref role="3TsBF5" to="7ew6:6vH4OV2EW7z" resolve="min" />
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="6vH4OV2Fghf" role="3uHU7B">
                  <ref role="37wK5l" to="wyt6:~Double.parseDouble(java.lang.String):double" resolve="parseDouble" />
                  <ref role="1Pybhc" to="wyt6:~Double" resolve="Double" />
                  <node concept="1Wqviy" id="6vH4OV2Fgur" role="37wK5m" />
                </node>
              </node>
              <node concept="2OqwBi" id="6vH4OV2FeoP" role="3uHU7B">
                <node concept="1Wqviy" id="6vH4OV2FeoQ" role="2Oq$k0" />
                <node concept="liA8E" id="6vH4OV2FeoR" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String):boolean" resolve="matches" />
                  <node concept="Xl_RD" id="6vH4OV2FeoS" role="37wK5m">
                    <property role="Xl_RC" value="^-?[0-9]*\\.[0-9]*$" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="6vH4OV2FkTh" role="1MhHOB">
      <ref role="EomxK" to="7ew6:6vH4OV2EW7C" resolve="scale" />
      <node concept="QB0g5" id="6vH4OV2FllR" role="QCWH9">
        <node concept="3clFbS" id="6vH4OV2FllS" role="2VODD2">
          <node concept="3clFbF" id="6vH4OV2Flt0" role="3cqZAp">
            <node concept="2d3UOw" id="6vH4OV2FnD5" role="3clFbG">
              <node concept="1Wqviy" id="6vH4OV2Flt2" role="3uHU7B" />
              <node concept="3cmrfG" id="6vH4OV2FnKu" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

