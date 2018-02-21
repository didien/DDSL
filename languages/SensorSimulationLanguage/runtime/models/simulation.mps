<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2ebb615b-7d7d-46a9-af25-8b8353fe1098(SensorSimulationLanguage.runtime.simulation)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="bc16fd15-bfa2-47e7-b9c2-9f80e5b399e0" name="SensorSimulationLanguage" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <use id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8" version="0" />
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
    <import index="t6h5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.reflect(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="xlxw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.math(JDK/)" />
    <import index="ni5j" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.regex(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1153952380246" name="jetbrains.mps.baseLanguage.structure.TryStatement" flags="nn" index="2GUZhq">
        <child id="1153952416686" name="body" index="2GV8ay" />
        <child id="1153952429843" name="finallyBody" index="2GVbov" />
        <child id="1164903700860" name="catchClause" index="TEXxN" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
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
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
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
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
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
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="9042586985346099698" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachStatement" flags="nn" index="1_o_46">
        <child id="9042586985346099734" name="forEach" index="1_o_by" />
      </concept>
      <concept id="9042586985346099733" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachPair" flags="ng" index="1_o_bx">
        <child id="9042586985346099778" name="variable" index="1_o_aQ" />
        <child id="9042586985346099735" name="input" index="1_o_bz" />
      </concept>
      <concept id="9042586985346099736" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachVariable" flags="ng" index="1_o_bG" />
      <concept id="8293956702609956630" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachVariableReference" flags="nn" index="3M$PaV">
        <reference id="8293956702609966325" name="variable" index="3M$S_o" />
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
        <node concept="3cpWs6" id="6ZqfKADUfGL" role="3cqZAp">
          <node concept="2YIFZM" id="6ZqfKADUbcu" role="3cqZAk">
            <ref role="37wK5l" to="wyt6:~Integer.toString(int):java.lang.String" resolve="toString" />
            <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
            <node concept="2OqwBi" id="6ZqfKADUcuu" role="37wK5m">
              <node concept="2YIFZM" id="6ZqfKADUbOp" role="2Oq$k0">
                <ref role="37wK5l" to="5zyv:~ThreadLocalRandom.current():java.util.concurrent.ThreadLocalRandom" resolve="current" />
                <ref role="1Pybhc" to="5zyv:~ThreadLocalRandom" resolve="ThreadLocalRandom" />
              </node>
              <node concept="liA8E" id="6ZqfKADUcND" role="2OqNvi">
                <ref role="37wK5l" to="5zyv:~ThreadLocalRandom.nextInt(int,int):int" resolve="nextInt" />
                <node concept="37vLTw" id="6ZqfKADUdKB" role="37wK5m">
                  <ref role="3cqZAo" node="1Vo$Sn9NYK$" resolve="min" />
                </node>
                <node concept="3cpWs3" id="6ZqfKADUeVT" role="37wK5m">
                  <node concept="3cmrfG" id="6ZqfKADUeW6" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="6ZqfKADUesk" role="3uHU7B">
                    <ref role="3cqZAo" node="1Vo$Sn9NYLi" resolve="max" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1Vo$Sn9O0WH" role="1B3o_S" />
      <node concept="17QB3L" id="6ZqfKADU1zu" role="3clF45" />
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
      <node concept="17QB3L" id="6ZqfKADUh4d" role="1tU5fm" />
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
                  <ref role="37wK5l" to="wthj:~Point$Builder.addField(java.lang.String,java.lang.String):org.influxdb.dto.Point$Builder" resolve="addField" />
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
        <node concept="3clFbF" id="6ZqfKAE2foB" role="3cqZAp">
          <node concept="2OqwBi" id="6ZqfKAE2fo$" role="3clFbG">
            <node concept="10M0yZ" id="6ZqfKAE2fo_" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="6ZqfKAE2foA" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="6ZqfKAE2oUi" role="37wK5m">
                <node concept="2OqwBi" id="6ZqfKAE2qIX" role="3uHU7w">
                  <node concept="37vLTw" id="6ZqfKAE2qfI" role="2Oq$k0">
                    <ref role="3cqZAo" node="36n0RtVzhS9" resolve="currentTime" />
                  </node>
                  <node concept="liA8E" id="6ZqfKAE2u1a" role="2OqNvi">
                    <ref role="37wK5l" to="28m1:~LocalDateTime.getSecond():int" resolve="getSecond" />
                  </node>
                </node>
                <node concept="3cpWs3" id="6ZqfKAE2o5m" role="3uHU7B">
                  <node concept="2OqwBi" id="6ZqfKAE2msh" role="3uHU7B">
                    <node concept="37vLTw" id="6ZqfKAE2mc2" role="2Oq$k0">
                      <ref role="3cqZAo" node="36n0RtVzhS9" resolve="currentTime" />
                    </node>
                    <node concept="liA8E" id="6ZqfKAE2mO5" role="2OqNvi">
                      <ref role="37wK5l" to="28m1:~LocalDateTime.getMinute():int" resolve="getMinute" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="6ZqfKAE2ol5" role="3uHU7w">
                    <property role="Xl_RC" value=":" />
                  </node>
                </node>
              </node>
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
    <node concept="312cEg" id="6ZqfKADVd9_" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="states" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="6ZqfKADUoln" role="1B3o_S" />
      <node concept="3uibUv" id="6ZqfKADVd8l" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6ZqfKADVd9q" role="11_B2D">
          <ref role="3uigEE" node="6ZqfKADUomG" resolve="MarkovState" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6ZqfKAE1dMl" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="currentState" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="6ZqfKAE1dlT" role="1tU5fm">
        <ref role="3uigEE" node="6ZqfKADUomG" resolve="MarkovState" />
      </node>
      <node concept="3Tm6S6" id="6ZqfKAE1eeM" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="6ZqfKADW9gu" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="name" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="6ZqfKADW8Qs" role="1B3o_S" />
      <node concept="17QB3L" id="6ZqfKADW8R$" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="6ZqfKAE2CWb" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="updatePeriod" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tmbuc" id="6ZqfKAE2CWc" role="1B3o_S" />
      <node concept="10Oyi0" id="6ZqfKAE2CWd" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="6ZqfKAE2CWe" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="samplingFrequency" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tmbuc" id="6ZqfKAE2CWf" role="1B3o_S" />
      <node concept="10Oyi0" id="6ZqfKAE2CWg" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="6ZqfKAE2CWh" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="resetPeriod" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tmbuc" id="6ZqfKAE2CWi" role="1B3o_S" />
      <node concept="10Oyi0" id="6ZqfKAE2CWj" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="6ZqfKAE2Bf2" role="jymVt" />
    <node concept="2tJIrI" id="6ZqfKADVtIE" role="jymVt" />
    <node concept="3clFbW" id="6ZqfKADVwzo" role="jymVt">
      <node concept="3cqZAl" id="6ZqfKADVwzq" role="3clF45" />
      <node concept="3Tm1VV" id="6ZqfKADVwzr" role="1B3o_S" />
      <node concept="3clFbS" id="6ZqfKADVwzs" role="3clF47">
        <node concept="3clFbF" id="6ZqfKADVwOd" role="3cqZAp">
          <node concept="37vLTI" id="6ZqfKADVxcS" role="3clFbG">
            <node concept="2ShNRf" id="6ZqfKADVxks" role="37vLTx">
              <node concept="1pGfFk" id="6ZqfKADVxB0" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="6ZqfKADVy2F" role="1pMfVU">
                  <ref role="3uigEE" node="6ZqfKADUomG" resolve="MarkovState" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6ZqfKADVwTu" role="37vLTJ">
              <ref role="3cqZAo" node="6ZqfKADVd9_" resolve="states" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ZqfKAE2Fs_" role="3cqZAp">
          <node concept="37vLTI" id="6ZqfKAE2GaU" role="3clFbG">
            <node concept="37vLTw" id="6ZqfKAE2GoK" role="37vLTx">
              <ref role="3cqZAo" node="6ZqfKAE2EyJ" resolve="updatePeriod" />
            </node>
            <node concept="2OqwBi" id="6ZqfKAE2FEK" role="37vLTJ">
              <node concept="Xjq3P" id="6ZqfKAE2Fsz" role="2Oq$k0" />
              <node concept="2OwXpG" id="6ZqfKAE2FLM" role="2OqNvi">
                <ref role="2Oxat5" node="6ZqfKAE2CWb" resolve="updatePeriod" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ZqfKAE2GH1" role="3cqZAp">
          <node concept="37vLTI" id="6ZqfKAE2Ime" role="3clFbG">
            <node concept="37vLTw" id="6ZqfKAE2I$4" role="37vLTx">
              <ref role="3cqZAo" node="6ZqfKAE2ELG" resolve="samplingFrequency" />
            </node>
            <node concept="2OqwBi" id="6ZqfKAE2GZ1" role="37vLTJ">
              <node concept="Xjq3P" id="6ZqfKAE2GGZ" role="2Oq$k0" />
              <node concept="2OwXpG" id="6ZqfKAE2HOJ" role="2OqNvi">
                <ref role="2Oxat5" node="6ZqfKAE2CWe" resolve="samplingFrequency" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ZqfKAE2ISI" role="3cqZAp">
          <node concept="37vLTI" id="6ZqfKAE2JFn" role="3clFbG">
            <node concept="37vLTw" id="6ZqfKAE2JTd" role="37vLTx">
              <ref role="3cqZAo" node="6ZqfKAE2EZm" resolve="resetPeriod" />
            </node>
            <node concept="2OqwBi" id="6ZqfKAE2Jb1" role="37vLTJ">
              <node concept="Xjq3P" id="6ZqfKAE2ISG" role="2Oq$k0" />
              <node concept="2OwXpG" id="6ZqfKAE2Jif" role="2OqNvi">
                <ref role="2Oxat5" node="6ZqfKAE2CWh" resolve="resetPeriod" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ZqfKADW9Tu" role="3cqZAp">
          <node concept="37vLTI" id="6ZqfKADWazB" role="3clFbG">
            <node concept="37vLTw" id="6ZqfKADWa$Y" role="37vLTx">
              <ref role="3cqZAo" node="6ZqfKADW9yh" resolve="name" />
            </node>
            <node concept="2OqwBi" id="6ZqfKADWa6A" role="37vLTJ">
              <node concept="Xjq3P" id="6ZqfKADW9Ts" role="2Oq$k0" />
              <node concept="2OwXpG" id="6ZqfKADWaas" role="2OqNvi">
                <ref role="2Oxat5" node="6ZqfKADW9gu" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6ZqfKADW9yh" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="6ZqfKADW9yg" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6ZqfKAE2EyJ" role="3clF46">
        <property role="TrG5h" value="updatePeriod" />
        <node concept="10Oyi0" id="6ZqfKAE2EJM" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6ZqfKAE2ELG" role="3clF46">
        <property role="TrG5h" value="samplingFrequency" />
        <node concept="10Oyi0" id="6ZqfKAE2EYL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6ZqfKAE2EZm" role="3clF46">
        <property role="TrG5h" value="resetPeriod" />
        <node concept="10Oyi0" id="6ZqfKAE2Fcv" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6ZqfKAE2DHX" role="jymVt" />
    <node concept="3Tm1VV" id="7rYs2gB7g7l" role="1B3o_S" />
    <node concept="3clFb_" id="7rYs2gB7kFm" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getNext" />
      <node concept="3Tm1VV" id="7rYs2gB7kFo" role="1B3o_S" />
      <node concept="3clFbS" id="7rYs2gB7kFq" role="3clF47">
        <node concept="3cpWs8" id="6ZqfKAE0RVp" role="3cqZAp">
          <node concept="3cpWsn" id="6ZqfKAE0RVq" role="3cpWs9">
            <property role="TrG5h" value="sum" />
            <node concept="3uibUv" id="6ZqfKAE0RVr" role="1tU5fm">
              <ref role="3uigEE" to="xlxw:~BigDecimal" resolve="BigDecimal" />
            </node>
            <node concept="10M0yZ" id="6ZqfKAE0Snx" role="33vP2m">
              <ref role="3cqZAo" to="xlxw:~BigDecimal.ZERO" resolve="ZERO" />
              <ref role="1PxDUh" to="xlxw:~BigDecimal" resolve="BigDecimal" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ZqfKAE12sg" role="3cqZAp">
          <node concept="3cpWsn" id="6ZqfKAE12sh" role="3cpWs9">
            <property role="TrG5h" value="random" />
            <node concept="3uibUv" id="6ZqfKAE12si" role="1tU5fm">
              <ref role="3uigEE" to="xlxw:~BigDecimal" resolve="BigDecimal" />
            </node>
            <node concept="2ShNRf" id="6ZqfKAE13KA" role="33vP2m">
              <node concept="1pGfFk" id="6ZqfKAE143y" role="2ShVmc">
                <ref role="37wK5l" to="xlxw:~BigDecimal.&lt;init&gt;(double)" resolve="BigDecimal" />
                <node concept="2OqwBi" id="6ZqfKAE14kt" role="37wK5m">
                  <node concept="2YIFZM" id="6ZqfKAE145U" role="2Oq$k0">
                    <ref role="37wK5l" to="5zyv:~ThreadLocalRandom.current():java.util.concurrent.ThreadLocalRandom" resolve="current" />
                    <ref role="1Pybhc" to="5zyv:~ThreadLocalRandom" resolve="ThreadLocalRandom" />
                  </node>
                  <node concept="liA8E" id="6ZqfKAE14tw" role="2OqNvi">
                    <ref role="37wK5l" to="5zyv:~ThreadLocalRandom.nextDouble():double" resolve="nextDouble" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="6ZqfKAE1rpI" role="3cqZAp">
          <node concept="3clFbS" id="6ZqfKAE1rpK" role="2LFqv$">
            <node concept="3clFbF" id="6ZqfKAE1wmO" role="3cqZAp">
              <node concept="37vLTI" id="6ZqfKAE1wAS" role="3clFbG">
                <node concept="2OqwBi" id="6ZqfKAE1wGW" role="37vLTx">
                  <node concept="37vLTw" id="6ZqfKAE1wBx" role="2Oq$k0">
                    <ref role="3cqZAo" node="6ZqfKAE0RVq" resolve="sum" />
                  </node>
                  <node concept="liA8E" id="6ZqfKAE1wYv" role="2OqNvi">
                    <ref role="37wK5l" to="xlxw:~BigDecimal.add(java.math.BigDecimal):java.math.BigDecimal" resolve="add" />
                    <node concept="2OqwBi" id="6ZqfKAE1xtu" role="37wK5m">
                      <node concept="2OqwBi" id="6ZqfKAE1x4H" role="2Oq$k0">
                        <node concept="37vLTw" id="6ZqfKAE1wZY" role="2Oq$k0">
                          <ref role="3cqZAo" node="6ZqfKAE1dMl" resolve="currentState" />
                        </node>
                        <node concept="liA8E" id="6ZqfKAE1xgz" role="2OqNvi">
                          <ref role="37wK5l" node="6ZqfKADUovw" resolve="getTransitions" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6ZqfKAE1y9z" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                        <node concept="37vLTw" id="6ZqfKAE1yiz" role="37wK5m">
                          <ref role="3cqZAo" node="6ZqfKAE1rpL" resolve="i" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6ZqfKAE1wmM" role="37vLTJ">
                  <ref role="3cqZAo" node="6ZqfKAE0RVq" resolve="sum" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6ZqfKAE1ywH" role="3cqZAp">
              <node concept="3clFbS" id="6ZqfKAE1ywJ" role="3clFbx">
                <node concept="3clFbF" id="6ZqfKAE1$u1" role="3cqZAp">
                  <node concept="37vLTI" id="6ZqfKAE1$$t" role="3clFbG">
                    <node concept="37vLTw" id="6ZqfKAE1$u0" role="37vLTJ">
                      <ref role="3cqZAo" node="6ZqfKAE1dMl" resolve="currentState" />
                    </node>
                    <node concept="2OqwBi" id="6ZqfKAE1_aI" role="37vLTx">
                      <node concept="37vLTw" id="6ZqfKAE1$T5" role="2Oq$k0">
                        <ref role="3cqZAo" node="6ZqfKADVd9_" resolve="states" />
                      </node>
                      <node concept="liA8E" id="6ZqfKAE1_M0" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                        <node concept="37vLTw" id="6ZqfKAE1A8S" role="37wK5m">
                          <ref role="3cqZAo" node="6ZqfKAE1rpL" resolve="i" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6ZqfKAE1Jqs" role="3cqZAp">
                  <node concept="2OqwBi" id="6ZqfKAE1Jqp" role="3clFbG">
                    <node concept="10M0yZ" id="6ZqfKAE1Jqq" role="2Oq$k0">
                      <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                      <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                    </node>
                    <node concept="liA8E" id="6ZqfKAE1Jqr" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                      <node concept="3cpWs3" id="6ZqfKAE1N$f" role="37wK5m">
                        <node concept="2OqwBi" id="6ZqfKAE1ODC" role="3uHU7w">
                          <node concept="37vLTw" id="6ZqfKAE1OoM" role="2Oq$k0">
                            <ref role="3cqZAo" node="6ZqfKAE1dMl" resolve="currentState" />
                          </node>
                          <node concept="liA8E" id="6ZqfKAE1OYy" role="2OqNvi">
                            <ref role="37wK5l" node="6ZqfKADWoso" resolve="getName" />
                          </node>
                        </node>
                        <node concept="3cpWs3" id="6ZqfKAE1Mf3" role="3uHU7B">
                          <node concept="3cpWs3" id="6ZqfKAE1Lki" role="3uHU7B">
                            <node concept="3cpWs3" id="6ZqfKAE1Kun" role="3uHU7B">
                              <node concept="37vLTw" id="6ZqfKAE1K6K" role="3uHU7B">
                                <ref role="3cqZAo" node="6ZqfKAE12sh" resolve="random" />
                              </node>
                              <node concept="Xl_RD" id="6ZqfKAE1KvO" role="3uHU7w">
                                <property role="Xl_RC" value=" &lt;= " />
                              </node>
                            </node>
                            <node concept="37vLTw" id="6ZqfKAE1LRu" role="3uHU7w">
                              <ref role="3cqZAo" node="6ZqfKAE0RVq" resolve="sum" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="6ZqfKAE1Mfg" role="3uHU7w">
                            <property role="Xl_RC" value=" switch to " />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6ZqfKAE1ADd" role="3cqZAp">
                  <node concept="2OqwBi" id="6ZqfKAE1BYZ" role="3cqZAk">
                    <node concept="37vLTw" id="6ZqfKAE1Bmx" role="2Oq$k0">
                      <ref role="3cqZAo" node="6ZqfKAE1dMl" resolve="currentState" />
                    </node>
                    <node concept="liA8E" id="6ZqfKAE1CD4" role="2OqNvi">
                      <ref role="37wK5l" node="6ZqfKADWoso" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2dkUwp" id="6ZqfKAE1$gM" role="3clFbw">
                <node concept="3cmrfG" id="6ZqfKAE1$kT" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="6ZqfKAE1yH3" role="3uHU7B">
                  <node concept="37vLTw" id="6ZqfKAE1yzK" role="2Oq$k0">
                    <ref role="3cqZAo" node="6ZqfKAE12sh" resolve="random" />
                  </node>
                  <node concept="liA8E" id="6ZqfKAE1yU_" role="2OqNvi">
                    <ref role="37wK5l" to="xlxw:~BigDecimal.compareTo(java.math.BigDecimal):int" resolve="compareTo" />
                    <node concept="37vLTw" id="6ZqfKAE1z4M" role="37wK5m">
                      <ref role="3cqZAo" node="6ZqfKAE0RVq" resolve="sum" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6ZqfKAE1rpL" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="6ZqfKAE1rQ0" role="1tU5fm" />
            <node concept="3cmrfG" id="6ZqfKAE1rQW" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="6ZqfKAE1sGL" role="1Dwp0S">
            <node concept="2OqwBi" id="6ZqfKAE1uev" role="3uHU7w">
              <node concept="2OqwBi" id="6ZqfKAE1tty" role="2Oq$k0">
                <node concept="37vLTw" id="6ZqfKAE1t9a" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ZqfKAE1dMl" resolve="currentState" />
                </node>
                <node concept="liA8E" id="6ZqfKAE1t$o" role="2OqNvi">
                  <ref role="37wK5l" node="6ZqfKADUovw" resolve="getTransitions" />
                </node>
              </node>
              <node concept="liA8E" id="6ZqfKAE1uP$" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
              </node>
            </node>
            <node concept="37vLTw" id="6ZqfKAE1rRr" role="3uHU7B">
              <ref role="3cqZAo" node="6ZqfKAE1rpL" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="6ZqfKAE1vNW" role="1Dwrff">
            <node concept="37vLTw" id="6ZqfKAE1vNY" role="2$L3a6">
              <ref role="3cqZAo" node="6ZqfKAE1rpL" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7rYs2gB7kLW" role="3cqZAp">
          <node concept="2OqwBi" id="6ZqfKADWmFg" role="3cqZAk">
            <node concept="2OqwBi" id="6ZqfKADWk$G" role="2Oq$k0">
              <node concept="37vLTw" id="6ZqfKADWjXg" role="2Oq$k0">
                <ref role="3cqZAo" node="6ZqfKADVd9_" resolve="states" />
              </node>
              <node concept="liA8E" id="6ZqfKADWlqr" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                <node concept="3cmrfG" id="6ZqfKADWm23" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6ZqfKADWpNF" role="2OqNvi">
              <ref role="37wK5l" node="6ZqfKADWoso" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7rYs2gB7kFr" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="17QB3L" id="6ZqfKADT6tz" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6ZqfKADVu2m" role="jymVt" />
    <node concept="3clFb_" id="6ZqfKADVulB" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addState" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6ZqfKADVulE" role="3clF47">
        <node concept="3clFbJ" id="6ZqfKAE1eJc" role="3cqZAp">
          <node concept="3clFbS" id="6ZqfKAE1eJe" role="3clFbx">
            <node concept="3clFbF" id="6ZqfKAE1gco" role="3cqZAp">
              <node concept="37vLTI" id="6ZqfKAE1gho" role="3clFbG">
                <node concept="37vLTw" id="6ZqfKAE1gmj" role="37vLTx">
                  <ref role="3cqZAo" node="6ZqfKADVuov" resolve="state" />
                </node>
                <node concept="37vLTw" id="6ZqfKAE1gcm" role="37vLTJ">
                  <ref role="3cqZAo" node="6ZqfKAE1dMl" resolve="currentState" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6ZqfKAE1ffT" role="3clFbw">
            <node concept="37vLTw" id="6ZqfKAE1eQn" role="2Oq$k0">
              <ref role="3cqZAo" node="6ZqfKADVd9_" resolve="states" />
            </node>
            <node concept="liA8E" id="6ZqfKAE1fQ7" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ZqfKADVuqr" role="3cqZAp">
          <node concept="2OqwBi" id="6ZqfKADVuEG" role="3clFbG">
            <node concept="37vLTw" id="6ZqfKADVuqq" role="2Oq$k0">
              <ref role="3cqZAo" node="6ZqfKADVd9_" resolve="states" />
            </node>
            <node concept="liA8E" id="6ZqfKADVvfs" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="6ZqfKADVv_u" role="37wK5m">
                <ref role="3cqZAo" node="6ZqfKADVuov" resolve="state" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6ZqfKADVuke" role="1B3o_S" />
      <node concept="3cqZAl" id="6ZqfKADVune" role="3clF45" />
      <node concept="37vLTG" id="6ZqfKADVuov" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="6ZqfKADVuou" role="1tU5fm">
          <ref role="3uigEE" node="6ZqfKADUomG" resolve="MarkovState" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ZqfKADVydL" role="jymVt" />
    <node concept="3clFb_" id="6ZqfKADVyA0" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="assertCorrectConfiguration" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6ZqfKADVyA3" role="3clF47">
        <node concept="1_o_46" id="6ZqfKADV$c5" role="3cqZAp">
          <node concept="1_o_bx" id="6ZqfKADV$c7" role="1_o_by">
            <node concept="1_o_bG" id="6ZqfKADV$c9" role="1_o_aQ">
              <property role="TrG5h" value="state" />
            </node>
            <node concept="37vLTw" id="6ZqfKADV$k2" role="1_o_bz">
              <ref role="3cqZAo" node="6ZqfKADVd9_" resolve="states" />
            </node>
          </node>
          <node concept="3clFbS" id="6ZqfKADV$cd" role="2LFqv$">
            <node concept="3clFbJ" id="6ZqfKADV$u$" role="3cqZAp">
              <node concept="22lmx$" id="6ZqfKADVCqR" role="3clFbw">
                <node concept="3y3z36" id="6ZqfKADVLNm" role="3uHU7w">
                  <node concept="2OqwBi" id="6ZqfKADVOwr" role="3uHU7w">
                    <node concept="37vLTw" id="6ZqfKADVNUA" role="2Oq$k0">
                      <ref role="3cqZAo" node="6ZqfKADVd9_" resolve="states" />
                    </node>
                    <node concept="liA8E" id="6ZqfKADVPaw" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6ZqfKADVFKp" role="3uHU7B">
                    <node concept="2OqwBi" id="6ZqfKADVE$r" role="2Oq$k0">
                      <node concept="3M$PaV" id="6ZqfKADVEnV" role="2Oq$k0">
                        <ref role="3M$S_o" node="6ZqfKADV$c9" resolve="state" />
                      </node>
                      <node concept="liA8E" id="6ZqfKADVEZL" role="2OqNvi">
                        <ref role="37wK5l" node="6ZqfKADUovw" resolve="getTransitions" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6ZqfKADVHLH" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="6ZqfKADV$v2" role="3uHU7B">
                  <node concept="2OqwBi" id="6ZqfKADV$z9" role="3fr31v">
                    <node concept="3M$PaV" id="6ZqfKADV$vI" role="2Oq$k0">
                      <ref role="3M$S_o" node="6ZqfKADV$c9" resolve="state" />
                    </node>
                    <node concept="liA8E" id="6ZqfKADV$Y8" role="2OqNvi">
                      <ref role="37wK5l" node="6ZqfKADUvXA" resolve="isValid" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6ZqfKADV$uA" role="3clFbx">
                <node concept="YS8fn" id="6ZqfKADVP$z" role="3cqZAp">
                  <node concept="2ShNRf" id="6ZqfKADVP_b" role="YScLw">
                    <node concept="1pGfFk" id="6ZqfKADVPIH" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                      <node concept="3cpWs3" id="6ZqfKAE0vU4" role="37wK5m">
                        <node concept="3cpWs3" id="6ZqfKAE03v0" role="3uHU7B">
                          <node concept="3cpWs3" id="6ZqfKADZZdK" role="3uHU7B">
                            <node concept="3cpWs3" id="6ZqfKAE0u6q" role="3uHU7B">
                              <node concept="3cpWs3" id="6ZqfKADWaTP" role="3uHU7B">
                                <node concept="3cpWs3" id="6ZqfKADW8h8" role="3uHU7B">
                                  <node concept="Xl_RD" id="6ZqfKADW7EN" role="3uHU7B">
                                    <property role="Xl_RC" value="Invalid configuration for markov law " />
                                  </node>
                                  <node concept="37vLTw" id="6ZqfKADWaHa" role="3uHU7w">
                                    <ref role="3cqZAo" node="6ZqfKADW9gu" resolve="name" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="6ZqfKAE0u6w" role="3uHU7w">
                                  <property role="Xl_RC" value=" : \n" />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="6ZqfKAE0u6y" role="3uHU7w">
                                <property role="Xl_RC" value="\t - either state " />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="6ZqfKADZZFP" role="3uHU7w">
                              <node concept="3M$PaV" id="6ZqfKADZZze" role="2Oq$k0">
                                <ref role="3M$S_o" node="6ZqfKADV$c9" resolve="state" />
                              </node>
                              <node concept="liA8E" id="6ZqfKAE00fY" role="2OqNvi">
                                <ref role="37wK5l" node="6ZqfKADWoso" resolve="getName" />
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="6ZqfKAE0vUa" role="3uHU7w">
                            <property role="Xl_RC" value="'s transitions don't sum-up to 1.0\n" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="6ZqfKAE0vUc" role="3uHU7w">
                          <property role="Xl_RC" value="\t - or there is a missmatch between the number of states and the number of transitions" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6ZqfKADW6io" role="1B3o_S" />
      <node concept="3cqZAl" id="6ZqfKADVy_3" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6ZqfKADWUFT" role="jymVt" />
    <node concept="3uibUv" id="7rYs2gBaH4a" role="1zkMxy">
      <ref role="3uigEE" node="7rYs2gBaBv4" resolve="IDataSource" />
    </node>
    <node concept="3clFb_" id="6ZqfKADWV5V" role="jymVt">
      <property role="TrG5h" value="getStates" />
      <node concept="3uibUv" id="6ZqfKADWV5W" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6ZqfKADWV5X" role="11_B2D">
          <ref role="3uigEE" node="6ZqfKADUomG" resolve="MarkovState" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6ZqfKADWV5Y" role="1B3o_S" />
      <node concept="3clFbS" id="6ZqfKADWV5Z" role="3clF47">
        <node concept="3clFbF" id="6ZqfKADWV60" role="3cqZAp">
          <node concept="37vLTw" id="6ZqfKADWV5U" role="3clFbG">
            <ref role="3cqZAo" node="6ZqfKADVd9_" resolve="states" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ZqfKAE2KZo" role="jymVt" />
    <node concept="3clFb_" id="6ZqfKAE2LPQ" role="jymVt">
      <property role="TrG5h" value="getUpdatePeriod" />
      <node concept="10Oyi0" id="6ZqfKAE2LPR" role="3clF45" />
      <node concept="3Tm1VV" id="6ZqfKAE2LPS" role="1B3o_S" />
      <node concept="3clFbS" id="6ZqfKAE2LPT" role="3clF47">
        <node concept="3clFbF" id="6ZqfKAE2LPU" role="3cqZAp">
          <node concept="37vLTw" id="6ZqfKAE2LPP" role="3clFbG">
            <ref role="3cqZAo" node="6ZqfKAE2CWb" resolve="updatePeriod" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6ZqfKAE2LPW" role="jymVt">
      <property role="TrG5h" value="getSamplingFrequency" />
      <node concept="10Oyi0" id="6ZqfKAE2LPX" role="3clF45" />
      <node concept="3Tm1VV" id="6ZqfKAE2LPY" role="1B3o_S" />
      <node concept="3clFbS" id="6ZqfKAE2LPZ" role="3clF47">
        <node concept="3clFbF" id="6ZqfKAE2LQ0" role="3cqZAp">
          <node concept="37vLTw" id="6ZqfKAE2LPV" role="3clFbG">
            <ref role="3cqZAo" node="6ZqfKAE2CWe" resolve="samplingFrequency" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6ZqfKAE2LQ2" role="jymVt">
      <property role="TrG5h" value="getResetPeriod" />
      <node concept="10Oyi0" id="6ZqfKAE2LQ3" role="3clF45" />
      <node concept="3Tm1VV" id="6ZqfKAE2LQ4" role="1B3o_S" />
      <node concept="3clFbS" id="6ZqfKAE2LQ5" role="3clF47">
        <node concept="3clFbF" id="6ZqfKAE2LQ6" role="3cqZAp">
          <node concept="37vLTw" id="6ZqfKAE2LQ1" role="3clFbG">
            <ref role="3cqZAo" node="6ZqfKAE2CWh" resolve="resetPeriod" />
          </node>
        </node>
      </node>
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
    <node concept="2tJIrI" id="6ZqfKADU0b8" role="jymVt" />
    <node concept="2tJIrI" id="6ZqfKADTnCr" role="jymVt" />
    <node concept="2tJIrI" id="6ZqfKADTnHQ" role="jymVt" />
    <node concept="2tJIrI" id="7rYs2gBaBSG" role="jymVt" />
    <node concept="3clFb_" id="7rYs2gBaBww" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getNext" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7rYs2gBaBwz" role="3clF47" />
      <node concept="3Tm1VV" id="7rYs2gBaBwf" role="1B3o_S" />
      <node concept="17QB3L" id="6ZqfKADU0Wk" role="3clF45" />
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
    <node concept="2tJIrI" id="6ZqfKADTu_b" role="jymVt" />
    <node concept="3Tm1VV" id="7rYs2gBaBv5" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6ZqfKADUomG">
    <property role="TrG5h" value="MarkovState" />
    <node concept="312cEg" id="6ZqfKADVp7d" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="name" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="6ZqfKADVoQO" role="1B3o_S" />
      <node concept="17QB3L" id="6ZqfKADVp78" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="6ZqfKADUoqW" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="transitions" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="6ZqfKADUoqc" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6ZqfKADYIbF" role="11_B2D">
          <ref role="3uigEE" to="xlxw:~BigDecimal" resolve="BigDecimal" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6ZqfKADUory" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6ZqfKADUou7" role="jymVt" />
    <node concept="3clFbW" id="6ZqfKADUqIf" role="jymVt">
      <node concept="3cqZAl" id="6ZqfKADUqIg" role="3clF45" />
      <node concept="3Tm1VV" id="6ZqfKADUqIh" role="1B3o_S" />
      <node concept="3clFbS" id="6ZqfKADUqIj" role="3clF47">
        <node concept="3clFbF" id="6ZqfKADUqRA" role="3cqZAp">
          <node concept="37vLTI" id="6ZqfKADUsSH" role="3clFbG">
            <node concept="2ShNRf" id="6ZqfKADUsZ7" role="37vLTx">
              <node concept="1pGfFk" id="6ZqfKADUthW" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="6ZqfKADYINs" role="1pMfVU">
                  <ref role="3uigEE" to="xlxw:~BigDecimal" resolve="BigDecimal" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6ZqfKADUqR_" role="37vLTJ">
              <ref role="3cqZAo" node="6ZqfKADUoqW" resolve="transitions" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ZqfKADWifW" role="3cqZAp">
          <node concept="37vLTI" id="6ZqfKADWiEs" role="3clFbG">
            <node concept="37vLTw" id="6ZqfKADWiFN" role="37vLTx">
              <ref role="3cqZAo" node="6ZqfKADWhSC" resolve="name" />
            </node>
            <node concept="2OqwBi" id="6ZqfKADWisD" role="37vLTJ">
              <node concept="Xjq3P" id="6ZqfKADWifU" role="2Oq$k0" />
              <node concept="2OwXpG" id="6ZqfKADWiy6" role="2OqNvi">
                <ref role="2Oxat5" node="6ZqfKADVp7d" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6ZqfKADWhSC" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="6ZqfKADWhSB" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6ZqfKADUq_p" role="jymVt" />
    <node concept="3clFb_" id="6ZqfKADUoso" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addTransition" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6ZqfKADUosr" role="3clF47">
        <node concept="3clFbF" id="6ZqfKADUoJA" role="3cqZAp">
          <node concept="2OqwBi" id="6ZqfKADUplB" role="3clFbG">
            <node concept="37vLTw" id="6ZqfKADUoJ_" role="2Oq$k0">
              <ref role="3cqZAo" node="6ZqfKADUoqW" resolve="transitions" />
            </node>
            <node concept="liA8E" id="6ZqfKADUpTR" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="6ZqfKADUqg2" role="37wK5m">
                <ref role="3cqZAo" node="6ZqfKADUosO" resolve="prob" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6ZqfKADUos1" role="1B3o_S" />
      <node concept="3cqZAl" id="6ZqfKADYlGF" role="3clF45" />
      <node concept="37vLTG" id="6ZqfKADUosO" role="3clF46">
        <property role="TrG5h" value="prob" />
        <node concept="3uibUv" id="6ZqfKADYJ6G" role="1tU5fm">
          <ref role="3uigEE" to="xlxw:~BigDecimal" resolve="BigDecimal" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ZqfKADUvbj" role="jymVt" />
    <node concept="3clFb_" id="6ZqfKADUvXA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isValid" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6ZqfKADUvXD" role="3clF47">
        <node concept="3cpWs8" id="6ZqfKADXDU4" role="3cqZAp">
          <node concept="3cpWsn" id="6ZqfKADXDU7" role="3cpWs9">
            <property role="TrG5h" value="sum" />
            <node concept="3uibUv" id="6ZqfKADYTwU" role="1tU5fm">
              <ref role="3uigEE" to="xlxw:~BigDecimal" resolve="BigDecimal" />
            </node>
            <node concept="10M0yZ" id="6ZqfKADZCCX" role="33vP2m">
              <ref role="3cqZAo" to="xlxw:~BigDecimal.ZERO" resolve="ZERO" />
              <ref role="1PxDUh" to="xlxw:~BigDecimal" resolve="BigDecimal" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6ZqfKADZDeh" role="3cqZAp">
          <node concept="2GrKxI" id="6ZqfKADZDej" role="2Gsz3X">
            <property role="TrG5h" value="probability" />
          </node>
          <node concept="37vLTw" id="6ZqfKADZFeQ" role="2GsD0m">
            <ref role="3cqZAo" node="6ZqfKADUoqW" resolve="transitions" />
          </node>
          <node concept="3clFbS" id="6ZqfKADZDen" role="2LFqv$">
            <node concept="3clFbF" id="6ZqfKADZFUz" role="3cqZAp">
              <node concept="37vLTI" id="6ZqfKADZG6A" role="3clFbG">
                <node concept="2OqwBi" id="6ZqfKADZGg_" role="37vLTx">
                  <node concept="37vLTw" id="6ZqfKADZGbc" role="2Oq$k0">
                    <ref role="3cqZAo" node="6ZqfKADXDU7" resolve="sum" />
                  </node>
                  <node concept="liA8E" id="6ZqfKADZGy6" role="2OqNvi">
                    <ref role="37wK5l" to="xlxw:~BigDecimal.add(java.math.BigDecimal):java.math.BigDecimal" resolve="add" />
                    <node concept="2GrUjf" id="6ZqfKADZGzC" role="37wK5m">
                      <ref role="2Gs0qQ" node="6ZqfKADZDej" resolve="probability" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6ZqfKADZFUy" role="37vLTJ">
                  <ref role="3cqZAo" node="6ZqfKADXDU7" resolve="sum" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6ZqfKADUwm5" role="3cqZAp">
          <node concept="3clFbC" id="6ZqfKADZ2Rm" role="3cqZAk">
            <node concept="3cmrfG" id="6ZqfKADZ4aE" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="6ZqfKADYWhx" role="3uHU7B">
              <node concept="37vLTw" id="6ZqfKADYVOv" role="2Oq$k0">
                <ref role="3cqZAo" node="6ZqfKADXDU7" resolve="sum" />
              </node>
              <node concept="liA8E" id="6ZqfKADYWMG" role="2OqNvi">
                <ref role="37wK5l" to="xlxw:~BigDecimal.compareTo(java.math.BigDecimal):int" resolve="compareTo" />
                <node concept="10M0yZ" id="6ZqfKADYZ6X" role="37wK5m">
                  <ref role="3cqZAo" to="xlxw:~BigDecimal.ONE" resolve="ONE" />
                  <ref role="1PxDUh" to="xlxw:~BigDecimal" resolve="BigDecimal" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6ZqfKADUvLc" role="1B3o_S" />
      <node concept="10P_77" id="6ZqfKADUwaa" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6ZqfKADVcRn" role="jymVt" />
    <node concept="3Tm1VV" id="6ZqfKADUomH" role="1B3o_S" />
    <node concept="3clFb_" id="6ZqfKADUovw" role="jymVt">
      <property role="TrG5h" value="getTransitions" />
      <node concept="3uibUv" id="6ZqfKADUovx" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6ZqfKADZ4v5" role="11_B2D">
          <ref role="3uigEE" to="xlxw:~BigDecimal" resolve="BigDecimal" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6ZqfKADUovz" role="1B3o_S" />
      <node concept="3clFbS" id="6ZqfKADUov$" role="3clF47">
        <node concept="3clFbF" id="6ZqfKADUov_" role="3cqZAp">
          <node concept="37vLTw" id="6ZqfKADUovv" role="3clFbG">
            <ref role="3cqZAo" node="6ZqfKADUoqW" resolve="transitions" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6ZqfKADUovB" role="jymVt">
      <property role="TrG5h" value="setTransitions" />
      <node concept="3cqZAl" id="6ZqfKADUovC" role="3clF45" />
      <node concept="3Tm1VV" id="6ZqfKADUovD" role="1B3o_S" />
      <node concept="3clFbS" id="6ZqfKADUovE" role="3clF47">
        <node concept="3clFbF" id="6ZqfKADUovF" role="3cqZAp">
          <node concept="37vLTI" id="6ZqfKADUovG" role="3clFbG">
            <node concept="37vLTw" id="6ZqfKADUovH" role="37vLTx">
              <ref role="3cqZAo" node="6ZqfKADUovI" resolve="transitions1" />
            </node>
            <node concept="37vLTw" id="6ZqfKADUovA" role="37vLTJ">
              <ref role="3cqZAo" node="6ZqfKADUoqW" resolve="transitions" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6ZqfKADUovI" role="3clF46">
        <property role="TrG5h" value="transitions1" />
        <node concept="3uibUv" id="6ZqfKADUovJ" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="6ZqfKADZ4_H" role="11_B2D">
            <ref role="3uigEE" to="xlxw:~BigDecimal" resolve="BigDecimal" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ZqfKADWo9g" role="jymVt" />
    <node concept="3clFb_" id="6ZqfKADWoso" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="17QB3L" id="6ZqfKADWosp" role="3clF45" />
      <node concept="3Tm1VV" id="6ZqfKADWosq" role="1B3o_S" />
      <node concept="3clFbS" id="6ZqfKADWosr" role="3clF47">
        <node concept="3clFbF" id="6ZqfKADWoss" role="3cqZAp">
          <node concept="37vLTw" id="6ZqfKADWosn" role="3clFbG">
            <ref role="3cqZAo" node="6ZqfKADVp7d" resolve="name" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5u9gdSXm8K$">
    <property role="TrG5h" value="CSV" />
    <node concept="312cEg" id="5u9gdSXn5wV" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="sensorFilter" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5u9gdSXn5ur" role="1B3o_S" />
      <node concept="10Q1$e" id="5u9gdSXn5vO" role="1tU5fm">
        <node concept="3uibUv" id="5u9gdSXn5vM" role="10Q1$1">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5u9gdSXn7mM" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="nameColumn" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5u9gdSXn5zF" role="1B3o_S" />
      <node concept="10Oyi0" id="5u9gdSXn7lN" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="5u9gdSXn7rV" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="timeColumn" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5u9gdSXn7py" role="1B3o_S" />
      <node concept="10Oyi0" id="5u9gdSXn7qW" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="5u9gdSXn7xd" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="valueColumn" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5u9gdSXn7uL" role="1B3o_S" />
      <node concept="10Oyi0" id="5u9gdSXn7we" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="5u9gdSXnSNE" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="lines" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5u9gdSXnSw4" role="1B3o_S" />
      <node concept="3uibUv" id="5u9gdSXnSMs" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
        <node concept="3uibUv" id="5u9gdSXnSNv" role="11_B2D">
          <ref role="3uigEE" node="5u9gdSXnss$" resolve="CSVLine" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5u9gdSXn7yG" role="jymVt" />
    <node concept="3clFbW" id="5u9gdSXn7B8" role="jymVt">
      <node concept="3cqZAl" id="5u9gdSXn7B9" role="3clF45" />
      <node concept="3clFbS" id="5u9gdSXn7Bb" role="3clF47">
        <node concept="3clFbF" id="5u9gdSXnEMD" role="3cqZAp">
          <node concept="37vLTI" id="5u9gdSXnFog" role="3clFbG">
            <node concept="2OqwBi" id="5u9gdSXnFSb" role="37vLTx">
              <node concept="37vLTw" id="5u9gdSXnFBI" role="2Oq$k0">
                <ref role="3cqZAo" node="5u9gdSXn7Eo" resolve="sensorFilter" />
              </node>
              <node concept="liA8E" id="5u9gdSXnGhQ" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.split(java.lang.String):java.lang.String[]" resolve="split" />
                <node concept="Xl_RD" id="5u9gdSXnGqe" role="37wK5m">
                  <property role="Xl_RC" value="," />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5u9gdSXnERd" role="37vLTJ">
              <node concept="Xjq3P" id="5u9gdSXnEMB" role="2Oq$k0" />
              <node concept="2OwXpG" id="5u9gdSXnF07" role="2OqNvi">
                <ref role="2Oxat5" node="5u9gdSXn5wV" resolve="sensorFilter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5u9gdSXnGTn" role="3cqZAp">
          <node concept="37vLTI" id="5u9gdSXnJhn" role="3clFbG">
            <node concept="37vLTw" id="5u9gdSXnJyL" role="37vLTx">
              <ref role="3cqZAo" node="5u9gdSXn7GJ" resolve="nameColumn" />
            </node>
            <node concept="2OqwBi" id="5u9gdSXnH3I" role="37vLTJ">
              <node concept="Xjq3P" id="5u9gdSXnGTl" role="2Oq$k0" />
              <node concept="2OwXpG" id="5u9gdSXnHcL" role="2OqNvi">
                <ref role="2Oxat5" node="5u9gdSXn7mM" resolve="nameColumn" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5u9gdSXnK0j" role="3cqZAp">
          <node concept="37vLTI" id="5u9gdSXnMlj" role="3clFbG">
            <node concept="37vLTw" id="5u9gdSXnMAH" role="37vLTx">
              <ref role="3cqZAo" node="5u9gdSXn7IT" resolve="timeColumn" />
            </node>
            <node concept="2OqwBi" id="5u9gdSXnKfV" role="37vLTJ">
              <node concept="Xjq3P" id="5u9gdSXnK0h" role="2Oq$k0" />
              <node concept="2OwXpG" id="5u9gdSXnKp4" role="2OqNvi">
                <ref role="2Oxat5" node="5u9gdSXn7rV" resolve="timeColumn" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5u9gdSXnMWh" role="3cqZAp">
          <node concept="37vLTI" id="5u9gdSXnO2C" role="3clFbG">
            <node concept="37vLTw" id="5u9gdSXnOk2" role="37vLTx">
              <ref role="3cqZAo" node="5u9gdSXn7LH" resolve="valueColumn" />
            </node>
            <node concept="2OqwBi" id="5u9gdSXnNcc" role="37vLTJ">
              <node concept="Xjq3P" id="5u9gdSXnMWf" role="2Oq$k0" />
              <node concept="2OwXpG" id="5u9gdSXnNlr" role="2OqNvi">
                <ref role="2Oxat5" node="5u9gdSXn7xd" resolve="valueColumn" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5u9gdSXp11g" role="3cqZAp">
          <node concept="37vLTI" id="5u9gdSXp4EX" role="3clFbG">
            <node concept="2ShNRf" id="5u9gdSXp56F" role="37vLTx">
              <node concept="1pGfFk" id="5u9gdSXp56v" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="5u9gdSXp56w" role="1pMfVU">
                  <ref role="3uigEE" node="5u9gdSXnss$" resolve="CSVLine" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5u9gdSXp11e" role="37vLTJ">
              <ref role="3cqZAo" node="5u9gdSXnSNE" resolve="lines" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5u9gdSXngf3" role="3cqZAp">
          <node concept="1rXfSq" id="5u9gdSXngf2" role="3clFbG">
            <ref role="37wK5l" node="5u9gdSXneW8" resolve="readFile" />
            <node concept="37vLTw" id="5u9gdSXnghV" role="37wK5m">
              <ref role="3cqZAo" node="5u9gdSXn7CN" resolve="filepath" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5u9gdSXn7_B" role="1B3o_S" />
      <node concept="37vLTG" id="5u9gdSXn7CN" role="3clF46">
        <property role="TrG5h" value="filepath" />
        <node concept="3uibUv" id="5u9gdSXn7CM" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="5u9gdSXn7Eo" role="3clF46">
        <property role="TrG5h" value="sensorFilter" />
        <node concept="3uibUv" id="5u9gdSXn7FB" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="5u9gdSXn7GJ" role="3clF46">
        <property role="TrG5h" value="nameColumn" />
        <node concept="10Oyi0" id="5u9gdSXn7I0" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5u9gdSXn7IT" role="3clF46">
        <property role="TrG5h" value="timeColumn" />
        <node concept="10Oyi0" id="5u9gdSXn7Kc" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5u9gdSXn7LH" role="3clF46">
        <property role="TrG5h" value="valueColumn" />
        <node concept="10Oyi0" id="5u9gdSXn8JI" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="5u9gdSXnrXR" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~FileNotFoundException" resolve="FileNotFoundException" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5u9gdSXm8K_" role="1B3o_S" />
    <node concept="3uibUv" id="5u9gdSXn3kq" role="1zkMxy">
      <ref role="3uigEE" node="7rYs2gBaBv4" resolve="IDataSource" />
    </node>
    <node concept="3clFb_" id="5u9gdSXn3k$" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getNext" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3Tm1VV" id="5u9gdSXn3kA" role="1B3o_S" />
      <node concept="17QB3L" id="5u9gdSXn3kB" role="3clF45" />
      <node concept="3clFbS" id="5u9gdSXn3kC" role="3clF47">
        <node concept="3cpWs6" id="5u9gdSXoSlk" role="3cqZAp">
          <node concept="2OqwBi" id="5u9gdSXp90H" role="3cqZAk">
            <node concept="2OqwBi" id="5u9gdSXp5EQ" role="2Oq$k0">
              <node concept="2OqwBi" id="5u9gdSXoTxw" role="2Oq$k0">
                <node concept="37vLTw" id="5u9gdSXoSnp" role="2Oq$k0">
                  <ref role="3cqZAo" node="5u9gdSXnSNE" resolve="lines" />
                </node>
                <node concept="liA8E" id="5u9gdSXoUIb" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~ArrayList.remove(int):java.lang.Object" resolve="remove" />
                  <node concept="3cmrfG" id="5u9gdSXoY8W" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5u9gdSXp7V$" role="2OqNvi">
                <ref role="37wK5l" node="5u9gdSXnExY" resolve="getValue" />
              </node>
            </node>
            <node concept="liA8E" id="5u9gdSXpbZ2" role="2OqNvi">
              <ref role="37wK5l" node="5u9gdSXnyRT" resolve="getStringValue" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5u9gdSXn3kD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5u9gdSXneMQ" role="jymVt" />
    <node concept="3clFb_" id="5u9gdSXneW8" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="readFile" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5u9gdSXneWb" role="3clF47">
        <node concept="3cpWs8" id="5u9gdSXni3T" role="3cqZAp">
          <node concept="3cpWsn" id="5u9gdSXni3U" role="3cpWs9">
            <property role="TrG5h" value="br" />
            <node concept="3uibUv" id="5u9gdSXni3V" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~BufferedReader" resolve="BufferedReader" />
            </node>
            <node concept="2ShNRf" id="5u9gdSXni3W" role="33vP2m">
              <node concept="1pGfFk" id="5u9gdSXni3X" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~BufferedReader.&lt;init&gt;(java.io.Reader)" resolve="BufferedReader" />
                <node concept="2ShNRf" id="5u9gdSXni3Y" role="37wK5m">
                  <node concept="1pGfFk" id="5u9gdSXni3Z" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~FileReader.&lt;init&gt;(java.lang.String)" resolve="FileReader" />
                    <node concept="37vLTw" id="5u9gdSXni40" role="37wK5m">
                      <ref role="3cqZAo" node="5u9gdSXnfYp" resolve="filepath" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2GUZhq" id="5u9gdSXnjHq" role="3cqZAp">
          <node concept="3clFbS" id="5u9gdSXnjHs" role="2GV8ay">
            <node concept="3cpWs8" id="5u9gdSXnjMp" role="3cqZAp">
              <node concept="3cpWsn" id="5u9gdSXnjMq" role="3cpWs9">
                <property role="TrG5h" value="line" />
                <node concept="3uibUv" id="5u9gdSXnjMr" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="5u9gdSXnm3$" role="33vP2m">
                  <node concept="37vLTw" id="5u9gdSXnjVj" role="2Oq$k0">
                    <ref role="3cqZAo" node="5u9gdSXni3U" resolve="br" />
                  </node>
                  <node concept="liA8E" id="5u9gdSXnmie" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~BufferedReader.readLine():java.lang.String" resolve="readLine" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5u9gdSXnmoe" role="3cqZAp" />
            <node concept="2$JKZl" id="5u9gdSXnoS$" role="3cqZAp">
              <node concept="3clFbS" id="5u9gdSXnoSA" role="2LFqv$">
                <node concept="3cpWs8" id="5u9gdSXnOXo" role="3cqZAp">
                  <node concept="3cpWsn" id="5u9gdSXnOXp" role="3cpWs9">
                    <property role="TrG5h" value="tab" />
                    <node concept="10Q1$e" id="5u9gdSXnOXq" role="1tU5fm">
                      <node concept="3uibUv" id="5u9gdSXnOXr" role="10Q1$1">
                        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5u9gdSXnPn5" role="33vP2m">
                      <node concept="37vLTw" id="5u9gdSXnPax" role="2Oq$k0">
                        <ref role="3cqZAo" node="5u9gdSXnjMq" resolve="line" />
                      </node>
                      <node concept="liA8E" id="5u9gdSXnPAp" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.split(java.lang.String):java.lang.String[]" resolve="split" />
                        <node concept="Xl_RD" id="5u9gdSXnQ8x" role="37wK5m">
                          <property role="Xl_RC" value="," />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="5u9gdSXoDEw" role="3cqZAp" />
                <node concept="3cpWs8" id="5u9gdSXoEYv" role="3cqZAp">
                  <node concept="3cpWsn" id="5u9gdSXoEYy" role="3cpWs9">
                    <property role="TrG5h" value="present" />
                    <node concept="10P_77" id="5u9gdSXoEYt" role="1tU5fm" />
                    <node concept="3clFbT" id="5u9gdSXoGeg" role="33vP2m">
                      <property role="3clFbU" value="false" />
                    </node>
                  </node>
                </node>
                <node concept="2Gpval" id="5u9gdSXoCIv" role="3cqZAp">
                  <node concept="2GrKxI" id="5u9gdSXoCIx" role="2Gsz3X">
                    <property role="TrG5h" value="filter" />
                  </node>
                  <node concept="37vLTw" id="5u9gdSXoDui" role="2GsD0m">
                    <ref role="3cqZAo" node="5u9gdSXn5wV" resolve="sensorFilter" />
                  </node>
                  <node concept="3clFbS" id="5u9gdSXoCI_" role="2LFqv$">
                    <node concept="3clFbJ" id="5u9gdSXoGkS" role="3cqZAp">
                      <node concept="2OqwBi" id="5u9gdSXoHhl" role="3clFbw">
                        <node concept="AH0OO" id="5u9gdSXoGJ$" role="2Oq$k0">
                          <node concept="37vLTw" id="5u9gdSXoGV4" role="AHEQo">
                            <ref role="3cqZAo" node="5u9gdSXn7mM" resolve="nameColumn" />
                          </node>
                          <node concept="37vLTw" id="5u9gdSXoGr_" role="AHHXb">
                            <ref role="3cqZAo" node="5u9gdSXnOXp" resolve="tab" />
                          </node>
                        </node>
                        <node concept="liA8E" id="5u9gdSXoHG0" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence):boolean" resolve="contains" />
                          <node concept="2GrUjf" id="5u9gdSXoJ7w" role="37wK5m">
                            <ref role="2Gs0qQ" node="5u9gdSXoCIx" resolve="filter" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="5u9gdSXoGkU" role="3clFbx">
                        <node concept="3clFbF" id="5u9gdSXoJBL" role="3cqZAp">
                          <node concept="37vLTI" id="5u9gdSXoJPX" role="3clFbG">
                            <node concept="3clFbT" id="5u9gdSXoJSi" role="37vLTx">
                              <property role="3clFbU" value="true" />
                            </node>
                            <node concept="37vLTw" id="5u9gdSXoJBK" role="37vLTJ">
                              <ref role="3cqZAo" node="5u9gdSXoEYy" resolve="present" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="5u9gdSXoC5j" role="3cqZAp" />
                <node concept="3clFbJ" id="5u9gdSXovg6" role="3cqZAp">
                  <node concept="3clFbS" id="5u9gdSXovg8" role="3clFbx">
                    <node concept="3clFbF" id="5u9gdSXnT6s" role="3cqZAp">
                      <node concept="2OqwBi" id="5u9gdSXnT_S" role="3clFbG">
                        <node concept="37vLTw" id="5u9gdSXnT6q" role="2Oq$k0">
                          <ref role="3cqZAo" node="5u9gdSXnSNE" resolve="lines" />
                        </node>
                        <node concept="liA8E" id="5u9gdSXnUUV" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                          <node concept="2ShNRf" id="5u9gdSXnVBJ" role="37wK5m">
                            <node concept="1pGfFk" id="5u9gdSXnWBr" role="2ShVmc">
                              <ref role="37wK5l" node="5u9gdSXnAyL" resolve="CSVLine" />
                              <node concept="AH0OO" id="5u9gdSXnXD4" role="37wK5m">
                                <node concept="37vLTw" id="5u9gdSXnY0z" role="AHEQo">
                                  <ref role="3cqZAo" node="5u9gdSXn7mM" resolve="nameColumn" />
                                </node>
                                <node concept="37vLTw" id="5u9gdSXnX93" role="AHHXb">
                                  <ref role="3cqZAo" node="5u9gdSXnOXp" resolve="tab" />
                                </node>
                              </node>
                              <node concept="2YIFZM" id="5u9gdSXohcW" role="37wK5m">
                                <ref role="37wK5l" to="wyt6:~Integer.parseInt(java.lang.String):int" resolve="parseInt" />
                                <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                                <node concept="AH0OO" id="5u9gdSXoifR" role="37wK5m">
                                  <node concept="37vLTw" id="5u9gdSXoiIS" role="AHEQo">
                                    <ref role="3cqZAo" node="5u9gdSXn7rV" resolve="timeColumn" />
                                  </node>
                                  <node concept="37vLTw" id="5u9gdSXohBI" role="AHHXb">
                                    <ref role="3cqZAo" node="5u9gdSXnOXp" resolve="tab" />
                                  </node>
                                </node>
                              </node>
                              <node concept="AH0OO" id="5u9gdSXokjA" role="37wK5m">
                                <node concept="37vLTw" id="5u9gdSXokN_" role="AHEQo">
                                  <ref role="3cqZAo" node="5u9gdSXn7xd" resolve="valueColumn" />
                                </node>
                                <node concept="37vLTw" id="5u9gdSXojEu" role="AHHXb">
                                  <ref role="3cqZAo" node="5u9gdSXnOXp" resolve="tab" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="5u9gdSXoL4Y" role="3clFbw">
                    <ref role="3cqZAo" node="5u9gdSXoEYy" resolve="present" />
                  </node>
                </node>
                <node concept="3clFbH" id="5u9gdSXolnG" role="3cqZAp" />
                <node concept="3clFbF" id="5u9gdSXnpL8" role="3cqZAp">
                  <node concept="37vLTI" id="5u9gdSXnqwv" role="3clFbG">
                    <node concept="2OqwBi" id="5u9gdSXnqJJ" role="37vLTx">
                      <node concept="37vLTw" id="5u9gdSXnqBQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="5u9gdSXni3U" resolve="br" />
                      </node>
                      <node concept="liA8E" id="5u9gdSXnr3d" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~BufferedReader.readLine():java.lang.String" resolve="readLine" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="5u9gdSXnpL7" role="37vLTJ">
                      <ref role="3cqZAo" node="5u9gdSXnjMq" resolve="line" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="5u9gdSXnpF6" role="2$JKZa">
                <node concept="10Nm6u" id="5u9gdSXnpI9" role="3uHU7w" />
                <node concept="37vLTw" id="5u9gdSXnoVP" role="3uHU7B">
                  <ref role="3cqZAo" node="5u9gdSXnjMq" resolve="line" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5u9gdSXnjHt" role="2GVbov">
            <node concept="SfApY" id="5u9gdSXoNvZ" role="3cqZAp">
              <node concept="3clFbS" id="5u9gdSXoNw1" role="SfCbr">
                <node concept="3clFbF" id="5u9gdSXns2b" role="3cqZAp">
                  <node concept="2OqwBi" id="5u9gdSXns9Y" role="3clFbG">
                    <node concept="37vLTw" id="5u9gdSXns2a" role="2Oq$k0">
                      <ref role="3cqZAo" node="5u9gdSXni3U" resolve="br" />
                    </node>
                    <node concept="liA8E" id="5u9gdSXnsjj" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~BufferedReader.close():void" resolve="close" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="TDmWw" id="5u9gdSXoNw2" role="TEbGg">
                <node concept="3cpWsn" id="5u9gdSXoNw4" role="TDEfY">
                  <property role="TrG5h" value="e" />
                  <node concept="3uibUv" id="5u9gdSXoNBq" role="1tU5fm">
                    <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                  </node>
                </node>
                <node concept="3clFbS" id="5u9gdSXoNw8" role="TDEfX" />
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="5u9gdSXnmJ3" role="TEXxN">
            <node concept="3cpWsn" id="5u9gdSXnmJ4" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="5u9gdSXnmP4" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
            <node concept="3clFbS" id="5u9gdSXnmJ6" role="TDEfX">
              <node concept="3clFbF" id="5u9gdSXnmZj" role="3cqZAp">
                <node concept="2OqwBi" id="5u9gdSXnnNu" role="3clFbG">
                  <node concept="10M0yZ" id="5u9gdSXnn_$" role="2Oq$k0">
                    <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                    <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  </node>
                  <node concept="liA8E" id="5u9gdSXno7f" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.Object):void" resolve="println" />
                    <node concept="37vLTw" id="5u9gdSXnocV" role="37wK5m">
                      <ref role="3cqZAo" node="5u9gdSXnmJ4" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5u9gdSXneSn" role="1B3o_S" />
      <node concept="3cqZAl" id="5u9gdSXneVb" role="3clF45" />
      <node concept="37vLTG" id="5u9gdSXnfYp" role="3clF46">
        <property role="TrG5h" value="filepath" />
        <node concept="3uibUv" id="5u9gdSXnfYo" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3uibUv" id="5u9gdSXnjy9" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~FileNotFoundException" resolve="FileNotFoundException" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5u9gdSXnss$">
    <property role="TrG5h" value="CSVLine" />
    <node concept="312cEg" id="5u9gdSXnsu4" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="name" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5u9gdSXnAvI" role="1B3o_S" />
      <node concept="17QB3L" id="5u9gdSXnsxb" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="5u9gdSXnsv0" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="time" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5u9gdSXnAvS" role="1B3o_S" />
      <node concept="10Oyi0" id="5u9gdSXnsuT" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="5u9gdSXn$_p" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="value" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5u9gdSXnAw2" role="1B3o_S" />
      <node concept="3uibUv" id="5u9gdSXn$_g" role="1tU5fm">
        <ref role="3uigEE" node="5u9gdSXnsvu" resolve="CSVValue" />
      </node>
    </node>
    <node concept="2tJIrI" id="5u9gdSXnAwc" role="jymVt" />
    <node concept="3clFbW" id="5u9gdSXnAyL" role="jymVt">
      <node concept="3cqZAl" id="5u9gdSXnAyM" role="3clF45" />
      <node concept="3clFbS" id="5u9gdSXnAyO" role="3clF47">
        <node concept="3clFbF" id="5u9gdSXnA_x" role="3cqZAp">
          <node concept="37vLTI" id="5u9gdSXnAMz" role="3clFbG">
            <node concept="37vLTw" id="5u9gdSXnANU" role="37vLTx">
              <ref role="3cqZAo" node="5u9gdSXnAzg" resolve="name" />
            </node>
            <node concept="2OqwBi" id="5u9gdSXnABh" role="37vLTJ">
              <node concept="Xjq3P" id="5u9gdSXnA_w" role="2Oq$k0" />
              <node concept="2OwXpG" id="5u9gdSXnAE3" role="2OqNvi">
                <ref role="2Oxat5" node="5u9gdSXnsu4" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5u9gdSXnAUP" role="3cqZAp">
          <node concept="37vLTI" id="5u9gdSXnBxH" role="3clFbG">
            <node concept="37vLTw" id="5u9gdSXnBBi" role="37vLTx">
              <ref role="3cqZAo" node="5u9gdSXnAzP" resolve="time" />
            </node>
            <node concept="2OqwBi" id="5u9gdSXnAXC" role="37vLTJ">
              <node concept="Xjq3P" id="5u9gdSXnAUN" role="2Oq$k0" />
              <node concept="2OwXpG" id="5u9gdSXnB0w" role="2OqNvi">
                <ref role="2Oxat5" node="5u9gdSXnsv0" resolve="time" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5u9gdSXnCd9" role="3cqZAp">
          <node concept="37vLTI" id="5u9gdSXnCvQ" role="3clFbG">
            <node concept="2ShNRf" id="5u9gdSXnCyG" role="37vLTx">
              <node concept="1pGfFk" id="5u9gdSXnCRU" role="2ShVmc">
                <ref role="37wK5l" node="5u9gdSXntwM" resolve="CSVValue" />
                <node concept="37vLTw" id="5u9gdSXnCTg" role="37wK5m">
                  <ref role="3cqZAo" node="5u9gdSXnA$v" resolve="value" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5u9gdSXnCld" role="37vLTJ">
              <node concept="Xjq3P" id="5u9gdSXnCd7" role="2Oq$k0" />
              <node concept="2OwXpG" id="5u9gdSXnCo1" role="2OqNvi">
                <ref role="2Oxat5" node="5u9gdSXn$_p" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5u9gdSXnAys" role="1B3o_S" />
      <node concept="37vLTG" id="5u9gdSXnAzg" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="5u9gdSXnAzf" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5u9gdSXnAzP" role="3clF46">
        <property role="TrG5h" value="time" />
        <node concept="10Oyi0" id="5u9gdSXnA$8" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5u9gdSXnA$v" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="5u9gdSXnA$O" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5u9gdSXnCVL" role="jymVt" />
    <node concept="3clFb_" id="5u9gdSXnDk_" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getName" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5u9gdSXnDkC" role="3clF47">
        <node concept="3clFbF" id="5u9gdSXnDtd" role="3cqZAp">
          <node concept="37vLTw" id="5u9gdSXnDtc" role="3clFbG">
            <ref role="3cqZAo" node="5u9gdSXnsu4" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5u9gdSXnDce" role="1B3o_S" />
      <node concept="17QB3L" id="5u9gdSXnDkw" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5u9gdSXnDut" role="jymVt" />
    <node concept="3clFb_" id="5u9gdSXnDSm" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getTime" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5u9gdSXnDSp" role="3clF47">
        <node concept="3clFbF" id="5u9gdSXnE1l" role="3cqZAp">
          <node concept="37vLTw" id="5u9gdSXnE1k" role="3clFbG">
            <ref role="3cqZAo" node="5u9gdSXnsv0" resolve="time" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5u9gdSXnDJC" role="1B3o_S" />
      <node concept="10Oyi0" id="5u9gdSXnDSh" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5u9gdSXnE6N" role="jymVt" />
    <node concept="3clFb_" id="5u9gdSXnExY" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getValue" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5u9gdSXnEy1" role="3clF47">
        <node concept="3clFbF" id="5u9gdSXnEFo" role="3cqZAp">
          <node concept="37vLTw" id="5u9gdSXnEFn" role="3clFbG">
            <ref role="3cqZAo" node="5u9gdSXn$_p" resolve="value" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5u9gdSXnEoG" role="1B3o_S" />
      <node concept="3uibUv" id="5u9gdSXnExG" role="3clF45">
        <ref role="3uigEE" node="5u9gdSXnsvu" resolve="CSVValue" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5u9gdSXnss_" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5u9gdSXnsvu">
    <property role="TrG5h" value="CSVValue" />
    <node concept="312cEg" id="5u9gdSXntvZ" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="stringValue" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5u9gdSXnswT" role="1B3o_S" />
      <node concept="17QB3L" id="5u9gdSXnsx4" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="5u9gdSXntzl" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="doubleValue" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5u9gdSXntyU" role="1B3o_S" />
      <node concept="10P55v" id="5u9gdSXntzg" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="5u9gdSXntzH" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="isNumeric" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5u9gdSXntxQ" role="1B3o_S" />
      <node concept="10P_77" id="5u9gdSXnty9" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="5u9gdSXnt_c" role="jymVt" />
    <node concept="3clFbW" id="5u9gdSXntwM" role="jymVt">
      <node concept="3cqZAl" id="5u9gdSXntwN" role="3clF45" />
      <node concept="3clFbS" id="5u9gdSXntwP" role="3clF47">
        <node concept="3clFbF" id="5u9gdSXnxRd" role="3cqZAp">
          <node concept="37vLTI" id="5u9gdSXny86" role="3clFbG">
            <node concept="37vLTw" id="5u9gdSXny9k" role="37vLTx">
              <ref role="3cqZAo" node="5u9gdSXntxb" resolve="value" />
            </node>
            <node concept="37vLTw" id="5u9gdSXnxRb" role="37vLTJ">
              <ref role="3cqZAo" node="5u9gdSXntvZ" resolve="stringValue" />
            </node>
          </node>
        </node>
        <node concept="SfApY" id="5u9gdSXnuCR" role="3cqZAp">
          <node concept="3clFbS" id="5u9gdSXnuCS" role="SfCbr">
            <node concept="3clFbF" id="5u9gdSXnuDE" role="3cqZAp">
              <node concept="37vLTI" id="5u9gdSXnvH8" role="3clFbG">
                <node concept="2YIFZM" id="5u9gdSXnw7K" role="37vLTx">
                  <ref role="37wK5l" to="wyt6:~Double.parseDouble(java.lang.String):double" resolve="parseDouble" />
                  <ref role="1Pybhc" to="wyt6:~Double" resolve="Double" />
                  <node concept="37vLTw" id="5u9gdSXnwh4" role="37wK5m">
                    <ref role="3cqZAo" node="5u9gdSXntxb" resolve="value" />
                  </node>
                </node>
                <node concept="37vLTw" id="5u9gdSXnuDD" role="37vLTJ">
                  <ref role="3cqZAo" node="5u9gdSXntzl" resolve="doubleValue" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5u9gdSXnx4X" role="3cqZAp">
              <node concept="37vLTI" id="5u9gdSXnxAk" role="3clFbG">
                <node concept="3clFbT" id="5u9gdSXnxDC" role="37vLTx">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="37vLTw" id="5u9gdSXnx4V" role="37vLTJ">
                  <ref role="3cqZAo" node="5u9gdSXntzH" resolve="isNumeric" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="5u9gdSXnuCT" role="TEbGg">
            <node concept="3cpWsn" id="5u9gdSXnuCU" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="5u9gdSXnwuB" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
              </node>
            </node>
            <node concept="3clFbS" id="5u9gdSXnuCW" role="TDEfX">
              <node concept="3clFbF" id="5u9gdSXnwG$" role="3cqZAp">
                <node concept="37vLTI" id="5u9gdSXnwQo" role="3clFbG">
                  <node concept="3clFbT" id="5u9gdSXnwTq" role="37vLTx">
                    <property role="3clFbU" value="false" />
                  </node>
                  <node concept="37vLTw" id="5u9gdSXnwGz" role="37vLTJ">
                    <ref role="3cqZAo" node="5u9gdSXntzH" resolve="isNumeric" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5u9gdSXntwz" role="1B3o_S" />
      <node concept="37vLTG" id="5u9gdSXntxb" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="5u9gdSXntxa" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5u9gdSXntC0" role="jymVt" />
    <node concept="3clFb_" id="5u9gdSXnyRT" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getStringValue" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5u9gdSXnyRW" role="3clF47">
        <node concept="3cpWs6" id="5u9gdSXnz0z" role="3cqZAp">
          <node concept="37vLTw" id="5u9gdSXnz1b" role="3cqZAk">
            <ref role="3cqZAo" node="5u9gdSXntvZ" resolve="stringValue" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5u9gdSXnyHX" role="1B3o_S" />
      <node concept="17QB3L" id="5u9gdSXnyQi" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5u9gdSXnz95" role="jymVt" />
    <node concept="3clFb_" id="5u9gdSXnz$t" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isNumeric" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5u9gdSXnz$w" role="3clF47">
        <node concept="3cpWs6" id="5u9gdSXnzHs" role="3cqZAp">
          <node concept="37vLTw" id="5u9gdSXnzI4" role="3cqZAk">
            <ref role="3cqZAo" node="5u9gdSXntzH" resolve="isNumeric" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5u9gdSXnzqi" role="1B3o_S" />
      <node concept="10P_77" id="5u9gdSXnzyW" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5u9gdSXnzQc" role="jymVt" />
    <node concept="3clFb_" id="5u9gdSXn$it" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDoubleValue" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5u9gdSXn$iw" role="3clF47">
        <node concept="3cpWs6" id="5u9gdSXn$rL" role="3cqZAp">
          <node concept="37vLTw" id="5u9gdSXn$sp" role="3cqZAk">
            <ref role="3cqZAo" node="5u9gdSXntzl" resolve="doubleValue" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5u9gdSXn$83" role="1B3o_S" />
      <node concept="10P55v" id="5u9gdSXn$h2" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="5u9gdSXnsvv" role="1B3o_S" />
  </node>
</model>

