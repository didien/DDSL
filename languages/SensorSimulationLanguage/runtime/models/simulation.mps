<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2ebb615b-7d7d-46a9-af25-8b8353fe1098(SensorSimulationLanguage.runtime.simulation)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="bc16fd15-bfa2-47e7-b9c2-9f80e5b399e0" name="SensorSimulationLanguage" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
  </languages>
  <imports>
    <import index="9vrl" ref="r:9e8f23e3-7bd3-4292-ac1d-5693a6c373f3(jetbrains.mps.internal.collections)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="mqa2" ref="r:996c6b7b-3791-40af-aae2-84dfc153ac81(main@generator)" />
    <import index="28m1" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.time(JDK/)" />
    <import index="9nbq" ref="cc7fb470-7d0c-4aea-af2a-5d870ff3092f/java:org.influxdb(InfluxDB/)" />
    <import index="wthj" ref="cc7fb470-7d0c-4aea-af2a-5d870ff3092f/java:org.influxdb.dto(InfluxDB/)" />
    <import index="7fo8" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.time.chrono(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="3K9a83awfDC">
    <property role="TrG5h" value="RandomLaw" />
    <node concept="312cEg" id="1Vo$Sn9NYK$" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="min" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="1Vo$Sn9NYKg" role="1B3o_S" />
      <node concept="10Oyi0" id="1Vo$Sn9O52e" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1Vo$Sn9NYLi" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="max" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="1Vo$Sn9NYKV" role="1B3o_S" />
      <node concept="10Oyi0" id="1Vo$Sn9O5c6" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="3juagqJy1EW" role="jymVt" />
    <node concept="3clFbW" id="3juagqJy1KY" role="jymVt">
      <node concept="3cqZAl" id="3juagqJy1KZ" role="3clF45" />
      <node concept="3Tm1VV" id="3juagqJy1L0" role="1B3o_S" />
      <node concept="3clFbS" id="3juagqJy1L2" role="3clF47">
        <node concept="3clFbF" id="3juagqJy1L6" role="3cqZAp">
          <node concept="37vLTI" id="3juagqJy1L8" role="3clFbG">
            <node concept="37vLTw" id="7rYs2gBaG1e" role="37vLTJ">
              <ref role="3cqZAo" node="7rYs2gBaBxJ" resolve="lawName" />
            </node>
            <node concept="37vLTw" id="3juagqJy1Ld" role="37vLTx">
              <ref role="3cqZAo" node="3juagqJy1L5" resolve="lawName1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3juagqJy1Lg" role="3cqZAp">
          <node concept="37vLTI" id="3juagqJy1Li" role="3clFbG">
            <node concept="37vLTw" id="3juagqJy1Lm" role="37vLTJ">
              <ref role="3cqZAo" node="1Vo$Sn9NYK$" resolve="min" />
            </node>
            <node concept="37vLTw" id="3juagqJy1Ln" role="37vLTx">
              <ref role="3cqZAo" node="3juagqJy1Lf" resolve="min1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3juagqJy1Lq" role="3cqZAp">
          <node concept="37vLTI" id="3juagqJy1Ls" role="3clFbG">
            <node concept="37vLTw" id="3juagqJy1Lw" role="37vLTJ">
              <ref role="3cqZAo" node="1Vo$Sn9NYLi" resolve="max" />
            </node>
            <node concept="37vLTw" id="3juagqJy1Lx" role="37vLTx">
              <ref role="3cqZAo" node="3juagqJy1Lp" resolve="max1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3juagqJy1L$" role="3cqZAp">
          <node concept="37vLTI" id="3juagqJy1LA" role="3clFbG">
            <node concept="37vLTw" id="3juagqJy1LE" role="37vLTJ">
              <ref role="3cqZAo" node="1Vo$Sn9NYN9" resolve="updatePeriod" />
            </node>
            <node concept="37vLTw" id="3juagqJy1LF" role="37vLTx">
              <ref role="3cqZAo" node="3juagqJy1Lz" resolve="updatePeriod1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3juagqJy1LI" role="3cqZAp">
          <node concept="37vLTI" id="3juagqJy1LK" role="3clFbG">
            <node concept="37vLTw" id="3juagqJy1LO" role="37vLTJ">
              <ref role="3cqZAo" node="1Vo$Sn9NYM9" resolve="samplingFrequency" />
            </node>
            <node concept="37vLTw" id="3juagqJy1LP" role="37vLTx">
              <ref role="3cqZAo" node="3juagqJy1LH" resolve="samplingFrequency1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3juagqJy1LS" role="3cqZAp">
          <node concept="37vLTI" id="3juagqJy1LU" role="3clFbG">
            <node concept="37vLTw" id="3juagqJy1LY" role="37vLTJ">
              <ref role="3cqZAo" node="3juagqJxR9G" resolve="resetPeriod" />
            </node>
            <node concept="37vLTw" id="3juagqJy1LZ" role="37vLTx">
              <ref role="3cqZAo" node="3juagqJy1LR" resolve="resetPeriod1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3juagqJy1L5" role="3clF46">
        <property role="TrG5h" value="lawName1" />
        <node concept="17QB3L" id="3juagqJy1L4" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3juagqJy1Lf" role="3clF46">
        <property role="TrG5h" value="min1" />
        <node concept="10Oyi0" id="3juagqJy1Le" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3juagqJy1Lp" role="3clF46">
        <property role="TrG5h" value="max1" />
        <node concept="10Oyi0" id="3juagqJy1Lo" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3juagqJy1Lz" role="3clF46">
        <property role="TrG5h" value="updatePeriod1" />
        <node concept="10Oyi0" id="3juagqJy1Ly" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3juagqJy1LH" role="3clF46">
        <property role="TrG5h" value="samplingFrequency1" />
        <node concept="10Oyi0" id="3juagqJy1LG" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3juagqJy1LR" role="3clF46">
        <property role="TrG5h" value="resetPeriod1" />
        <node concept="10Oyi0" id="3juagqJy1LQ" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1Vo$Sn9O0Pp" role="jymVt" />
    <node concept="3clFb_" id="1Vo$Sn9O13d" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getNext" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1Vo$Sn9O13g" role="3clF47">
        <node concept="3cpWs6" id="1Vo$Sn9O1fK" role="3cqZAp">
          <node concept="2OqwBi" id="1Vo$Sn9O4ll" role="3cqZAk">
            <node concept="2YIFZM" id="1Vo$Sn9O42f" role="2Oq$k0">
              <ref role="37wK5l" to="5zyv:~ThreadLocalRandom.current():java.util.concurrent.ThreadLocalRandom" resolve="current" />
              <ref role="1Pybhc" to="5zyv:~ThreadLocalRandom" resolve="ThreadLocalRandom" />
            </node>
            <node concept="liA8E" id="1Vo$Sn9O4_F" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~ThreadLocalRandom.nextInt(int,int):int" resolve="nextInt" />
              <node concept="37vLTw" id="1Vo$Sn9O4Gj" role="37wK5m">
                <ref role="3cqZAo" node="1Vo$Sn9NYK$" resolve="min" />
              </node>
              <node concept="3cpWs3" id="3K9a83ayvyL" role="37wK5m">
                <node concept="3cmrfG" id="3K9a83ayvGt" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="1Vo$Sn9O4Rl" role="3uHU7B">
                  <ref role="3cqZAo" node="1Vo$Sn9NYLi" resolve="max" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1Vo$Sn9O0WH" role="1B3o_S" />
      <node concept="10Oyi0" id="1Vo$Sn9O19R" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="3K9a83awfDD" role="1B3o_S" />
    <node concept="3uibUv" id="7rYs2gBaEBk" role="1zkMxy">
      <ref role="3uigEE" node="7rYs2gBaBv4" resolve="IDataSource" />
    </node>
  </node>
  <node concept="312cEu" id="3K9a83awgxk">
    <property role="TrG5h" value="Sensor" />
    <node concept="312cEg" id="3juagqJydeO" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="sensorID" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="3juagqJydev" role="1B3o_S" />
      <node concept="17QB3L" id="3juagqJydeH" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="3juagqJyddW" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="dataSource" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="3juagqJyddD" role="1B3o_S" />
      <node concept="3uibUv" id="7rYs2gBaIj0" role="1tU5fm">
        <ref role="3uigEE" node="7rYs2gBaBv4" resolve="IDataSource" />
      </node>
    </node>
    <node concept="312cEg" id="36n0RtVzhS9" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="currentTime" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="36n0RtVzhvp" role="1B3o_S" />
      <node concept="3uibUv" id="36n0RtVzhS2" role="1tU5fm">
        <ref role="3uigEE" to="28m1:~LocalDateTime" resolve="LocalDateTime" />
      </node>
    </node>
    <node concept="312cEg" id="36n0RtVzwMG" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="lastReading" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="36n0RtVzwB$" role="1B3o_S" />
      <node concept="10Oyi0" id="36n0RtVzwMB" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="36n0RtVz$9O" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="timeToRefresh" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="36n0RtVzzUv" role="1B3o_S" />
      <node concept="3uibUv" id="36n0RtVzCmZ" role="1tU5fm">
        <ref role="3uigEE" to="28m1:~Duration" resolve="Duration" />
      </node>
    </node>
    <node concept="2tJIrI" id="36n0RtVzi0u" role="jymVt" />
    <node concept="3clFbW" id="36n0RtVzifZ" role="jymVt">
      <node concept="3cqZAl" id="36n0RtVzig0" role="3clF45" />
      <node concept="3Tm1VV" id="36n0RtVzig1" role="1B3o_S" />
      <node concept="3clFbS" id="36n0RtVzig3" role="3clF47">
        <node concept="3clFbF" id="36n0RtVzig7" role="3cqZAp">
          <node concept="37vLTI" id="36n0RtVzig9" role="3clFbG">
            <node concept="37vLTw" id="36n0RtVzigd" role="37vLTJ">
              <ref role="3cqZAo" node="3juagqJydeO" resolve="sensorID" />
            </node>
            <node concept="37vLTw" id="36n0RtVzige" role="37vLTx">
              <ref role="3cqZAo" node="36n0RtVzig6" resolve="sensorID1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="36n0RtVzigh" role="3cqZAp">
          <node concept="37vLTI" id="36n0RtVzigj" role="3clFbG">
            <node concept="37vLTw" id="36n0RtVzign" role="37vLTJ">
              <ref role="3cqZAo" node="3juagqJyddW" resolve="dataSource" />
            </node>
            <node concept="37vLTw" id="36n0RtVzigo" role="37vLTx">
              <ref role="3cqZAo" node="36n0RtVzigg" resolve="dataSource1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="36n0RtVzigr" role="3cqZAp">
          <node concept="37vLTI" id="36n0RtVzigt" role="3clFbG">
            <node concept="37vLTw" id="36n0RtVzigx" role="37vLTJ">
              <ref role="3cqZAo" node="36n0RtVzhS9" resolve="currentTime" />
            </node>
            <node concept="37vLTw" id="36n0RtVzigy" role="37vLTx">
              <ref role="3cqZAo" node="36n0RtVzigq" resolve="currentTime1" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="36n0RtVzz$2" role="3cqZAp" />
        <node concept="3SKdUt" id="36n0RtVzzlZ" role="3cqZAp">
          <node concept="3SKdUq" id="36n0RtVzzm1" role="3SKWNk">
            <property role="3SKdUp" value="init sensor" />
          </node>
        </node>
        <node concept="3clFbF" id="36n0RtVzx1i" role="3cqZAp">
          <node concept="37vLTI" id="36n0RtVzyzQ" role="3clFbG">
            <node concept="2OqwBi" id="36n0RtVzySt" role="37vLTx">
              <node concept="37vLTw" id="36n0RtVzyK$" role="2Oq$k0">
                <ref role="3cqZAo" node="3juagqJyddW" resolve="dataSource" />
              </node>
              <node concept="liA8E" id="36n0RtVzz83" role="2OqNvi">
                <ref role="37wK5l" node="7rYs2gBaBww" resolve="getNext" />
              </node>
            </node>
            <node concept="37vLTw" id="36n0RtVzx1g" role="37vLTJ">
              <ref role="3cqZAo" node="36n0RtVzwMG" resolve="lastReading" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="36n0RtVz$D7" role="3cqZAp">
          <node concept="37vLTI" id="36n0RtVz_gs" role="3clFbG">
            <node concept="37vLTw" id="36n0RtVz$D5" role="37vLTJ">
              <ref role="3cqZAo" node="36n0RtVz$9O" resolve="timeToRefresh" />
            </node>
            <node concept="1rXfSq" id="36n0RtVzI7a" role="37vLTx">
              <ref role="37wK5l" node="36n0RtVzD3o" resolve="computeNextRefresh" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="36n0RtVzig6" role="3clF46">
        <property role="TrG5h" value="sensorID1" />
        <node concept="17QB3L" id="36n0RtVzig5" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="36n0RtVzigg" role="3clF46">
        <property role="TrG5h" value="dataSource1" />
        <node concept="3uibUv" id="7rYs2gBaJpU" role="1tU5fm">
          <ref role="3uigEE" node="7rYs2gBaBv4" resolve="IDataSource" />
        </node>
      </node>
      <node concept="37vLTG" id="36n0RtVzigq" role="3clF46">
        <property role="TrG5h" value="currentTime1" />
        <node concept="3uibUv" id="36n0RtVzigp" role="1tU5fm">
          <ref role="3uigEE" to="28m1:~LocalDateTime" resolve="LocalDateTime" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3juagqJydob" role="jymVt" />
    <node concept="3clFb_" id="3juagqJydtv" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="readValue" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3juagqJydty" role="3clF47">
        <node concept="3clFbJ" id="36n0RtVzM_c" role="3cqZAp">
          <node concept="3clFbS" id="36n0RtVzM_e" role="3clFbx">
            <node concept="3clFbF" id="36n0RtVzSII" role="3cqZAp">
              <node concept="37vLTI" id="36n0RtVzU60" role="3clFbG">
                <node concept="2OqwBi" id="36n0RtVzUqv" role="37vLTx">
                  <node concept="37vLTw" id="36n0RtVzUiS" role="2Oq$k0">
                    <ref role="3cqZAo" node="3juagqJyddW" resolve="dataSource" />
                  </node>
                  <node concept="liA8E" id="36n0RtVzUGw" role="2OqNvi">
                    <ref role="37wK5l" node="7rYs2gBaBww" resolve="getNext" />
                  </node>
                </node>
                <node concept="37vLTw" id="36n0RtVzSIG" role="37vLTJ">
                  <ref role="3cqZAo" node="36n0RtVzwMG" resolve="lastReading" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="36n0RtV$WfP" role="3cqZAp">
              <node concept="37vLTI" id="36n0RtV$WqS" role="3clFbG">
                <node concept="1rXfSq" id="36n0RtV$WwA" role="37vLTx">
                  <ref role="37wK5l" node="36n0RtVzD3o" resolve="computeNextRefresh" />
                </node>
                <node concept="37vLTw" id="36n0RtV$WfN" role="37vLTJ">
                  <ref role="3cqZAo" node="36n0RtVz$9O" resolve="timeToRefresh" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2dkUwp" id="36n0RtV$Vnl" role="3clFbw">
            <node concept="2OqwBi" id="36n0RtVzPci" role="3uHU7B">
              <node concept="37vLTw" id="36n0RtVzOSg" role="2Oq$k0">
                <ref role="3cqZAo" node="36n0RtVz$9O" resolve="timeToRefresh" />
              </node>
              <node concept="liA8E" id="36n0RtVzP_5" role="2OqNvi">
                <ref role="37wK5l" to="28m1:~Duration.compareTo(java.time.Duration):int" resolve="compareTo" />
                <node concept="2YIFZM" id="36n0RtVzQDw" role="37wK5m">
                  <ref role="37wK5l" to="28m1:~Duration.ofSeconds(long):java.time.Duration" resolve="ofSeconds" />
                  <ref role="1Pybhc" to="28m1:~Duration" resolve="Duration" />
                  <node concept="3cmrfG" id="36n0RtVzQQY" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cmrfG" id="36n0RtVzSBc" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="36n0RtVzMi1" role="3cqZAp" />
        <node concept="3clFbF" id="3juagqJydyJ" role="3cqZAp">
          <node concept="2OqwBi" id="3juagqJyd_7" role="3clFbG">
            <node concept="10M0yZ" id="3juagqJyd_8" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="3juagqJyd_9" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="36n0RtVzVx_" role="37wK5m">
                <node concept="2OqwBi" id="36n0RtVAUGL" role="3uHU7w">
                  <node concept="37vLTw" id="36n0RtVzVUZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="36n0RtVzhS9" resolve="currentTime" />
                  </node>
                  <node concept="liA8E" id="36n0RtVAVz2" role="2OqNvi">
                    <ref role="37wK5l" to="7fo8:~ChronoLocalDateTime.toEpochSecond(java.time.ZoneOffset):long" resolve="toEpochSecond" />
                    <node concept="10M0yZ" id="36n0RtVAXmS" role="37wK5m">
                      <ref role="3cqZAo" to="28m1:~ZoneOffset.UTC" resolve="UTC" />
                      <ref role="1PxDUh" to="28m1:~ZoneOffset" resolve="ZoneOffset" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs3" id="3juagqJyiJI" role="3uHU7B">
                  <node concept="3cpWs3" id="3juagqJ$xpy" role="3uHU7B">
                    <node concept="3cpWs3" id="3juagqJye_E" role="3uHU7B">
                      <node concept="37vLTw" id="3juagqJydDb" role="3uHU7B">
                        <ref role="3cqZAo" node="3juagqJydeO" resolve="sensorID" />
                      </node>
                      <node concept="Xl_RD" id="3juagqJye_Y" role="3uHU7w">
                        <property role="Xl_RC" value=" value=" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="36n0RtVzV92" role="3uHU7w">
                      <ref role="3cqZAo" node="36n0RtVzwMG" resolve="lastReading" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3juagqJyjpN" role="3uHU7w">
                    <property role="Xl_RC" value=" " />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5dO5_UbgkRO" role="3cqZAp">
          <node concept="3cpWsn" id="5dO5_UbgkRP" role="3cpWs9">
            <property role="TrG5h" value="point" />
            <node concept="3uibUv" id="5dO5_UbgkRQ" role="1tU5fm">
              <ref role="3uigEE" to="wthj:~Point" resolve="Point" />
            </node>
            <node concept="2OqwBi" id="5dO5_UbfAs4" role="33vP2m">
              <node concept="2OqwBi" id="5dO5_Ubfsg1" role="2Oq$k0">
                <node concept="2OqwBi" id="5dO5_Ubfmx7" role="2Oq$k0">
                  <node concept="2YIFZM" id="5dO5_UbfluI" role="2Oq$k0">
                    <ref role="1Pybhc" to="wthj:~Point" resolve="Point" />
                    <ref role="37wK5l" to="wthj:~Point.measurement(java.lang.String):org.influxdb.dto.Point$Builder" resolve="measurement" />
                    <node concept="37vLTw" id="5dO5_UbgCLI" role="37wK5m">
                      <ref role="3cqZAo" node="3juagqJydeO" resolve="sensorID" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5dO5_UbfnHR" role="2OqNvi">
                    <ref role="37wK5l" to="wthj:~Point$Builder.time(long,java.util.concurrent.TimeUnit):org.influxdb.dto.Point$Builder" resolve="time" />
                    <node concept="2OqwBi" id="5dO5_UbfoNM" role="37wK5m">
                      <node concept="37vLTw" id="5dO5_UbgD54" role="2Oq$k0">
                        <ref role="3cqZAo" node="36n0RtVzhS9" resolve="currentTime" />
                      </node>
                      <node concept="liA8E" id="5dO5_Ubfq91" role="2OqNvi">
                        <ref role="37wK5l" to="7fo8:~ChronoLocalDateTime.toEpochSecond(java.time.ZoneOffset):long" resolve="toEpochSecond" />
                        <node concept="10M0yZ" id="5dO5_UbfryU" role="37wK5m">
                          <ref role="3cqZAo" to="28m1:~ZoneOffset.UTC" resolve="UTC" />
                          <ref role="1PxDUh" to="28m1:~ZoneOffset" resolve="ZoneOffset" />
                        </node>
                      </node>
                    </node>
                    <node concept="Rm8GO" id="5dO5_Ubf_Fz" role="37wK5m">
                      <ref role="1Px2BO" to="5zyv:~TimeUnit" resolve="TimeUnit" />
                      <ref role="Rm8GQ" to="5zyv:~TimeUnit.SECONDS" resolve="SECONDS" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5dO5_UbftMd" role="2OqNvi">
                  <ref role="37wK5l" to="wthj:~Point$Builder.addField(java.lang.String,long):org.influxdb.dto.Point$Builder" resolve="addField" />
                  <node concept="Xl_RD" id="5dO5_Ubfv_0" role="37wK5m">
                    <property role="Xl_RC" value="value" />
                  </node>
                  <node concept="37vLTw" id="5dO5_UbgFBw" role="37wK5m">
                    <ref role="3cqZAo" node="36n0RtVzwMG" resolve="lastReading" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5dO5_UbfDIE" role="2OqNvi">
                <ref role="37wK5l" to="wthj:~Point$Builder.build():org.influxdb.dto.Point" resolve="build" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5dO5_UbgGqD" role="3cqZAp">
          <node concept="2OqwBi" id="5dO5_UbgH8b" role="3clFbG">
            <node concept="37vLTw" id="5dO5_UbgGqB" role="2Oq$k0">
              <ref role="3cqZAo" node="5dO5_UbgyWu" resolve="batchPoint" />
            </node>
            <node concept="liA8E" id="5dO5_UbgHLl" role="2OqNvi">
              <ref role="37wK5l" to="wthj:~BatchPoints.point(org.influxdb.dto.Point):org.influxdb.dto.BatchPoints" resolve="point" />
              <node concept="37vLTw" id="5dO5_UbgHMt" role="37wK5m">
                <ref role="3cqZAo" node="5dO5_UbgkRP" resolve="point" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="36n0RtV_rUa" role="3cqZAp" />
        <node concept="3SKdUt" id="36n0RtV_sXz" role="3cqZAp">
          <node concept="3SKdUq" id="36n0RtV_sX_" role="3SKWNk">
            <property role="3SKdUp" value="update time control" />
          </node>
        </node>
        <node concept="3clFbF" id="36n0RtVztl4" role="3cqZAp">
          <node concept="37vLTI" id="36n0RtVzuXW" role="3clFbG">
            <node concept="2OqwBi" id="36n0RtVzvtB" role="37vLTx">
              <node concept="37vLTw" id="36n0RtVzvcU" role="2Oq$k0">
                <ref role="3cqZAo" node="36n0RtVzhS9" resolve="currentTime" />
              </node>
              <node concept="liA8E" id="36n0RtVzvNA" role="2OqNvi">
                <ref role="37wK5l" to="28m1:~LocalDateTime.plusSeconds(long):java.time.LocalDateTime" resolve="plusSeconds" />
                <node concept="2OqwBi" id="36n0RtVzw0g" role="37wK5m">
                  <node concept="37vLTw" id="36n0RtVzvS9" role="2Oq$k0">
                    <ref role="3cqZAo" node="3juagqJyddW" resolve="dataSource" />
                  </node>
                  <node concept="liA8E" id="36n0RtVzwgb" role="2OqNvi">
                    <ref role="37wK5l" node="1Vo$Sn9O6zK" resolve="getSamplingFrequency" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="36n0RtVztl2" role="37vLTJ">
              <ref role="3cqZAo" node="36n0RtVzhS9" resolve="currentTime" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="36n0RtVzIwf" role="3cqZAp">
          <node concept="37vLTI" id="36n0RtVzKfS" role="3clFbG">
            <node concept="2OqwBi" id="36n0RtVzK_7" role="37vLTx">
              <node concept="37vLTw" id="36n0RtVzKux" role="2Oq$k0">
                <ref role="3cqZAo" node="36n0RtVz$9O" resolve="timeToRefresh" />
              </node>
              <node concept="liA8E" id="36n0RtVzKSp" role="2OqNvi">
                <ref role="37wK5l" to="28m1:~Duration.minusSeconds(long):java.time.Duration" resolve="minusSeconds" />
                <node concept="2OqwBi" id="36n0RtVzL2n" role="37wK5m">
                  <node concept="37vLTw" id="36n0RtVzKW9" role="2Oq$k0">
                    <ref role="3cqZAo" node="3juagqJyddW" resolve="dataSource" />
                  </node>
                  <node concept="liA8E" id="36n0RtVzLh4" role="2OqNvi">
                    <ref role="37wK5l" node="1Vo$Sn9O6zK" resolve="getSamplingFrequency" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="36n0RtVzJB6" role="37vLTJ">
              <ref role="3cqZAo" node="36n0RtVz$9O" resolve="timeToRefresh" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="36n0RtVzLZ2" role="3cqZAp" />
        <node concept="3cpWs6" id="36n0RtVzjxp" role="3cqZAp">
          <node concept="37vLTw" id="36n0RtVztcg" role="3cqZAk">
            <ref role="3cqZAo" node="36n0RtVzhS9" resolve="currentTime" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3juagqJydqZ" role="1B3o_S" />
      <node concept="3uibUv" id="36n0RtVzt07" role="3clF45">
        <ref role="3uigEE" to="28m1:~LocalDateTime" resolve="LocalDateTime" />
      </node>
      <node concept="37vLTG" id="5dO5_UbgyWu" role="3clF46">
        <property role="TrG5h" value="batchPoint" />
        <node concept="3uibUv" id="5dO5_UbgyWt" role="1tU5fm">
          <ref role="3uigEE" to="wthj:~BatchPoints" resolve="BatchPoints" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="36n0RtVzCsA" role="jymVt" />
    <node concept="3clFb_" id="36n0RtVzD3o" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="computeNextRefresh" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="36n0RtVzD3r" role="3clF47">
        <node concept="3cpWs6" id="36n0RtVzEjk" role="3cqZAp">
          <node concept="2YIFZM" id="36n0RtVzE_B" role="3cqZAk">
            <ref role="37wK5l" to="28m1:~Duration.between(java.time.temporal.Temporal,java.time.temporal.Temporal):java.time.Duration" resolve="between" />
            <ref role="1Pybhc" to="28m1:~Duration" resolve="Duration" />
            <node concept="37vLTw" id="36n0RtV_n1X" role="37wK5m">
              <ref role="3cqZAo" node="36n0RtVzhS9" resolve="currentTime" />
            </node>
            <node concept="2OqwBi" id="36n0RtVzFhW" role="37wK5m">
              <node concept="37vLTw" id="36n0RtVzERC" role="2Oq$k0">
                <ref role="3cqZAo" node="36n0RtVzhS9" resolve="currentTime" />
              </node>
              <node concept="liA8E" id="36n0RtVzFZ7" role="2OqNvi">
                <ref role="37wK5l" to="28m1:~LocalDateTime.plusSeconds(long):java.time.LocalDateTime" resolve="plusSeconds" />
                <node concept="2OqwBi" id="36n0RtVzGG0" role="37wK5m">
                  <node concept="37vLTw" id="36n0RtVzGkb" role="2Oq$k0">
                    <ref role="3cqZAo" node="3juagqJyddW" resolve="dataSource" />
                  </node>
                  <node concept="liA8E" id="36n0RtVzH79" role="2OqNvi">
                    <ref role="37wK5l" node="1Vo$Sn9O6zQ" resolve="getUpdatePeriod" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="36n0RtVzCKE" role="1B3o_S" />
      <node concept="3uibUv" id="36n0RtVzDmg" role="3clF45">
        <ref role="3uigEE" to="28m1:~Duration" resolve="Duration" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3K9a83awgxl" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7rYs2gB7g7k">
    <property role="TrG5h" value="MarkovLaw" />
    <node concept="2tJIrI" id="7rYs2gB8ar0" role="jymVt" />
    <node concept="3Tm1VV" id="7rYs2gB7g7l" role="1B3o_S" />
    <node concept="3clFb_" id="7rYs2gB7kFm" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getNext" />
      <node concept="3Tm1VV" id="7rYs2gB7kFo" role="1B3o_S" />
      <node concept="10Oyi0" id="7rYs2gB7kFp" role="3clF45" />
      <node concept="3clFbS" id="7rYs2gB7kFq" role="3clF47">
        <node concept="3cpWs6" id="7rYs2gB7kLW" role="3cqZAp">
          <node concept="3cmrfG" id="7rYs2gB7kMs" role="3cqZAk">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7rYs2gB7kFr" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3uibUv" id="7rYs2gBaH4a" role="1zkMxy">
      <ref role="3uigEE" node="7rYs2gBaBv4" resolve="IDataSource" />
    </node>
  </node>
  <node concept="312cEu" id="7rYs2gBaBv4">
    <property role="1sVAO0" value="true" />
    <property role="TrG5h" value="IDataSource" />
    <node concept="312cEg" id="7rYs2gBaBxJ" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="lawName" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tmbuc" id="7rYs2gBaFE5" role="1B3o_S" />
      <node concept="17QB3L" id="7rYs2gBaBxD" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1Vo$Sn9NYN9" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="updatePeriod" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tmbuc" id="7rYs2gBaFEe" role="1B3o_S" />
      <node concept="10Oyi0" id="1Vo$Sn9NYN2" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1Vo$Sn9NYM9" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="samplingFrequency" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tmbuc" id="7rYs2gBaFEn" role="1B3o_S" />
      <node concept="10Oyi0" id="1Vo$Sn9NYM2" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="3juagqJxR9G" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="resetPeriod" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tmbuc" id="7rYs2gBaGzN" role="1B3o_S" />
      <node concept="10Oyi0" id="3juagqJxR9B" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="7rYs2gBaBSG" role="jymVt" />
    <node concept="3clFb_" id="7rYs2gBaBww" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getNext" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7rYs2gBaBwz" role="3clF47" />
      <node concept="3Tm1VV" id="7rYs2gBaBwf" role="1B3o_S" />
      <node concept="10Oyi0" id="7rYs2gBaBwq" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7rYs2gBaMBq" role="jymVt" />
    <node concept="3clFb_" id="1Vo$Sn9O6zK" role="jymVt">
      <property role="TrG5h" value="getSamplingFrequency" />
      <node concept="10Oyi0" id="1Vo$Sn9O6zL" role="3clF45" />
      <node concept="3Tm1VV" id="1Vo$Sn9O6zM" role="1B3o_S" />
      <node concept="3clFbS" id="1Vo$Sn9O6zN" role="3clF47">
        <node concept="3cpWs6" id="3juagqJy7Z4" role="3cqZAp">
          <node concept="37vLTw" id="1Vo$Sn9O6zJ" role="3cqZAk">
            <ref role="3cqZAo" node="1Vo$Sn9NYM9" resolve="samplingFrequency" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1Vo$Sn9O6Ho" role="jymVt" />
    <node concept="3clFb_" id="1Vo$Sn9O6zQ" role="jymVt">
      <property role="TrG5h" value="getUpdatePeriod" />
      <node concept="10Oyi0" id="1Vo$Sn9O6zR" role="3clF45" />
      <node concept="3Tm1VV" id="1Vo$Sn9O6zS" role="1B3o_S" />
      <node concept="3clFbS" id="1Vo$Sn9O6zT" role="3clF47">
        <node concept="3cpWs6" id="3juagqJya4h" role="3cqZAp">
          <node concept="37vLTw" id="1Vo$Sn9O6zP" role="3cqZAk">
            <ref role="3cqZAo" node="1Vo$Sn9NYN9" resolve="updatePeriod" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3juagqJxSpf" role="jymVt" />
    <node concept="3clFb_" id="3juagqJxSEb" role="jymVt">
      <property role="TrG5h" value="getResetPeriod" />
      <node concept="10Oyi0" id="3juagqJxSEc" role="3clF45" />
      <node concept="3Tm1VV" id="3juagqJxSEd" role="1B3o_S" />
      <node concept="3clFbS" id="3juagqJxSEe" role="3clF47">
        <node concept="3cpWs6" id="3juagqJybvD" role="3cqZAp">
          <node concept="37vLTw" id="3juagqJxSEa" role="3cqZAk">
            <ref role="3cqZAo" node="3juagqJxR9G" resolve="resetPeriod" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7rYs2gBaMBI" role="jymVt" />
    <node concept="3Tm1VV" id="7rYs2gBaBv5" role="1B3o_S" />
  </node>
</model>

