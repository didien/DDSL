<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2ebb615b-7d7d-46a9-af25-8b8353fe1098(SensorSimulationLanguage.runtime.simulation)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="-1" />
  </languages>
  <imports>
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="28m1" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.time(JDK/)" />
    <import index="wthj" ref="cc7fb470-7d0c-4aea-af2a-5d870ff3092f/java:org.influxdb.dto(InfluxDB/)" />
    <import index="7fo8" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.time.chrono(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="xlxw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.math(JDK/)" />
    <import index="m4b9" ref="f94783b1-6c83-46e2-a40e-86c1cdf7b0d4/java:net.objecthunter.exp4j(exp4j/)" />
    <import index="y62k" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javafx.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="wy2b" ref="ab012b2a-d7fa-40ca-817f-fa9ddb7cfb35/java:com.google.gson(Gson/)" />
    <import index="9nbq" ref="cc7fb470-7d0c-4aea-af2a-5d870ff3092f/java:org.influxdb(InfluxDB/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
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
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
        <child id="2820489544402271667" name="typeParameter" index="HU9BZ" />
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
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
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
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
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
      <node concept="37vLTG" id="6vH4OV2_$3y" role="3clF46">
        <property role="TrG5h" value="currentTime" />
        <node concept="3uibUv" id="6vH4OV2_$3z" role="1tU5fm">
          <ref role="3uigEE" to="28m1:~LocalDateTime" resolve="LocalDateTime" />
        </node>
      </node>
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
                <node concept="37vLTw" id="6vH4OV2Ahih" role="37wK5m">
                  <ref role="3cqZAo" node="36n0RtVzhS9" resolve="currentTime" />
                </node>
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
                    <node concept="37vLTw" id="6vH4OV2Ahn$" role="37wK5m">
                      <ref role="3cqZAo" node="36n0RtVzhS9" resolve="currentTime" />
                    </node>
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
              <ref role="3cqZAo" node="5dO5_UbgyWu" resolve="influxDbClient" />
            </node>
            <node concept="liA8E" id="5qdpREsEPU4" role="2OqNvi">
              <ref role="37wK5l" to="9nbq:~InfluxDB.write(org.influxdb.dto.Point):void" resolve="write" />
              <node concept="37vLTw" id="5qdpREsEPV2" role="37wK5m">
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
        <property role="TrG5h" value="influxDbClient" />
        <node concept="3uibUv" id="5qdpREsEOw$" role="1tU5fm">
          <ref role="3uigEE" to="9nbq:~InfluxDB" resolve="InfluxDB" />
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
      <node concept="37vLTG" id="6vH4OV2_x40" role="3clF46">
        <property role="TrG5h" value="currentTime" />
        <node concept="3uibUv" id="6vH4OV2_x3Z" role="1tU5fm">
          <ref role="3uigEE" to="28m1:~LocalDateTime" resolve="LocalDateTime" />
        </node>
      </node>
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
    <node concept="312cEg" id="6vH4OV2FIqQ" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="noiseGenerator" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tmbuc" id="6vH4OV2FIls" role="1B3o_S" />
      <node concept="3uibUv" id="6vH4OV2FIqI" role="1tU5fm">
        <ref role="3uigEE" node="6vH4OV2FyHj" resolve="NoiseGenerator" />
      </node>
    </node>
    <node concept="2tJIrI" id="6ZqfKADU0b8" role="jymVt" />
    <node concept="3clFb_" id="7rYs2gBaBww" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getNext" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7rYs2gBaBwz" role="3clF47" />
      <node concept="3Tm1VV" id="7rYs2gBaBwf" role="1B3o_S" />
      <node concept="17QB3L" id="6ZqfKADU0Wk" role="3clF45" />
      <node concept="37vLTG" id="6vH4OV2_v24" role="3clF46">
        <property role="TrG5h" value="currenTime" />
        <node concept="3uibUv" id="6vH4OV2_v23" role="1tU5fm">
          <ref role="3uigEE" to="28m1:~LocalDateTime" resolve="LocalDateTime" />
        </node>
      </node>
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
    <node concept="3clFb_" id="6vH4OV2FIUQ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setNoiseGenerator" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6vH4OV2FIUT" role="3clF47">
        <node concept="3clFbF" id="6vH4OV2FJ70" role="3cqZAp">
          <node concept="37vLTI" id="6vH4OV2FJmq" role="3clFbG">
            <node concept="37vLTw" id="6vH4OV2FJpc" role="37vLTx">
              <ref role="3cqZAo" node="6vH4OV2FJ11" resolve="generator" />
            </node>
            <node concept="37vLTw" id="6vH4OV2FJ6Z" role="37vLTJ">
              <ref role="3cqZAo" node="6vH4OV2FIqQ" resolve="noiseGenerator" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6vH4OV2FIPr" role="1B3o_S" />
      <node concept="3cqZAl" id="6vH4OV2FIUK" role="3clF45" />
      <node concept="37vLTG" id="6vH4OV2FJ11" role="3clF46">
        <property role="TrG5h" value="generator" />
        <node concept="3uibUv" id="6vH4OV2FJ10" role="1tU5fm">
          <ref role="3uigEE" node="6vH4OV2FyHj" resolve="NoiseGenerator" />
        </node>
      </node>
    </node>
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
    <node concept="312cEg" id="1nZ6g$XV0ek" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="filepath" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="1nZ6g$XUZzQ" role="1B3o_S" />
      <node concept="17QB3L" id="1nZ6g$XV0dc" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="5u9gdSXn5wV" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="sensorFilter" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5u9gdSXn5ur" role="1B3o_S" />
      <node concept="10Q1$e" id="5u9gdSXn5vO" role="1tU5fm">
        <node concept="17QB3L" id="1nZ6g$XTCgy" role="10Q1$1" />
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
    <node concept="312cEg" id="1XfQ9HmRWBd" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="hasHeader" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="1XfQ9HmRVTm" role="1B3o_S" />
      <node concept="10P_77" id="1XfQ9HmRW_c" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1nZ6g$XWAhL" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="noiseGenerator" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="1nZ6g$XWzgh" role="1B3o_S" />
      <node concept="3uibUv" id="1nZ6g$XWAgr" role="1tU5fm">
        <ref role="3uigEE" node="6vH4OV2FyHj" resolve="NoiseGenerator" />
      </node>
    </node>
    <node concept="2tJIrI" id="5u9gdSXn7yG" role="jymVt" />
    <node concept="3clFbW" id="5u9gdSXn7B8" role="jymVt">
      <node concept="3cqZAl" id="5u9gdSXn7B9" role="3clF45" />
      <node concept="3clFbS" id="5u9gdSXn7Bb" role="3clF47">
        <node concept="3clFbF" id="1nZ6g$XV1hF" role="3cqZAp">
          <node concept="37vLTI" id="1nZ6g$XV246" role="3clFbG">
            <node concept="37vLTw" id="1nZ6g$XV2cN" role="37vLTx">
              <ref role="3cqZAo" node="5u9gdSXn7CN" resolve="filepath" />
            </node>
            <node concept="2OqwBi" id="1nZ6g$XV1H8" role="37vLTJ">
              <node concept="Xjq3P" id="1nZ6g$XV1hD" role="2Oq$k0" />
              <node concept="2OwXpG" id="1nZ6g$XV1Nm" role="2OqNvi">
                <ref role="2Oxat5" node="1nZ6g$XV0ek" resolve="filepath" />
              </node>
            </node>
          </node>
        </node>
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
            <node concept="3cpWsd" id="1XfQ9HmV3vR" role="37vLTx">
              <node concept="3cmrfG" id="1XfQ9HmV3wa" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="37vLTw" id="5u9gdSXnJyL" role="3uHU7B">
                <ref role="3cqZAo" node="5u9gdSXn7GJ" resolve="nameColumn" />
              </node>
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
            <node concept="3cpWsd" id="1XfQ9HmV3Ux" role="37vLTx">
              <node concept="3cmrfG" id="1XfQ9HmV3UO" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="37vLTw" id="5u9gdSXnMAH" role="3uHU7B">
                <ref role="3cqZAo" node="5u9gdSXn7IT" resolve="timeColumn" />
              </node>
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
            <node concept="3cpWsd" id="1XfQ9HmV4ty" role="37vLTx">
              <node concept="3cmrfG" id="1XfQ9HmV4tP" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="37vLTw" id="5u9gdSXnOk2" role="3uHU7B">
                <ref role="3cqZAo" node="5u9gdSXn7LH" resolve="valueColumn" />
              </node>
            </node>
            <node concept="2OqwBi" id="5u9gdSXnNcc" role="37vLTJ">
              <node concept="Xjq3P" id="5u9gdSXnMWf" role="2Oq$k0" />
              <node concept="2OwXpG" id="5u9gdSXnNlr" role="2OqNvi">
                <ref role="2Oxat5" node="5u9gdSXn7xd" resolve="valueColumn" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1XfQ9HmRXxw" role="3cqZAp">
          <node concept="37vLTI" id="1XfQ9HmRYai" role="3clFbG">
            <node concept="37vLTw" id="1XfQ9HmRYho" role="37vLTx">
              <ref role="3cqZAo" node="1XfQ9HmRU$8" resolve="hasHeader" />
            </node>
            <node concept="2OqwBi" id="1XfQ9HmRXLp" role="37vLTJ">
              <node concept="Xjq3P" id="1XfQ9HmRXxu" role="2Oq$k0" />
              <node concept="2OwXpG" id="1XfQ9HmRXPN" role="2OqNvi">
                <ref role="2Oxat5" node="1XfQ9HmRWBd" resolve="hasHeader" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5u9gdSXn7_B" role="1B3o_S" />
      <node concept="37vLTG" id="5u9gdSXn7CN" role="3clF46">
        <property role="TrG5h" value="filepath" />
        <node concept="17QB3L" id="1nZ6g$XTCLB" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5u9gdSXn7Eo" role="3clF46">
        <property role="TrG5h" value="sensorFilter" />
        <node concept="17QB3L" id="1nZ6g$XTCAS" role="1tU5fm" />
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
      <node concept="37vLTG" id="1XfQ9HmRU$8" role="3clF46">
        <property role="TrG5h" value="hasHeader" />
        <node concept="10P_77" id="1XfQ9HmRVcH" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5u9gdSXm8K_" role="1B3o_S" />
    <node concept="2tJIrI" id="1nZ6g$XUXwQ" role="jymVt" />
    <node concept="2tJIrI" id="5u9gdSXneMQ" role="jymVt" />
    <node concept="3clFb_" id="5u9gdSXneW8" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getReadings" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5u9gdSXneWb" role="3clF47">
        <node concept="3cpWs8" id="1nZ6g$XVayw" role="3cqZAp">
          <node concept="3cpWsn" id="1nZ6g$XVayA" role="3cpWs9">
            <property role="TrG5h" value="liste" />
            <node concept="3uibUv" id="1nZ6g$XVayC" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="1nZ6g$XVbrj" role="11_B2D">
                <ref role="3uigEE" node="5qdpREsDlxB" resolve="ReplayRecord" />
              </node>
            </node>
            <node concept="2ShNRf" id="1nZ6g$XVhBX" role="33vP2m">
              <node concept="HV5vD" id="1nZ6g$XVi5F" role="2ShVmc">
                <ref role="HV5vE" to="33ny:~ArrayList" resolve="ArrayList" />
                <node concept="3uibUv" id="1nZ6g$XViFy" role="HU9BZ">
                  <ref role="3uigEE" node="5qdpREsDlxB" resolve="ReplayRecord" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1nZ6g$XVR3k" role="3cqZAp">
          <node concept="3cpWsn" id="1nZ6g$XVR3l" role="3cpWs9">
            <property role="TrG5h" value="fr" />
            <node concept="3uibUv" id="1nZ6g$XVR3m" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~FileReader" resolve="FileReader" />
            </node>
          </node>
        </node>
        <node concept="SfApY" id="1nZ6g$XVBXq" role="3cqZAp">
          <node concept="3clFbS" id="1nZ6g$XVBXs" role="SfCbr">
            <node concept="3clFbF" id="1nZ6g$XVS4X" role="3cqZAp">
              <node concept="37vLTI" id="1nZ6g$XVSgD" role="3clFbG">
                <node concept="2ShNRf" id="1nZ6g$XVSrX" role="37vLTx">
                  <node concept="1pGfFk" id="1nZ6g$XVSrJ" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~FileReader.&lt;init&gt;(java.lang.String)" resolve="FileReader" />
                    <node concept="37vLTw" id="1nZ6g$XVSzc" role="37wK5m">
                      <ref role="3cqZAo" node="1nZ6g$XV0ek" resolve="filepath" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1nZ6g$XVS4W" role="37vLTJ">
                  <ref role="3cqZAo" node="1nZ6g$XVR3l" resolve="fr" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="1nZ6g$XVBXt" role="TEbGg">
            <node concept="3cpWsn" id="1nZ6g$XVBXv" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="1nZ6g$XVDty" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~FileNotFoundException" resolve="FileNotFoundException" />
              </node>
            </node>
            <node concept="3clFbS" id="1nZ6g$XVBXz" role="TDEfX">
              <node concept="3clFbF" id="1nZ6g$XVDNK" role="3cqZAp">
                <node concept="2OqwBi" id="1nZ6g$XVDNL" role="3clFbG">
                  <node concept="10M0yZ" id="1nZ6g$XVDNM" role="2Oq$k0">
                    <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                    <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  </node>
                  <node concept="liA8E" id="1nZ6g$XVDNN" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.Object):void" resolve="println" />
                    <node concept="37vLTw" id="1nZ6g$XVDNO" role="37wK5m">
                      <ref role="3cqZAo" node="1nZ6g$XVBXv" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1nZ6g$XVDNR" role="3cqZAp">
                <node concept="37vLTw" id="1nZ6g$XVFhc" role="3cqZAk">
                  <ref role="3cqZAo" node="1nZ6g$XVayA" resolve="liste" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1nZ6g$XVKfn" role="3cqZAp" />
        <node concept="3cpWs8" id="1nZ6g$XVUGY" role="3cqZAp">
          <node concept="3cpWsn" id="1nZ6g$XVUGZ" role="3cpWs9">
            <property role="TrG5h" value="br" />
            <node concept="3uibUv" id="1nZ6g$XVUH0" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~BufferedReader" resolve="BufferedReader" />
            </node>
            <node concept="2ShNRf" id="1nZ6g$XVVxk" role="33vP2m">
              <node concept="1pGfFk" id="1nZ6g$XVVKL" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~BufferedReader.&lt;init&gt;(java.io.Reader)" resolve="BufferedReader" />
                <node concept="37vLTw" id="1nZ6g$XVVS5" role="37wK5m">
                  <ref role="3cqZAo" node="1nZ6g$XVR3l" resolve="fr" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1nZ6g$XVzFZ" role="3cqZAp" />
        <node concept="SfApY" id="1nZ6g$XW080" role="3cqZAp">
          <node concept="3clFbS" id="5u9gdSXnjHs" role="SfCbr">
            <node concept="3clFbH" id="1nZ6g$XV4Us" role="3cqZAp" />
            <node concept="3cpWs8" id="5u9gdSXnjMp" role="3cqZAp">
              <node concept="3cpWsn" id="5u9gdSXnjMq" role="3cpWs9">
                <property role="TrG5h" value="line" />
                <node concept="17QB3L" id="1nZ6g$XT0Un" role="1tU5fm" />
                <node concept="2OqwBi" id="5u9gdSXnm3$" role="33vP2m">
                  <node concept="37vLTw" id="1nZ6g$XVW06" role="2Oq$k0">
                    <ref role="3cqZAo" node="1nZ6g$XVUGZ" resolve="br" />
                  </node>
                  <node concept="liA8E" id="5u9gdSXnmie" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~BufferedReader.readLine():java.lang.String" resolve="readLine" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1XfQ9HmRYON" role="3cqZAp">
              <node concept="3clFbS" id="1XfQ9HmRYOP" role="3clFbx">
                <node concept="3clFbF" id="1XfQ9HmRZJR" role="3cqZAp">
                  <node concept="37vLTI" id="1XfQ9HmRZTk" role="3clFbG">
                    <node concept="2OqwBi" id="1XfQ9HmS1TM" role="37vLTx">
                      <node concept="37vLTw" id="1XfQ9HmS029" role="2Oq$k0">
                        <ref role="3cqZAo" node="1nZ6g$XVUGZ" resolve="br" />
                      </node>
                      <node concept="liA8E" id="1XfQ9HmS2f5" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~BufferedReader.readLine():java.lang.String" resolve="readLine" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="1XfQ9HmRZJP" role="37vLTJ">
                      <ref role="3cqZAo" node="5u9gdSXnjMq" resolve="line" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="1XfQ9HmRZzd" role="3clFbw">
                <node concept="37vLTw" id="1XfQ9HmRZC9" role="3uHU7w">
                  <ref role="3cqZAo" node="1XfQ9HmRWBd" resolve="hasHeader" />
                </node>
                <node concept="3y3z36" id="1XfQ9HmRZpH" role="3uHU7B">
                  <node concept="37vLTw" id="1XfQ9HmRZct" role="3uHU7B">
                    <ref role="3cqZAo" node="5u9gdSXnjMq" resolve="line" />
                  </node>
                  <node concept="10Nm6u" id="1XfQ9HmRZuf" role="3uHU7w" />
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
                      <node concept="17QB3L" id="1nZ6g$XT0sv" role="10Q1$1" />
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
                    <node concept="3clFbH" id="1nZ6g$XW6si" role="3cqZAp" />
                    <node concept="3cpWs8" id="1nZ6g$XWuN4" role="3cqZAp">
                      <node concept="3cpWsn" id="1nZ6g$XWuN7" role="3cpWs9">
                        <property role="TrG5h" value="value" />
                        <node concept="17QB3L" id="1nZ6g$XWuN2" role="1tU5fm" />
                        <node concept="1rXfSq" id="1nZ6g$XWvgK" role="33vP2m">
                          <ref role="37wK5l" node="1nZ6g$XW7Xe" resolve="alterValue" />
                          <node concept="AH0OO" id="1nZ6g$XWvD8" role="37wK5m">
                            <node concept="37vLTw" id="1nZ6g$XWvId" role="AHEQo">
                              <ref role="3cqZAo" node="5u9gdSXn7xd" resolve="valueColumn" />
                            </node>
                            <node concept="37vLTw" id="1nZ6g$XWvnG" role="AHHXb">
                              <ref role="3cqZAo" node="5u9gdSXnOXp" resolve="tab" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="1nZ6g$XW6Mf" role="3cqZAp" />
                    <node concept="3clFbF" id="5u9gdSXnT6s" role="3cqZAp">
                      <node concept="2OqwBi" id="5u9gdSXnT_S" role="3clFbG">
                        <node concept="37vLTw" id="1nZ6g$XVl78" role="2Oq$k0">
                          <ref role="3cqZAo" node="1nZ6g$XVayA" resolve="liste" />
                        </node>
                        <node concept="liA8E" id="5u9gdSXnUUV" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                          <node concept="2ShNRf" id="5u9gdSXnVBJ" role="37wK5m">
                            <node concept="1pGfFk" id="5u9gdSXnWBr" role="2ShVmc">
                              <ref role="37wK5l" node="5qdpREsDl_D" resolve="ReplayRecord" />
                              <node concept="AH0OO" id="5u9gdSXnXD4" role="37wK5m">
                                <node concept="37vLTw" id="5u9gdSXnY0z" role="AHEQo">
                                  <ref role="3cqZAo" node="5u9gdSXn7mM" resolve="nameColumn" />
                                </node>
                                <node concept="37vLTw" id="5u9gdSXnX93" role="AHHXb">
                                  <ref role="3cqZAo" node="5u9gdSXnOXp" resolve="tab" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="1nZ6g$XWGe1" role="37wK5m">
                                <ref role="3cqZAo" node="1nZ6g$XWuN7" resolve="value" />
                              </node>
                              <node concept="AH0OO" id="1nZ6g$XVo2L" role="37wK5m">
                                <node concept="37vLTw" id="1nZ6g$XVokK" role="AHEQo">
                                  <ref role="3cqZAo" node="5u9gdSXn7rV" resolve="timeColumn" />
                                </node>
                                <node concept="37vLTw" id="1nZ6g$XVn$i" role="AHHXb">
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
                      <node concept="37vLTw" id="1nZ6g$XVWok" role="2Oq$k0">
                        <ref role="3cqZAo" node="1nZ6g$XVUGZ" resolve="br" />
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
                <node concept="37vLTw" id="5u9gdSXnoVP" role="3uHU7B">
                  <ref role="3cqZAo" node="5u9gdSXnjMq" resolve="line" />
                </node>
                <node concept="10Nm6u" id="5u9gdSXnpI9" role="3uHU7w" />
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="5u9gdSXnmJ3" role="TEbGg">
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
        <node concept="SfApY" id="5u9gdSXoNvZ" role="3cqZAp">
          <node concept="3clFbS" id="5u9gdSXoNw1" role="SfCbr">
            <node concept="3clFbF" id="5u9gdSXns2b" role="3cqZAp">
              <node concept="2OqwBi" id="5u9gdSXns9Y" role="3clFbG">
                <node concept="37vLTw" id="1nZ6g$XVXKB" role="2Oq$k0">
                  <ref role="3cqZAo" node="1nZ6g$XVUGZ" resolve="br" />
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
        <node concept="3clFbH" id="1nZ6g$XW45N" role="3cqZAp" />
        <node concept="3cpWs6" id="1nZ6g$XVYrr" role="3cqZAp">
          <node concept="37vLTw" id="1nZ6g$XVZxW" role="3cqZAk">
            <ref role="3cqZAo" node="1nZ6g$XVayA" resolve="liste" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1nZ6g$XUOyV" role="1B3o_S" />
      <node concept="3uibUv" id="1nZ6g$XUPdS" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1nZ6g$XUPTa" role="11_B2D">
          <ref role="3uigEE" node="5qdpREsDlxB" resolve="ReplayRecord" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1nZ6g$XW6Xf" role="jymVt" />
    <node concept="3clFb_" id="1nZ6g$XW7Xe" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="alterValue" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1nZ6g$XW7Xh" role="3clF47">
        <node concept="3clFbJ" id="1nZ6g$XWahu" role="3cqZAp">
          <node concept="3y3z36" id="1nZ6g$XWalK" role="3clFbw">
            <node concept="10Nm6u" id="1nZ6g$XWamr" role="3uHU7w" />
            <node concept="37vLTw" id="1nZ6g$XWEB4" role="3uHU7B">
              <ref role="3cqZAo" node="1nZ6g$XWAhL" resolve="noiseGenerator" />
            </node>
          </node>
          <node concept="3clFbS" id="1nZ6g$XWahw" role="3clFbx">
            <node concept="3clFbH" id="1nZ6g$XWb6V" role="3cqZAp" />
            <node concept="SfApY" id="1nZ6g$XWbiS" role="3cqZAp">
              <node concept="3clFbS" id="1nZ6g$XWbiU" role="SfCbr">
                <node concept="3cpWs8" id="1nZ6g$XWbLy" role="3cqZAp">
                  <node concept="3cpWsn" id="1nZ6g$XWbL_" role="3cpWs9">
                    <property role="TrG5h" value="value" />
                    <node concept="10P55v" id="1nZ6g$XWbLw" role="1tU5fm" />
                    <node concept="2YIFZM" id="1nZ6g$XWbST" role="33vP2m">
                      <ref role="37wK5l" to="wyt6:~Double.parseDouble(java.lang.String):double" resolve="parseDouble" />
                      <ref role="1Pybhc" to="wyt6:~Double" resolve="Double" />
                      <node concept="37vLTw" id="1nZ6g$XWbZn" role="37wK5m">
                        <ref role="3cqZAo" node="1nZ6g$XW9nK" resolve="original" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="1nZ6g$XWfIh" role="3cqZAp">
                  <node concept="3cpWs3" id="1nZ6g$XWspI" role="3cqZAk">
                    <node concept="Xl_RD" id="1nZ6g$XWsYI" role="3uHU7w" />
                    <node concept="1eOMI4" id="1nZ6g$XWfKI" role="3uHU7B">
                      <node concept="3cpWs3" id="1nZ6g$XWgRQ" role="1eOMHV">
                        <node concept="37vLTw" id="1nZ6g$XWgei" role="3uHU7B">
                          <ref role="3cqZAo" node="1nZ6g$XWbL_" resolve="value" />
                        </node>
                        <node concept="2OqwBi" id="1nZ6g$XWp4U" role="3uHU7w">
                          <node concept="2OqwBi" id="1nZ6g$XWnMX" role="2Oq$k0">
                            <node concept="37vLTw" id="1nZ6g$XWEF$" role="2Oq$k0">
                              <ref role="3cqZAo" node="1nZ6g$XWAhL" resolve="noiseGenerator" />
                            </node>
                            <node concept="liA8E" id="1nZ6g$XWoln" role="2OqNvi">
                              <ref role="37wK5l" node="6vH4OV2FBey" resolve="bringTheNoise" />
                            </node>
                          </node>
                          <node concept="liA8E" id="1nZ6g$XWpL7" role="2OqNvi">
                            <ref role="37wK5l" to="xlxw:~BigDecimal.doubleValue():double" resolve="doubleValue" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="TDmWw" id="1nZ6g$XWbiV" role="TEbGg">
                <node concept="3cpWsn" id="1nZ6g$XWbiX" role="TDEfY">
                  <property role="TrG5h" value="e" />
                  <node concept="3uibUv" id="1nZ6g$XWc5N" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                  </node>
                </node>
                <node concept="3clFbS" id="1nZ6g$XWbj1" role="TDEfX">
                  <node concept="3cpWs6" id="1nZ6g$XWfeV" role="3cqZAp">
                    <node concept="37vLTw" id="1nZ6g$XWfgS" role="3cqZAk">
                      <ref role="3cqZAo" node="1nZ6g$XW9nK" resolve="original" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1nZ6g$XWdwX" role="9aQIa">
            <node concept="3clFbS" id="1nZ6g$XWdwY" role="9aQI4">
              <node concept="3cpWs6" id="1nZ6g$XWdzj" role="3cqZAp">
                <node concept="37vLTw" id="1nZ6g$XWe28" role="3cqZAk">
                  <ref role="3cqZAo" node="1nZ6g$XW9nK" resolve="original" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1nZ6g$XW7uP" role="1B3o_S" />
      <node concept="17QB3L" id="1nZ6g$XW8UR" role="3clF45" />
      <node concept="37vLTG" id="1nZ6g$XW9nK" role="3clF46">
        <property role="TrG5h" value="original" />
        <node concept="17QB3L" id="1nZ6g$XW9nJ" role="1tU5fm" />
      </node>
    </node>
    <node concept="3uibUv" id="1nZ6g$XUNA9" role="EKbjA">
      <ref role="3uigEE" node="5qdpREsDlwK" resolve="IReplay" />
    </node>
    <node concept="3clFb_" id="1nZ6g$XXpO4" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="setNoiseGenerator" />
      <node concept="3Tm1VV" id="1nZ6g$XXpO6" role="1B3o_S" />
      <node concept="3cqZAl" id="1nZ6g$XXpO7" role="3clF45" />
      <node concept="37vLTG" id="1nZ6g$XXpO8" role="3clF46">
        <property role="TrG5h" value="generator" />
        <node concept="3uibUv" id="1nZ6g$XXpO9" role="1tU5fm">
          <ref role="3uigEE" node="6vH4OV2FyHj" resolve="NoiseGenerator" />
        </node>
      </node>
      <node concept="3clFbS" id="1nZ6g$XXpOa" role="3clF47">
        <node concept="3clFbF" id="1nZ6g$XXqyd" role="3cqZAp">
          <node concept="37vLTI" id="1nZ6g$XXqUo" role="3clFbG">
            <node concept="37vLTw" id="1nZ6g$XXr0W" role="37vLTx">
              <ref role="3cqZAo" node="1nZ6g$XXpO8" resolve="generator" />
            </node>
            <node concept="2OqwBi" id="1nZ6g$XXqAt" role="37vLTJ">
              <node concept="Xjq3P" id="1nZ6g$XXqyc" role="2Oq$k0" />
              <node concept="2OwXpG" id="1nZ6g$XXqJ4" role="2OqNvi">
                <ref role="2Oxat5" node="1nZ6g$XWAhL" resolve="noiseGenerator" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1nZ6g$XXpOb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7rYs2gBcNRC">
    <property role="TrG5h" value="ModellingLaw" />
    <node concept="2tJIrI" id="7rYs2gBcO2a" role="jymVt" />
    <node concept="312cEg" id="7rYs2gBcRNA" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="lowerBound" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="7rYs2gBcQF5" role="1B3o_S" />
      <node concept="10Oyi0" id="7rYs2gBcQGG" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="7rYs2gBcRTt" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="upperBound" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="7rYs2gBcRQQ" role="1B3o_S" />
      <node concept="10Oyi0" id="7rYs2gBcRSw" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="7rYs2gBcQxH" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="constraints" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="7rYs2gBcQlP" role="1B3o_S" />
      <node concept="3uibUv" id="7rYs2gBcQqg" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7rYs2gBcQvh" role="11_B2D">
          <ref role="3uigEE" to="y62k:~Pair" resolve="Pair" />
          <node concept="3uibUv" id="7rYs2gBd0aX" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
          <node concept="17QB3L" id="7rYs2gBcQx2" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7rYs2gBcO2h" role="jymVt" />
    <node concept="3clFbW" id="7rYs2gBcQ_H" role="jymVt">
      <node concept="3cqZAl" id="7rYs2gBcQ_J" role="3clF45" />
      <node concept="3Tm1VV" id="7rYs2gBcQ_K" role="1B3o_S" />
      <node concept="3clFbS" id="7rYs2gBcQ_L" role="3clF47">
        <node concept="3clFbF" id="7rYs2gBcS6n" role="3cqZAp">
          <node concept="37vLTI" id="6vH4OV2Cwtn" role="3clFbG">
            <node concept="37vLTw" id="6vH4OV2CwvZ" role="37vLTx">
              <ref role="3cqZAo" node="7rYs2gBcRYs" resolve="name" />
            </node>
            <node concept="37vLTw" id="6vH4OV2Cwi1" role="37vLTJ">
              <ref role="3cqZAo" node="7rYs2gBaBxJ" resolve="lawName" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7rYs2gBcSOY" role="3cqZAp">
          <node concept="37vLTI" id="7rYs2gBcTdr" role="3clFbG">
            <node concept="3cmrfG" id="6vH4OV2CE81" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="7rYs2gBcSOW" role="37vLTJ">
              <ref role="3cqZAo" node="7rYs2gBcRNA" resolve="lowerBound" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7rYs2gBcTqH" role="3cqZAp">
          <node concept="37vLTI" id="7rYs2gBcU9C" role="3clFbG">
            <node concept="3cmrfG" id="6vH4OV2CEca" role="37vLTx">
              <property role="3cmrfH" value="24" />
            </node>
            <node concept="37vLTw" id="7rYs2gBcTMl" role="37vLTJ">
              <ref role="3cqZAo" node="7rYs2gBcRTt" resolve="upperBound" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7rYs2gBcU_2" role="3cqZAp">
          <node concept="37vLTI" id="7rYs2gBcVsA" role="3clFbG">
            <node concept="37vLTw" id="7rYs2gBcW27" role="37vLTx">
              <ref role="3cqZAo" node="7rYs2gBcS29" resolve="update" />
            </node>
            <node concept="37vLTw" id="6vH4OV2Cw80" role="37vLTJ">
              <ref role="3cqZAo" node="1Vo$Sn9NYN9" resolve="updatePeriod" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7rYs2gBcWeV" role="3cqZAp">
          <node concept="37vLTI" id="7rYs2gBcWCe" role="3clFbG">
            <node concept="37vLTw" id="7rYs2gBcWRg" role="37vLTx">
              <ref role="3cqZAo" node="7rYs2gBcS3V" resolve="sampling" />
            </node>
            <node concept="37vLTw" id="6vH4OV2Cw2k" role="37vLTJ">
              <ref role="3cqZAo" node="1Vo$Sn9NYM9" resolve="samplingFrequency" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7rYs2gBcX4m" role="3cqZAp">
          <node concept="37vLTI" id="7rYs2gBcXtV" role="3clFbG">
            <node concept="3cmrfG" id="7rYs2gBcXzj" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="6vH4OV2Cw2$" role="37vLTJ">
              <ref role="3cqZAo" node="3juagqJxR9G" resolve="resetPeriod" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7rYs2gBcXLG" role="3cqZAp">
          <node concept="37vLTI" id="7rYs2gBcYau" role="3clFbG">
            <node concept="2ShNRf" id="7rYs2gBcYhu" role="37vLTx">
              <node concept="1pGfFk" id="7rYs2gBcYJA" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="7rYs2gBcZef" role="1pMfVU">
                  <ref role="3uigEE" to="y62k:~Pair" resolve="Pair" />
                  <node concept="3uibUv" id="7rYs2gBd0t8" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                  <node concept="17QB3L" id="7rYs2gBcZUx" role="11_B2D" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7rYs2gBcXLE" role="37vLTJ">
              <ref role="3cqZAo" node="7rYs2gBcQxH" resolve="constraints" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7rYs2gBcRYs" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7rYs2gBcRYr" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7rYs2gBcRYw" role="3clF46">
        <property role="TrG5h" value="lower" />
        <node concept="10Oyi0" id="7rYs2gBcRZL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7rYs2gBcS0r" role="3clF46">
        <property role="TrG5h" value="upper" />
        <node concept="10Oyi0" id="7rYs2gBcS1G" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7rYs2gBcS29" role="3clF46">
        <property role="TrG5h" value="update" />
        <node concept="10Oyi0" id="7rYs2gBcS3u" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7rYs2gBcS3V" role="3clF46">
        <property role="TrG5h" value="sampling" />
        <node concept="10Oyi0" id="7rYs2gBcS5g" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6JiemAxN8Rh" role="jymVt" />
    <node concept="3clFb_" id="6JiemAxNcXW" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addConstraint" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6JiemAxNcXZ" role="3clF47">
        <node concept="3clFbF" id="6JiemAxNeXJ" role="3cqZAp">
          <node concept="2OqwBi" id="6JiemAxNffd" role="3clFbG">
            <node concept="37vLTw" id="6JiemAxNeXI" role="2Oq$k0">
              <ref role="3cqZAo" node="7rYs2gBcQxH" resolve="constraints" />
            </node>
            <node concept="liA8E" id="6JiemAxNfWA" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
              <node concept="2ShNRf" id="6JiemAxNgm4" role="37wK5m">
                <node concept="1pGfFk" id="6JiemAxNh3t" role="2ShVmc">
                  <ref role="37wK5l" to="y62k:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
                  <node concept="37vLTw" id="6JiemAxNhdL" role="37wK5m">
                    <ref role="3cqZAo" node="6JiemAxNdDx" resolve="bound" />
                  </node>
                  <node concept="37vLTw" id="6JiemAxNhEY" role="37wK5m">
                    <ref role="3cqZAo" node="6JiemAxNej9" resolve="closure" />
                  </node>
                  <node concept="3uibUv" id="6JiemAxNnWe" role="1pMfVU">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                  <node concept="17QB3L" id="6JiemAxNom4" role="1pMfVU" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6JiemAxN9$u" role="1B3o_S" />
      <node concept="3cqZAl" id="6JiemAxNcWZ" role="3clF45" />
      <node concept="37vLTG" id="6JiemAxNdDx" role="3clF46">
        <property role="TrG5h" value="bound" />
        <node concept="10Oyi0" id="6JiemAxNdDw" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6JiemAxNej9" role="3clF46">
        <property role="TrG5h" value="closure" />
        <node concept="17QB3L" id="6JiemAxNeWP" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6vH4OV2CPSh" role="jymVt" />
    <node concept="3clFb_" id="6vH4OV2CS3m" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="assertValidModel" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6vH4OV2CS3p" role="3clF47">
        <node concept="3clFbJ" id="6vH4OV2CT5H" role="3cqZAp">
          <node concept="3y3z36" id="6vH4OV2D4Ly" role="3clFbw">
            <node concept="2OqwBi" id="6vH4OV2CZkd" role="3uHU7B">
              <node concept="2OqwBi" id="6vH4OV2CVoN" role="2Oq$k0">
                <node concept="37vLTw" id="6vH4OV2CT6r" role="2Oq$k0">
                  <ref role="3cqZAo" node="7rYs2gBcQxH" resolve="constraints" />
                </node>
                <node concept="liA8E" id="6vH4OV2CW7k" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                  <node concept="3cpWsd" id="6vH4OV2DaHv" role="37wK5m">
                    <node concept="3cmrfG" id="6vH4OV2DaHR" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="6vH4OV2CXo6" role="3uHU7B">
                      <node concept="37vLTw" id="6vH4OV2CWAN" role="2Oq$k0">
                        <ref role="3cqZAo" node="7rYs2gBcQxH" resolve="constraints" />
                      </node>
                      <node concept="liA8E" id="6vH4OV2CYFo" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6vH4OV2D15y" role="2OqNvi">
                <ref role="37wK5l" to="y62k:~Pair.getKey():java.lang.Object" resolve="getKey" />
              </node>
            </node>
            <node concept="37vLTw" id="6vH4OV2D7AU" role="3uHU7w">
              <ref role="3cqZAo" node="7rYs2gBcRTt" resolve="upperBound" />
            </node>
          </node>
          <node concept="3clFbS" id="6vH4OV2CT5J" role="3clFbx">
            <node concept="YS8fn" id="6vH4OV2Dcy$" role="3cqZAp">
              <node concept="2ShNRf" id="6vH4OV2Dczi" role="YScLw">
                <node concept="1pGfFk" id="6vH4OV2DdPT" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="3cpWs3" id="6vH4OV2Dfm1" role="37wK5m">
                    <node concept="Xl_RD" id="6vH4OV2DfHF" role="3uHU7w">
                      <property role="Xl_RC" value=")" />
                    </node>
                    <node concept="3cpWs3" id="6vH4OV2DeRP" role="3uHU7B">
                      <node concept="Xl_RD" id="6vH4OV2DdYW" role="3uHU7B">
                        <property role="Xl_RC" value="The last bound has to be equal to the upper bound (" />
                      </node>
                      <node concept="37vLTw" id="6vH4OV2DeUf" role="3uHU7w">
                        <ref role="3cqZAo" node="7rYs2gBcRTt" resolve="upperBound" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6vH4OV2DxWV" role="3cqZAp" />
        <node concept="2Gpval" id="6vH4OV2DyZF" role="3cqZAp">
          <node concept="2GrKxI" id="6vH4OV2DyZH" role="2Gsz3X">
            <property role="TrG5h" value="constraint" />
          </node>
          <node concept="37vLTw" id="6vH4OV2D$7Z" role="2GsD0m">
            <ref role="3cqZAo" node="7rYs2gBcQxH" resolve="constraints" />
          </node>
          <node concept="3clFbS" id="6vH4OV2DyZL" role="2LFqv$">
            <node concept="3cpWs8" id="6vH4OV2DJtn" role="3cqZAp">
              <node concept="3cpWsn" id="6vH4OV2DJto" role="3cpWs9">
                <property role="TrG5h" value="e" />
                <node concept="3uibUv" id="6vH4OV2DJtp" role="1tU5fm">
                  <ref role="3uigEE" to="m4b9:~Expression" resolve="Expression" />
                </node>
                <node concept="2OqwBi" id="6vH4OV2DP4T" role="33vP2m">
                  <node concept="2OqwBi" id="6vH4OV2DM4l" role="2Oq$k0">
                    <node concept="2ShNRf" id="6vH4OV2DJSQ" role="2Oq$k0">
                      <node concept="1pGfFk" id="6vH4OV2DKcj" role="2ShVmc">
                        <ref role="37wK5l" to="m4b9:~ExpressionBuilder.&lt;init&gt;(java.lang.String)" resolve="ExpressionBuilder" />
                        <node concept="2OqwBi" id="6vH4OV2DKiw" role="37wK5m">
                          <node concept="2GrUjf" id="6vH4OV2DKej" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="6vH4OV2DyZH" resolve="constraint" />
                          </node>
                          <node concept="liA8E" id="6vH4OV2DL9Z" role="2OqNvi">
                            <ref role="37wK5l" to="y62k:~Pair.getValue():java.lang.Object" resolve="getValue" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="6vH4OV2DNpW" role="2OqNvi">
                      <ref role="37wK5l" to="m4b9:~ExpressionBuilder.variable(java.lang.String):net.objecthunter.exp4j.ExpressionBuilder" resolve="variable" />
                      <node concept="Xl_RD" id="6vH4OV2DOeB" role="37wK5m">
                        <property role="Xl_RC" value="x" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6vH4OV2DS0F" role="2OqNvi">
                    <ref role="37wK5l" to="m4b9:~ExpressionBuilder.build():net.objecthunter.exp4j.Expression" resolve="build" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6vH4OV2D$$l" role="3cqZAp">
              <node concept="3clFbS" id="6vH4OV2D$$n" role="3clFbx">
                <node concept="YS8fn" id="6vH4OV2DZwm" role="3cqZAp">
                  <node concept="2ShNRf" id="6vH4OV2DZwR" role="YScLw">
                    <node concept="1pGfFk" id="6vH4OV2DZOh" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                      <node concept="3cpWs3" id="6vH4OV2E3p0" role="37wK5m">
                        <node concept="Xl_RD" id="6vH4OV2E829" role="3uHU7w">
                          <property role="Xl_RC" value=" is not valid. (How did you even achieved to type-in something ill-formed?)" />
                        </node>
                        <node concept="3cpWs3" id="6vH4OV2E0fd" role="3uHU7B">
                          <node concept="Xl_RD" id="6vH4OV2DZRC" role="3uHU7B">
                            <property role="Xl_RC" value="The function " />
                          </node>
                          <node concept="2OqwBi" id="6vH4OV2E0rd" role="3uHU7w">
                            <node concept="2GrUjf" id="6vH4OV2E0hB" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="6vH4OV2DyZH" resolve="constraint" />
                            </node>
                            <node concept="liA8E" id="6vH4OV2E1lO" role="2OqNvi">
                              <ref role="37wK5l" to="y62k:~Pair.getValue():java.lang.Object" resolve="getValue" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="6vH4OV2DYeU" role="3clFbw">
                <node concept="2OqwBi" id="6vH4OV2DYeW" role="3fr31v">
                  <node concept="2OqwBi" id="6vH4OV2DYeX" role="2Oq$k0">
                    <node concept="37vLTw" id="6vH4OV2DYeY" role="2Oq$k0">
                      <ref role="3cqZAo" node="6vH4OV2DJto" resolve="e" />
                    </node>
                    <node concept="liA8E" id="6vH4OV2DYeZ" role="2OqNvi">
                      <ref role="37wK5l" to="m4b9:~Expression.validate(boolean):net.objecthunter.exp4j.ValidationResult" resolve="validate" />
                      <node concept="3clFbT" id="6vH4OV2DYf0" role="37wK5m">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6vH4OV2DYf1" role="2OqNvi">
                    <ref role="37wK5l" to="m4b9:~ValidationResult.isValid():boolean" resolve="isValid" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6vH4OV2CQYm" role="1B3o_S" />
      <node concept="3cqZAl" id="6vH4OV2CS2i" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7rYs2gBcO3v" role="jymVt" />
    <node concept="3Tm1VV" id="7rYs2gBcNRD" role="1B3o_S" />
    <node concept="3uibUv" id="7rYs2gBcNSB" role="1zkMxy">
      <ref role="3uigEE" node="7rYs2gBaBv4" resolve="IDataSource" />
    </node>
    <node concept="3clFb_" id="7rYs2gBcNSU" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getNext" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="6vH4OV2_z4R" role="3clF46">
        <property role="TrG5h" value="currentTime" />
        <node concept="3uibUv" id="6vH4OV2_z4S" role="1tU5fm">
          <ref role="3uigEE" to="28m1:~LocalDateTime" resolve="LocalDateTime" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7rYs2gBcNSW" role="1B3o_S" />
      <node concept="17QB3L" id="7rYs2gBcNSX" role="3clF45" />
      <node concept="3clFbS" id="7rYs2gBcNSY" role="3clF47">
        <node concept="3cpWs8" id="7rYs2gBd0F0" role="3cqZAp">
          <node concept="3cpWsn" id="7rYs2gBd0F3" role="3cpWs9">
            <property role="TrG5h" value="tick" />
            <node concept="10P55v" id="6vH4OV2_Asi" role="1tU5fm" />
            <node concept="3cpWs3" id="6vH4OV2_Hb4" role="33vP2m">
              <node concept="1eOMI4" id="6vH4OV2A8m4" role="3uHU7w">
                <node concept="FJ1c_" id="6vH4OV2_MiR" role="1eOMHV">
                  <node concept="2OqwBi" id="6vH4OV2_Jzo" role="3uHU7B">
                    <node concept="37vLTw" id="6vH4OV2_HVV" role="2Oq$k0">
                      <ref role="3cqZAo" node="6vH4OV2_z4R" resolve="currentTime" />
                    </node>
                    <node concept="liA8E" id="6vH4OV2_Kw5" role="2OqNvi">
                      <ref role="37wK5l" to="28m1:~LocalDateTime.getMinute():int" resolve="getMinute" />
                    </node>
                  </node>
                  <node concept="10QFUN" id="6vH4OV2A6q0" role="3uHU7w">
                    <node concept="10P55v" id="6vH4OV2A7i3" role="10QFUM" />
                    <node concept="3cmrfG" id="6vH4OV2_WWD" role="10QFUP">
                      <property role="3cmrfH" value="60" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6vH4OV2_CsJ" role="3uHU7B">
                <node concept="37vLTw" id="6vH4OV2_BuH" role="2Oq$k0">
                  <ref role="3cqZAo" node="6vH4OV2_z4R" resolve="currentTime" />
                </node>
                <node concept="liA8E" id="6vH4OV2_F$5" role="2OqNvi">
                  <ref role="37wK5l" to="28m1:~LocalDateTime.getHour():int" resolve="getHour" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7rYs2gBd2o4" role="3cqZAp">
          <node concept="2GrKxI" id="7rYs2gBd2o6" role="2Gsz3X">
            <property role="TrG5h" value="constraint" />
          </node>
          <node concept="37vLTw" id="7rYs2gBd2Ig" role="2GsD0m">
            <ref role="3cqZAo" node="7rYs2gBcQxH" resolve="constraints" />
          </node>
          <node concept="3clFbS" id="7rYs2gBd2oa" role="2LFqv$">
            <node concept="3clFbJ" id="7rYs2gBd2VG" role="3cqZAp">
              <node concept="3eOVzh" id="7rYs2gBd3CM" role="3clFbw">
                <node concept="2OqwBi" id="7rYs2gBd3ZK" role="3uHU7w">
                  <node concept="2GrUjf" id="7rYs2gBd3Dz" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="7rYs2gBd2o6" resolve="constraint" />
                  </node>
                  <node concept="liA8E" id="7rYs2gBd5$D" role="2OqNvi">
                    <ref role="37wK5l" to="y62k:~Pair.getKey():java.lang.Object" resolve="getKey" />
                  </node>
                </node>
                <node concept="37vLTw" id="7rYs2gBd2Wc" role="3uHU7B">
                  <ref role="3cqZAo" node="7rYs2gBd0F3" resolve="tick" />
                </node>
              </node>
              <node concept="3clFbS" id="7rYs2gBd2VI" role="3clFbx">
                <node concept="3cpWs8" id="7rYs2gBdhXD" role="3cqZAp">
                  <node concept="3cpWsn" id="7rYs2gBdhXE" role="3cpWs9">
                    <property role="TrG5h" value="e" />
                    <node concept="3uibUv" id="7rYs2gBdhXF" role="1tU5fm">
                      <ref role="3uigEE" to="m4b9:~Expression" resolve="Expression" />
                    </node>
                    <node concept="2OqwBi" id="7rYs2gBd$Pi" role="33vP2m">
                      <node concept="2OqwBi" id="7rYs2gBdtMl" role="2Oq$k0">
                        <node concept="2OqwBi" id="7rYs2gBdpdx" role="2Oq$k0">
                          <node concept="2ShNRf" id="7rYs2gBdhYu" role="2Oq$k0">
                            <node concept="1pGfFk" id="7rYs2gBdii9" role="2ShVmc">
                              <ref role="37wK5l" to="m4b9:~ExpressionBuilder.&lt;init&gt;(java.lang.String)" resolve="ExpressionBuilder" />
                              <node concept="2OqwBi" id="7rYs2gBdirZ" role="37wK5m">
                                <node concept="2GrUjf" id="7rYs2gBdinQ" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="7rYs2gBd2o6" resolve="constraint" />
                                </node>
                                <node concept="liA8E" id="7rYs2gBdji3" role="2OqNvi">
                                  <ref role="37wK5l" to="y62k:~Pair.getValue():java.lang.Object" resolve="getValue" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="7rYs2gBdrdo" role="2OqNvi">
                            <ref role="37wK5l" to="m4b9:~ExpressionBuilder.variable(java.lang.String):net.objecthunter.exp4j.ExpressionBuilder" resolve="variable" />
                            <node concept="Xl_RD" id="7rYs2gBdsiQ" role="37wK5m">
                              <property role="Xl_RC" value="x" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7rYs2gBdzAm" role="2OqNvi">
                          <ref role="37wK5l" to="m4b9:~ExpressionBuilder.build():net.objecthunter.exp4j.Expression" resolve="build" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7rYs2gBdFKa" role="2OqNvi">
                        <ref role="37wK5l" to="m4b9:~Expression.setVariable(java.lang.String,double):net.objecthunter.exp4j.Expression" resolve="setVariable" />
                        <node concept="Xl_RD" id="7rYs2gBdKBa" role="37wK5m">
                          <property role="Xl_RC" value="x" />
                        </node>
                        <node concept="37vLTw" id="7rYs2gBdNdG" role="37wK5m">
                          <ref role="3cqZAo" node="7rYs2gBd0F3" resolve="tick" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="6vH4OV2FSfA" role="3cqZAp">
                  <node concept="3cpWsn" id="6vH4OV2FSfD" role="3cpWs9">
                    <property role="TrG5h" value="value" />
                    <node concept="10P55v" id="6vH4OV2FSf$" role="1tU5fm" />
                    <node concept="3K4zz7" id="6vH4OV2FUlB" role="33vP2m">
                      <node concept="2OqwBi" id="6vH4OV2FUsL" role="3K4E3e">
                        <node concept="37vLTw" id="6vH4OV2FUpf" role="2Oq$k0">
                          <ref role="3cqZAo" node="7rYs2gBdhXE" resolve="e" />
                        </node>
                        <node concept="liA8E" id="6vH4OV2FUza" role="2OqNvi">
                          <ref role="37wK5l" to="m4b9:~Expression.evaluate():double" resolve="evaluate" />
                        </node>
                      </node>
                      <node concept="3cpWs3" id="6vH4OV2GcPe" role="3K4GZi">
                        <node concept="2OqwBi" id="6vH4OV2GiZm" role="3uHU7w">
                          <node concept="2OqwBi" id="6vH4OV2Giwe" role="2Oq$k0">
                            <node concept="37vLTw" id="6vH4OV2GhAB" role="2Oq$k0">
                              <ref role="3cqZAo" node="6vH4OV2FIqQ" resolve="noiseGenerator" />
                            </node>
                            <node concept="liA8E" id="6vH4OV2GiC4" role="2OqNvi">
                              <ref role="37wK5l" node="6vH4OV2FBey" resolve="bringTheNoise" />
                            </node>
                          </node>
                          <node concept="liA8E" id="6vH4OV2GjzP" role="2OqNvi">
                            <ref role="37wK5l" to="xlxw:~BigDecimal.doubleValue():double" resolve="doubleValue" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="6vH4OV2FWoz" role="3uHU7B">
                          <node concept="37vLTw" id="6vH4OV2FWaM" role="2Oq$k0">
                            <ref role="3cqZAo" node="7rYs2gBdhXE" resolve="e" />
                          </node>
                          <node concept="liA8E" id="6vH4OV2FWva" role="2OqNvi">
                            <ref role="37wK5l" to="m4b9:~Expression.evaluate():double" resolve="evaluate" />
                          </node>
                        </node>
                      </node>
                      <node concept="1eOMI4" id="6vH4OV2FTBt" role="3K4Cdx">
                        <node concept="3clFbC" id="6vH4OV2FTVJ" role="1eOMHV">
                          <node concept="10Nm6u" id="6vH4OV2FU2v" role="3uHU7w" />
                          <node concept="37vLTw" id="6vH4OV2FTCZ" role="3uHU7B">
                            <ref role="3cqZAo" node="6vH4OV2FIqQ" resolve="noiseGenerator" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6JiemAxM$WH" role="3cqZAp">
                  <node concept="2YIFZM" id="6JiemAxMDlB" role="3cqZAk">
                    <ref role="37wK5l" to="wyt6:~Double.toString(double):java.lang.String" resolve="toString" />
                    <ref role="1Pybhc" to="wyt6:~Double" resolve="Double" />
                    <node concept="37vLTw" id="6vH4OV2GnPs" role="37wK5m">
                      <ref role="3cqZAo" node="6vH4OV2FSfD" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7rYs2gBd22o" role="3cqZAp" />
        <node concept="3cpWs6" id="7rYs2gBd0GD" role="3cqZAp">
          <node concept="Xl_RD" id="7rYs2gBd0Hd" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7rYs2gBcNSZ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6vH4OV2FyHj">
    <property role="TrG5h" value="NoiseGenerator" />
    <node concept="312cEg" id="6vH4OV2FyIz" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="min" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="6vH4OV2FyIg" role="1B3o_S" />
      <node concept="3uibUv" id="6vH4OV2FyIr" role="1tU5fm">
        <ref role="3uigEE" to="xlxw:~BigDecimal" resolve="BigDecimal" />
      </node>
    </node>
    <node concept="312cEg" id="6vH4OV2FyIL" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="max" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="6vH4OV2FyIM" role="1B3o_S" />
      <node concept="3uibUv" id="6vH4OV2FyIN" role="1tU5fm">
        <ref role="3uigEE" to="xlxw:~BigDecimal" resolve="BigDecimal" />
      </node>
    </node>
    <node concept="312cEg" id="6vH4OV2FyJ4" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="scale" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="6vH4OV2FyJ5" role="1B3o_S" />
      <node concept="10Oyi0" id="6vH4OV2FyJK" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="6vH4OV2FyK3" role="jymVt" />
    <node concept="2tJIrI" id="6vH4OV2FyKe" role="jymVt" />
    <node concept="3Tm1VV" id="6vH4OV2FyHk" role="1B3o_S" />
    <node concept="3clFbW" id="6vH4OV2FyKA" role="jymVt">
      <node concept="3cqZAl" id="6vH4OV2FyKB" role="3clF45" />
      <node concept="3Tm1VV" id="6vH4OV2FyKC" role="1B3o_S" />
      <node concept="3clFbS" id="6vH4OV2FyKE" role="3clF47">
        <node concept="3clFbF" id="6vH4OV2FyKI" role="3cqZAp">
          <node concept="37vLTI" id="6vH4OV2FyKK" role="3clFbG">
            <node concept="37vLTw" id="6vH4OV2FyKO" role="37vLTJ">
              <ref role="3cqZAo" node="6vH4OV2FyIz" resolve="min" />
            </node>
            <node concept="2ShNRf" id="6vH4OV2Fzji" role="37vLTx">
              <node concept="1pGfFk" id="6vH4OV2FzHz" role="2ShVmc">
                <ref role="37wK5l" to="xlxw:~BigDecimal.&lt;init&gt;(java.lang.String)" resolve="BigDecimal" />
                <node concept="37vLTw" id="6vH4OV2FzL4" role="37wK5m">
                  <ref role="3cqZAo" node="6vH4OV2FyKH" resolve="min1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6vH4OV2FyKS" role="3cqZAp">
          <node concept="37vLTI" id="6vH4OV2FyKU" role="3clFbG">
            <node concept="37vLTw" id="6vH4OV2FyKY" role="37vLTJ">
              <ref role="3cqZAo" node="6vH4OV2FyIL" resolve="max" />
            </node>
            <node concept="2ShNRf" id="6vH4OV2FzXr" role="37vLTx">
              <node concept="1pGfFk" id="6vH4OV2F$nG" role="2ShVmc">
                <ref role="37wK5l" to="xlxw:~BigDecimal.&lt;init&gt;(java.lang.String)" resolve="BigDecimal" />
                <node concept="37vLTw" id="6vH4OV2F$r3" role="37wK5m">
                  <ref role="3cqZAo" node="6vH4OV2FyKR" resolve="max1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6vH4OV2FyL2" role="3cqZAp">
          <node concept="37vLTI" id="6vH4OV2FyL4" role="3clFbG">
            <node concept="37vLTw" id="6vH4OV2FyL8" role="37vLTJ">
              <ref role="3cqZAo" node="6vH4OV2FyJ4" resolve="scale" />
            </node>
            <node concept="37vLTw" id="6vH4OV2FyL9" role="37vLTx">
              <ref role="3cqZAo" node="6vH4OV2FyL1" resolve="scale1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6vH4OV2FyKH" role="3clF46">
        <property role="TrG5h" value="min1" />
        <node concept="17QB3L" id="6vH4OV2FyXG" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6vH4OV2FyKR" role="3clF46">
        <property role="TrG5h" value="max1" />
        <node concept="17QB3L" id="6vH4OV2Fz4S" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6vH4OV2FyL1" role="3clF46">
        <property role="TrG5h" value="scale1" />
        <node concept="10Oyi0" id="6vH4OV2FyL0" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6vH4OV2F$JK" role="jymVt" />
    <node concept="3clFb_" id="6vH4OV2FBey" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="bringTheNoise" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6vH4OV2FBe_" role="3clF47">
        <node concept="3cpWs8" id="6vH4OV2FBr2" role="3cqZAp">
          <node concept="3cpWsn" id="6vH4OV2FBr3" role="3cpWs9">
            <property role="TrG5h" value="range" />
            <node concept="3uibUv" id="6vH4OV2FBr4" role="1tU5fm">
              <ref role="3uigEE" to="xlxw:~BigDecimal" resolve="BigDecimal" />
            </node>
            <node concept="2OqwBi" id="6vH4OV2FB$I" role="33vP2m">
              <node concept="37vLTw" id="6vH4OV2FBsr" role="2Oq$k0">
                <ref role="3cqZAo" node="6vH4OV2FyIz" resolve="min" />
              </node>
              <node concept="liA8E" id="6vH4OV2FDxZ" role="2OqNvi">
                <ref role="37wK5l" to="xlxw:~BigDecimal.add(java.math.BigDecimal):java.math.BigDecimal" resolve="add" />
                <node concept="2OqwBi" id="6vH4OV2FDNI" role="37wK5m">
                  <node concept="37vLTw" id="6vH4OV2FDFp" role="2Oq$k0">
                    <ref role="3cqZAo" node="6vH4OV2FyIL" resolve="max" />
                  </node>
                  <node concept="liA8E" id="6vH4OV2FEfX" role="2OqNvi">
                    <ref role="37wK5l" to="xlxw:~BigDecimal.subtract(java.math.BigDecimal):java.math.BigDecimal" resolve="subtract" />
                    <node concept="37vLTw" id="6vH4OV2FEpR" role="37wK5m">
                      <ref role="3cqZAo" node="6vH4OV2FyIz" resolve="min" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6vH4OV2FBmP" role="3cqZAp">
          <node concept="3cpWsn" id="6vH4OV2FBmQ" role="3cpWs9">
            <property role="TrG5h" value="random" />
            <node concept="3uibUv" id="6vH4OV2FBmR" role="1tU5fm">
              <ref role="3uigEE" to="xlxw:~BigDecimal" resolve="BigDecimal" />
            </node>
            <node concept="2OqwBi" id="6vH4OV2FECF" role="33vP2m">
              <node concept="2ShNRf" id="6vH4OV2FBmS" role="2Oq$k0">
                <node concept="1pGfFk" id="6vH4OV2FBmT" role="2ShVmc">
                  <ref role="37wK5l" to="xlxw:~BigDecimal.&lt;init&gt;(double)" resolve="BigDecimal" />
                  <node concept="2OqwBi" id="6vH4OV2FBmU" role="37wK5m">
                    <node concept="2YIFZM" id="6vH4OV2FBmV" role="2Oq$k0">
                      <ref role="37wK5l" to="5zyv:~ThreadLocalRandom.current():java.util.concurrent.ThreadLocalRandom" resolve="current" />
                      <ref role="1Pybhc" to="5zyv:~ThreadLocalRandom" resolve="ThreadLocalRandom" />
                    </node>
                    <node concept="liA8E" id="6vH4OV2FBmW" role="2OqNvi">
                      <ref role="37wK5l" to="5zyv:~ThreadLocalRandom.nextDouble():double" resolve="nextDouble" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6vH4OV2FESE" role="2OqNvi">
                <ref role="37wK5l" to="xlxw:~BigDecimal.multiply(java.math.BigDecimal):java.math.BigDecimal" resolve="multiply" />
                <node concept="37vLTw" id="6vH4OV2FEUZ" role="37wK5m">
                  <ref role="3cqZAo" node="6vH4OV2FBr3" resolve="range" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6vH4OV2FG7E" role="3cqZAp">
          <node concept="2OqwBi" id="6vH4OV2FGDo" role="3cqZAk">
            <node concept="37vLTw" id="6vH4OV2FGqY" role="2Oq$k0">
              <ref role="3cqZAo" node="6vH4OV2FBmQ" resolve="random" />
            </node>
            <node concept="liA8E" id="6vH4OV2FGZT" role="2OqNvi">
              <ref role="37wK5l" to="xlxw:~BigDecimal.setScale(int,int):java.math.BigDecimal" resolve="setScale" />
              <node concept="37vLTw" id="6vH4OV2FHiP" role="37wK5m">
                <ref role="3cqZAo" node="6vH4OV2FyJ4" resolve="scale" />
              </node>
              <node concept="10M0yZ" id="6vH4OV2GHNW" role="37wK5m">
                <ref role="3cqZAo" to="xlxw:~BigDecimal.ROUND_HALF_UP" resolve="ROUND_HALF_UP" />
                <ref role="1PxDUh" to="xlxw:~BigDecimal" resolve="BigDecimal" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6vH4OV2FB6b" role="1B3o_S" />
      <node concept="3uibUv" id="6vH4OV2FBeg" role="3clF45">
        <ref role="3uigEE" to="xlxw:~BigDecimal" resolve="BigDecimal" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1nZ6g$XSYF2">
    <property role="TrG5h" value="JSON" />
    <node concept="312cEg" id="1nZ6g$XYlm1" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="filepath" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="1nZ6g$XYlgZ" role="1B3o_S" />
      <node concept="17QB3L" id="1nZ6g$XYllU" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1nZ6g$XYl_0" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="noiseGenerator" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="1nZ6g$XYlvT" role="1B3o_S" />
      <node concept="3uibUv" id="1nZ6g$XYl$R" role="1tU5fm">
        <ref role="3uigEE" node="6vH4OV2FyHj" resolve="NoiseGenerator" />
      </node>
    </node>
    <node concept="2tJIrI" id="1nZ6g$XSYXQ" role="jymVt" />
    <node concept="3clFbW" id="1nZ6g$XSZgd" role="jymVt">
      <node concept="3cqZAl" id="1nZ6g$XSZge" role="3clF45" />
      <node concept="3clFbS" id="1nZ6g$XSZgg" role="3clF47">
        <node concept="3clFbF" id="1XfQ9HmWVNF" role="3cqZAp">
          <node concept="37vLTI" id="1XfQ9HmWWtm" role="3clFbG">
            <node concept="37vLTw" id="1XfQ9HmWWCt" role="37vLTx">
              <ref role="3cqZAo" node="1nZ6g$XSZgz" resolve="filepath" />
            </node>
            <node concept="2OqwBi" id="1XfQ9HmWVS2" role="37vLTJ">
              <node concept="Xjq3P" id="1XfQ9HmWVNE" role="2Oq$k0" />
              <node concept="2OwXpG" id="1XfQ9HmWVYw" role="2OqNvi">
                <ref role="2Oxat5" node="1nZ6g$XYlm1" resolve="filepath" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1nZ6g$XSZg1" role="1B3o_S" />
      <node concept="37vLTG" id="1nZ6g$XSZgz" role="3clF46">
        <property role="TrG5h" value="filepath" />
        <node concept="17QB3L" id="1nZ6g$XSZgy" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1nZ6g$XSZNZ" role="jymVt" />
    <node concept="3clFb_" id="1nZ6g$XSZOG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getReadings" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1nZ6g$XSZOJ" role="3clF47">
        <node concept="3cpWs8" id="1nZ6g$XYrxW" role="3cqZAp">
          <node concept="3cpWsn" id="1nZ6g$XYrxX" role="3cpWs9">
            <property role="TrG5h" value="liste" />
            <node concept="3uibUv" id="1nZ6g$XYrxY" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="1nZ6g$XYrxZ" role="11_B2D">
                <ref role="3uigEE" node="5qdpREsDlxB" resolve="ReplayRecord" />
              </node>
            </node>
            <node concept="2ShNRf" id="1nZ6g$XYry0" role="33vP2m">
              <node concept="HV5vD" id="1nZ6g$XYry1" role="2ShVmc">
                <ref role="HV5vE" to="33ny:~ArrayList" resolve="ArrayList" />
                <node concept="3uibUv" id="1nZ6g$XYry2" role="HU9BZ">
                  <ref role="3uigEE" node="5qdpREsDlxB" resolve="ReplayRecord" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1nZ6g$XYqCp" role="3cqZAp">
          <node concept="3cpWsn" id="1nZ6g$XYqCq" role="3cpWs9">
            <property role="TrG5h" value="fr" />
            <node concept="3uibUv" id="1nZ6g$XYqCr" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~FileReader" resolve="FileReader" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1nZ6g$XYptF" role="3cqZAp" />
        <node concept="SfApY" id="1nZ6g$XYpPR" role="3cqZAp">
          <node concept="3clFbS" id="1nZ6g$XYpPS" role="SfCbr">
            <node concept="3clFbF" id="1nZ6g$XYpPT" role="3cqZAp">
              <node concept="37vLTI" id="1nZ6g$XYpPU" role="3clFbG">
                <node concept="2ShNRf" id="1nZ6g$XYpPV" role="37vLTx">
                  <node concept="1pGfFk" id="1nZ6g$XYpPW" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~FileReader.&lt;init&gt;(java.lang.String)" resolve="FileReader" />
                    <node concept="37vLTw" id="1nZ6g$XYpPX" role="37wK5m">
                      <ref role="3cqZAo" node="1nZ6g$XYlm1" resolve="filepath" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1nZ6g$XYtvc" role="37vLTJ">
                  <ref role="3cqZAo" node="1nZ6g$XYqCq" resolve="fr" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="1nZ6g$XYpPZ" role="TEbGg">
            <node concept="3cpWsn" id="1nZ6g$XYpQ0" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="1nZ6g$XYpQ1" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~FileNotFoundException" resolve="FileNotFoundException" />
              </node>
            </node>
            <node concept="3clFbS" id="1nZ6g$XYpQ2" role="TDEfX">
              <node concept="3clFbF" id="1nZ6g$XYpQ3" role="3cqZAp">
                <node concept="2OqwBi" id="1nZ6g$XYpQ4" role="3clFbG">
                  <node concept="10M0yZ" id="1nZ6g$XYpQ5" role="2Oq$k0">
                    <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                    <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  </node>
                  <node concept="liA8E" id="1nZ6g$XYpQ6" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.Object):void" resolve="println" />
                    <node concept="37vLTw" id="1nZ6g$XYpQ7" role="37wK5m">
                      <ref role="3cqZAo" node="1nZ6g$XYpQ0" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1nZ6g$XYpQ8" role="3cqZAp">
                <node concept="37vLTw" id="1nZ6g$XYtbj" role="3cqZAk">
                  <ref role="3cqZAo" node="1nZ6g$XYrxX" resolve="liste" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1nZ6g$XYtTJ" role="3cqZAp">
          <node concept="3cpWsn" id="1nZ6g$XYtTK" role="3cpWs9">
            <property role="TrG5h" value="br" />
            <node concept="3uibUv" id="1nZ6g$XYtTL" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~BufferedReader" resolve="BufferedReader" />
            </node>
            <node concept="2ShNRf" id="1nZ6g$XYtTM" role="33vP2m">
              <node concept="1pGfFk" id="1nZ6g$XYtTN" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~BufferedReader.&lt;init&gt;(java.io.Reader)" resolve="BufferedReader" />
                <node concept="37vLTw" id="1nZ6g$XYtTO" role="37wK5m">
                  <ref role="3cqZAo" node="1nZ6g$XYqCq" resolve="fr" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1nZ6g$XT8PE" role="3cqZAp">
          <node concept="3cpWsn" id="1nZ6g$XT8PH" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="1nZ6g$XT8PC" role="1tU5fm" />
            <node concept="Xl_RD" id="1nZ6g$XT927" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1XfQ9HmWQTm" role="3cqZAp" />
        <node concept="SfApY" id="1nZ6g$XYWCn" role="3cqZAp">
          <node concept="3clFbS" id="1nZ6g$XT1uE" role="SfCbr">
            <node concept="3cpWs8" id="1nZ6g$XT61P" role="3cqZAp">
              <node concept="3cpWsn" id="1nZ6g$XT61Q" role="3cpWs9">
                <property role="TrG5h" value="line" />
                <node concept="17QB3L" id="1nZ6g$XT61R" role="1tU5fm" />
                <node concept="2OqwBi" id="1nZ6g$XT61S" role="33vP2m">
                  <node concept="37vLTw" id="1nZ6g$XYuZi" role="2Oq$k0">
                    <ref role="3cqZAo" node="1nZ6g$XYtTK" resolve="br" />
                  </node>
                  <node concept="liA8E" id="1nZ6g$XT61U" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~BufferedReader.readLine():java.lang.String" resolve="readLine" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1nZ6g$XT8gu" role="3cqZAp" />
            <node concept="2$JKZl" id="1nZ6g$XT8rn" role="3cqZAp">
              <node concept="3clFbS" id="1nZ6g$XT8rp" role="2LFqv$">
                <node concept="3clFbF" id="1nZ6g$XT95c" role="3cqZAp">
                  <node concept="d57v9" id="1nZ6g$XT9h9" role="3clFbG">
                    <node concept="37vLTw" id="1nZ6g$XT9kt" role="37vLTx">
                      <ref role="3cqZAo" node="1nZ6g$XT61Q" resolve="line" />
                    </node>
                    <node concept="37vLTw" id="1nZ6g$XT95b" role="37vLTJ">
                      <ref role="3cqZAo" node="1nZ6g$XT8PH" resolve="text" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1nZ6g$XT9BK" role="3cqZAp">
                  <node concept="37vLTI" id="1nZ6g$XT9S6" role="3clFbG">
                    <node concept="2OqwBi" id="1nZ6g$XTbOZ" role="37vLTx">
                      <node concept="37vLTw" id="1nZ6g$XYvcE" role="2Oq$k0">
                        <ref role="3cqZAo" node="1nZ6g$XYtTK" resolve="br" />
                      </node>
                      <node concept="liA8E" id="1nZ6g$XTc8R" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~BufferedReader.readLine():java.lang.String" resolve="readLine" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="1nZ6g$XT9BI" role="37vLTJ">
                      <ref role="3cqZAo" node="1nZ6g$XT61Q" resolve="line" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="1nZ6g$XT8Fe" role="2$JKZa">
                <node concept="10Nm6u" id="1nZ6g$XT8Il" role="3uHU7w" />
                <node concept="37vLTw" id="1nZ6g$XT8vs" role="3uHU7B">
                  <ref role="3cqZAo" node="1nZ6g$XT61Q" resolve="line" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1nZ6g$XTDxF" role="3cqZAp" />
          </node>
          <node concept="TDmWw" id="1nZ6g$XT1uF" role="TEbGg">
            <node concept="3cpWsn" id="1nZ6g$XT1uH" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="1nZ6g$XT6ch" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
            <node concept="3clFbS" id="1nZ6g$XT1uL" role="TDEfX">
              <node concept="3clFbF" id="1nZ6g$XTEqp" role="3cqZAp">
                <node concept="2OqwBi" id="1nZ6g$XTEqq" role="3clFbG">
                  <node concept="10M0yZ" id="1nZ6g$XTEqr" role="2Oq$k0">
                    <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                    <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                  </node>
                  <node concept="liA8E" id="1nZ6g$XTEqs" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.Object):void" resolve="println" />
                    <node concept="37vLTw" id="1nZ6g$XTEqt" role="37wK5m">
                      <ref role="3cqZAo" node="1nZ6g$XT1uH" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1nZ6g$XYXP0" role="3cqZAp" />
        <node concept="SfApY" id="1nZ6g$XTFM1" role="3cqZAp">
          <node concept="3clFbS" id="1nZ6g$XTFM2" role="SfCbr">
            <node concept="3clFbF" id="1nZ6g$XTGbT" role="3cqZAp">
              <node concept="2OqwBi" id="1nZ6g$XTGmL" role="3clFbG">
                <node concept="37vLTw" id="1nZ6g$XYwja" role="2Oq$k0">
                  <ref role="3cqZAo" node="1nZ6g$XYtTK" resolve="br" />
                </node>
                <node concept="liA8E" id="1nZ6g$XTGDc" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~BufferedReader.close():void" resolve="close" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="1nZ6g$XTFM3" role="TEbGg">
            <node concept="3cpWsn" id="1nZ6g$XTFM4" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="1nZ6g$XTGQ5" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
            <node concept="3clFbS" id="1nZ6g$XTFM6" role="TDEfX" />
          </node>
        </node>
        <node concept="3clFbH" id="1nZ6g$XYY8t" role="3cqZAp" />
        <node concept="3cpWs8" id="1XfQ9HmVzi6" role="3cqZAp">
          <node concept="3cpWsn" id="1XfQ9HmVzi7" role="3cpWs9">
            <property role="TrG5h" value="parser" />
            <node concept="3uibUv" id="1XfQ9HmVzi8" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonParser" resolve="JsonParser" />
            </node>
            <node concept="2ShNRf" id="1XfQ9HmVz$C" role="33vP2m">
              <node concept="HV5vD" id="1XfQ9HmV$Th" role="2ShVmc">
                <ref role="HV5vE" to="wy2b:~JsonParser" resolve="JsonParser" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1XfQ9HmV_gK" role="3cqZAp">
          <node concept="3cpWsn" id="1XfQ9HmV_gL" role="3cpWs9">
            <property role="TrG5h" value="object" />
            <node concept="3uibUv" id="1XfQ9HmV_gM" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
            <node concept="2OqwBi" id="1XfQ9HmVA9A" role="33vP2m">
              <node concept="2OqwBi" id="1XfQ9HmV_IR" role="2Oq$k0">
                <node concept="37vLTw" id="1XfQ9HmV_DF" role="2Oq$k0">
                  <ref role="3cqZAo" node="1XfQ9HmVzi7" resolve="parser" />
                </node>
                <node concept="liA8E" id="1XfQ9HmV_Vn" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonParser.parse(java.lang.String):com.google.gson.JsonElement" resolve="parse" />
                  <node concept="37vLTw" id="1XfQ9HmWRWM" role="37wK5m">
                    <ref role="3cqZAo" node="1nZ6g$XT8PH" resolve="text" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1XfQ9HmVBaP" role="2OqNvi">
                <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonObject():com.google.gson.JsonObject" resolve="getAsJsonObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1XfQ9HmWSpJ" role="3cqZAp">
          <node concept="3cpWsn" id="1XfQ9HmWSpM" role="3cpWs9">
            <property role="TrG5h" value="name" />
            <node concept="17QB3L" id="1XfQ9HmWWQy" role="1tU5fm" />
            <node concept="2OqwBi" id="1XfQ9HmWWVP" role="33vP2m">
              <node concept="2OqwBi" id="1XfQ9HmWSWs" role="2Oq$k0">
                <node concept="37vLTw" id="1XfQ9HmWSPg" role="2Oq$k0">
                  <ref role="3cqZAo" node="1XfQ9HmV_gL" resolve="object" />
                </node>
                <node concept="liA8E" id="1XfQ9HmWT5i" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonObject.get(java.lang.String):com.google.gson.JsonElement" resolve="get" />
                  <node concept="Xl_RD" id="1XfQ9HmWV8f" role="37wK5m">
                    <property role="Xl_RC" value="bn" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1XfQ9HmWXa$" role="2OqNvi">
                <ref role="37wK5l" to="wy2b:~JsonElement.getAsString():java.lang.String" resolve="getAsString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1XfQ9HmWY1Q" role="3cqZAp">
          <node concept="3cpWsn" id="1XfQ9HmWY1R" role="3cpWs9">
            <property role="TrG5h" value="values" />
            <node concept="3uibUv" id="1XfQ9HmWY1S" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonArray" resolve="JsonArray" />
            </node>
            <node concept="2OqwBi" id="1XfQ9HmWYRV" role="33vP2m">
              <node concept="2OqwBi" id="1XfQ9HmWY$N" role="2Oq$k0">
                <node concept="37vLTw" id="1XfQ9HmWYwc" role="2Oq$k0">
                  <ref role="3cqZAo" node="1XfQ9HmV_gL" resolve="object" />
                </node>
                <node concept="liA8E" id="1XfQ9HmWYDX" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonObject.get(java.lang.String):com.google.gson.JsonElement" resolve="get" />
                  <node concept="Xl_RD" id="1XfQ9HmWYJH" role="37wK5m">
                    <property role="Xl_RC" value="e" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1XfQ9HmWZ6F" role="2OqNvi">
                <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonArray():com.google.gson.JsonArray" resolve="getAsJsonArray" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1XfQ9HmXiSq" role="3cqZAp" />
        <node concept="2Gpval" id="1XfQ9HmWZ_s" role="3cqZAp">
          <node concept="2GrKxI" id="1XfQ9HmWZ_u" role="2Gsz3X">
            <property role="TrG5h" value="entry" />
          </node>
          <node concept="37vLTw" id="1XfQ9HmX0a8" role="2GsD0m">
            <ref role="3cqZAo" node="1XfQ9HmWY1R" resolve="values" />
          </node>
          <node concept="3clFbS" id="1XfQ9HmWZ_y" role="2LFqv$">
            <node concept="3cpWs8" id="1XfQ9HmXawH" role="3cqZAp">
              <node concept="3cpWsn" id="1XfQ9HmXawI" role="3cpWs9">
                <property role="TrG5h" value="o" />
                <node concept="3uibUv" id="1XfQ9HmXawJ" role="1tU5fm">
                  <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
                </node>
                <node concept="2OqwBi" id="1XfQ9HmXaZ4" role="33vP2m">
                  <node concept="2GrUjf" id="1XfQ9HmXaV6" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1XfQ9HmWZ_u" resolve="entry" />
                  </node>
                  <node concept="liA8E" id="1XfQ9HmXbCa" role="2OqNvi">
                    <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonObject():com.google.gson.JsonObject" resolve="getAsJsonObject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1XfQ9HmX2zn" role="3cqZAp">
              <node concept="3cpWsn" id="1XfQ9HmX2zo" role="3cpWs9">
                <property role="TrG5h" value="value" />
                <node concept="17QB3L" id="1XfQ9HmX2zp" role="1tU5fm" />
                <node concept="1rXfSq" id="1XfQ9HmX2zq" role="33vP2m">
                  <ref role="37wK5l" node="1XfQ9HmX1zN" resolve="alterValue" />
                  <node concept="2OqwBi" id="1XfQ9HmXf8u" role="37wK5m">
                    <node concept="2OqwBi" id="1XfQ9HmX75q" role="2Oq$k0">
                      <node concept="37vLTw" id="1XfQ9HmXcmy" role="2Oq$k0">
                        <ref role="3cqZAo" node="1XfQ9HmXawI" resolve="o" />
                      </node>
                      <node concept="liA8E" id="1XfQ9HmXcJH" role="2OqNvi">
                        <ref role="37wK5l" to="wy2b:~JsonObject.get(java.lang.String):com.google.gson.JsonElement" resolve="get" />
                        <node concept="Xl_RD" id="1XfQ9HmXdJw" role="37wK5m">
                          <property role="Xl_RC" value="v" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="1XfQ9HmXhSj" role="2OqNvi">
                      <ref role="37wK5l" to="wy2b:~JsonElement.getAsString():java.lang.String" resolve="getAsString" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1XfQ9HmX2zu" role="3cqZAp" />
            <node concept="3clFbF" id="1XfQ9HmX2zv" role="3cqZAp">
              <node concept="2OqwBi" id="1XfQ9HmX2zw" role="3clFbG">
                <node concept="37vLTw" id="1XfQ9HmX2zx" role="2Oq$k0">
                  <ref role="3cqZAo" node="1nZ6g$XYrxX" resolve="liste" />
                </node>
                <node concept="liA8E" id="1XfQ9HmX2zy" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                  <node concept="2ShNRf" id="1XfQ9HmX2zz" role="37wK5m">
                    <node concept="1pGfFk" id="1XfQ9HmX2z$" role="2ShVmc">
                      <ref role="37wK5l" node="5qdpREsDl_D" resolve="ReplayRecord" />
                      <node concept="37vLTw" id="1XfQ9HmXkUK" role="37wK5m">
                        <ref role="3cqZAo" node="1XfQ9HmWSpM" resolve="name" />
                      </node>
                      <node concept="37vLTw" id="1XfQ9HmX2zC" role="37wK5m">
                        <ref role="3cqZAo" node="1XfQ9HmX2zo" resolve="value" />
                      </node>
                      <node concept="2OqwBi" id="1XfQ9HmXmLD" role="37wK5m">
                        <node concept="2OqwBi" id="1XfQ9HmXl_P" role="2Oq$k0">
                          <node concept="37vLTw" id="1XfQ9HmXlwi" role="2Oq$k0">
                            <ref role="3cqZAo" node="1XfQ9HmXawI" resolve="o" />
                          </node>
                          <node concept="liA8E" id="1XfQ9HmXlJo" role="2OqNvi">
                            <ref role="37wK5l" to="wy2b:~JsonObject.get(java.lang.String):com.google.gson.JsonElement" resolve="get" />
                            <node concept="Xl_RD" id="1XfQ9HmXmea" role="37wK5m">
                              <property role="Xl_RC" value="t" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="1XfQ9HmXomL" role="2OqNvi">
                          <ref role="37wK5l" to="wy2b:~JsonElement.getAsString():java.lang.String" resolve="getAsString" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1XfQ9HmWVn3" role="3cqZAp" />
        <node concept="3clFbH" id="1XfQ9HmWQ5_" role="3cqZAp" />
        <node concept="3cpWs6" id="1nZ6g$XYVGq" role="3cqZAp">
          <node concept="37vLTw" id="1nZ6g$XYWiY" role="3cqZAk">
            <ref role="3cqZAo" node="1nZ6g$XYrxX" resolve="liste" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1nZ6g$XYw0_" role="1B3o_S" />
      <node concept="3uibUv" id="1nZ6g$XYmUj" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1nZ6g$XYn7a" role="11_B2D">
          <ref role="3uigEE" node="5qdpREsDlxB" resolve="ReplayRecord" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1XfQ9HmX0Xt" role="jymVt" />
    <node concept="3clFb_" id="1XfQ9HmX1zN" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="alterValue" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1XfQ9HmX1zO" role="3clF47">
        <node concept="3clFbJ" id="1XfQ9HmX1zP" role="3cqZAp">
          <node concept="3y3z36" id="1XfQ9HmX1zQ" role="3clFbw">
            <node concept="10Nm6u" id="1XfQ9HmX1zR" role="3uHU7w" />
            <node concept="37vLTw" id="1XfQ9HmX1zS" role="3uHU7B">
              <ref role="3cqZAo" node="1nZ6g$XYl_0" resolve="noiseGenerator" />
            </node>
          </node>
          <node concept="3clFbS" id="1XfQ9HmX1zT" role="3clFbx">
            <node concept="3clFbH" id="1XfQ9HmX1zU" role="3cqZAp" />
            <node concept="SfApY" id="1XfQ9HmX1zV" role="3cqZAp">
              <node concept="3clFbS" id="1XfQ9HmX1zW" role="SfCbr">
                <node concept="3cpWs8" id="1XfQ9HmX1zX" role="3cqZAp">
                  <node concept="3cpWsn" id="1XfQ9HmX1zY" role="3cpWs9">
                    <property role="TrG5h" value="value" />
                    <node concept="10P55v" id="1XfQ9HmX1zZ" role="1tU5fm" />
                    <node concept="2YIFZM" id="1XfQ9HmX1$0" role="33vP2m">
                      <ref role="1Pybhc" to="wyt6:~Double" resolve="Double" />
                      <ref role="37wK5l" to="wyt6:~Double.parseDouble(java.lang.String):double" resolve="parseDouble" />
                      <node concept="37vLTw" id="1XfQ9HmX1$1" role="37wK5m">
                        <ref role="3cqZAo" node="1XfQ9HmX1$p" resolve="original" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="1XfQ9HmX1$2" role="3cqZAp">
                  <node concept="3cpWs3" id="1XfQ9HmX1$3" role="3cqZAk">
                    <node concept="Xl_RD" id="1XfQ9HmX1$4" role="3uHU7w" />
                    <node concept="1eOMI4" id="1XfQ9HmX1$5" role="3uHU7B">
                      <node concept="3cpWs3" id="1XfQ9HmX1$6" role="1eOMHV">
                        <node concept="37vLTw" id="1XfQ9HmX1$7" role="3uHU7B">
                          <ref role="3cqZAo" node="1XfQ9HmX1zY" resolve="value" />
                        </node>
                        <node concept="2OqwBi" id="1XfQ9HmX1$8" role="3uHU7w">
                          <node concept="2OqwBi" id="1XfQ9HmX1$9" role="2Oq$k0">
                            <node concept="37vLTw" id="1XfQ9HmX1$a" role="2Oq$k0">
                              <ref role="3cqZAo" node="1nZ6g$XYl_0" resolve="noiseGenerator" />
                            </node>
                            <node concept="liA8E" id="1XfQ9HmX1$b" role="2OqNvi">
                              <ref role="37wK5l" node="6vH4OV2FBey" resolve="bringTheNoise" />
                            </node>
                          </node>
                          <node concept="liA8E" id="1XfQ9HmX1$c" role="2OqNvi">
                            <ref role="37wK5l" to="xlxw:~BigDecimal.doubleValue():double" resolve="doubleValue" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="TDmWw" id="1XfQ9HmX1$d" role="TEbGg">
                <node concept="3cpWsn" id="1XfQ9HmX1$e" role="TDEfY">
                  <property role="TrG5h" value="e" />
                  <node concept="3uibUv" id="1XfQ9HmX1$f" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                  </node>
                </node>
                <node concept="3clFbS" id="1XfQ9HmX1$g" role="TDEfX">
                  <node concept="3cpWs6" id="1XfQ9HmX1$h" role="3cqZAp">
                    <node concept="37vLTw" id="1XfQ9HmX1$i" role="3cqZAk">
                      <ref role="3cqZAo" node="1XfQ9HmX1$p" resolve="original" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1XfQ9HmX1$j" role="9aQIa">
            <node concept="3clFbS" id="1XfQ9HmX1$k" role="9aQI4">
              <node concept="3cpWs6" id="1XfQ9HmX1$l" role="3cqZAp">
                <node concept="37vLTw" id="1XfQ9HmX1$m" role="3cqZAk">
                  <ref role="3cqZAo" node="1XfQ9HmX1$p" resolve="original" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1XfQ9HmX1$n" role="1B3o_S" />
      <node concept="17QB3L" id="1XfQ9HmX1$o" role="3clF45" />
      <node concept="37vLTG" id="1XfQ9HmX1$p" role="3clF46">
        <property role="TrG5h" value="original" />
        <node concept="17QB3L" id="1XfQ9HmX1$q" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1XfQ9HmX1ae" role="jymVt" />
    <node concept="2tJIrI" id="1XfQ9HmX1n0" role="jymVt" />
    <node concept="3Tm1VV" id="1nZ6g$XSYF3" role="1B3o_S" />
    <node concept="3uibUv" id="1nZ6g$XYl33" role="EKbjA">
      <ref role="3uigEE" node="5qdpREsDlwK" resolve="IReplay" />
    </node>
    <node concept="3clFb_" id="1nZ6g$XYEnz" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="setNoiseGenerator" />
      <node concept="3Tm1VV" id="1nZ6g$XYEn_" role="1B3o_S" />
      <node concept="3cqZAl" id="1nZ6g$XYEnA" role="3clF45" />
      <node concept="37vLTG" id="1nZ6g$XYEnB" role="3clF46">
        <property role="TrG5h" value="generator" />
        <node concept="3uibUv" id="1nZ6g$XYEnC" role="1tU5fm">
          <ref role="3uigEE" node="6vH4OV2FyHj" resolve="NoiseGenerator" />
        </node>
      </node>
      <node concept="3clFbS" id="1nZ6g$XYEnD" role="3clF47">
        <node concept="3clFbF" id="1nZ6g$XYEwk" role="3cqZAp">
          <node concept="37vLTI" id="1nZ6g$XYEQ4" role="3clFbG">
            <node concept="37vLTw" id="1nZ6g$XYEUA" role="37vLTx">
              <ref role="3cqZAo" node="1nZ6g$XYEnB" resolve="generator" />
            </node>
            <node concept="2OqwBi" id="1nZ6g$XYEzS" role="37vLTJ">
              <node concept="Xjq3P" id="1nZ6g$XYEwj" role="2Oq$k0" />
              <node concept="2OwXpG" id="1nZ6g$XYEFK" role="2OqNvi">
                <ref role="2Oxat5" node="1nZ6g$XYl_0" resolve="noiseGenerator" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1nZ6g$XYEnE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="5qdpREsDlwK">
    <property role="TrG5h" value="IReplay" />
    <node concept="3clFb_" id="5qdpREsDlJS" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getReadings" />
      <node concept="3clFbS" id="5qdpREsDlJV" role="3clF47" />
      <node concept="3Tm1VV" id="5qdpREsDlJW" role="1B3o_S" />
      <node concept="3uibUv" id="5qdpREsDlJu" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5qdpREsDlJH" role="11_B2D">
          <ref role="3uigEE" node="5qdpREsDlxB" resolve="ReplayRecord" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5qdpREsHDxn" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="setNoiseGenerator" />
      <node concept="3clFbS" id="5qdpREsHDxq" role="3clF47" />
      <node concept="3Tm1VV" id="5qdpREsHDxr" role="1B3o_S" />
      <node concept="3cqZAl" id="5qdpREsHDx4" role="3clF45" />
      <node concept="37vLTG" id="5qdpREsHDxV" role="3clF46">
        <property role="TrG5h" value="generator" />
        <node concept="3uibUv" id="5qdpREsHDxU" role="1tU5fm">
          <ref role="3uigEE" node="6vH4OV2FyHj" resolve="NoiseGenerator" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5qdpREsDlwL" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5qdpREsDlxB">
    <property role="TrG5h" value="ReplayRecord" />
    <node concept="312cEg" id="5qdpREsDlzn" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="name" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5qdpREsDlzo" role="1B3o_S" />
      <node concept="17QB3L" id="5qdpREsDlzp" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="5qdpREsDlza" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="value" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5qdpREsDlyX" role="1B3o_S" />
      <node concept="17QB3L" id="5qdpREsDlz2" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="5qdpREsDlzC" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="timestamp" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5qdpREsDlzD" role="1B3o_S" />
      <node concept="17QB3L" id="5qdpREsDlzE" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="5qdpREsDl$H" role="jymVt" />
    <node concept="2tJIrI" id="5qdpREsDl$S" role="jymVt" />
    <node concept="3Tm1VV" id="5qdpREsDlxC" role="1B3o_S" />
    <node concept="3clFbW" id="5qdpREsDl_D" role="jymVt">
      <node concept="3cqZAl" id="5qdpREsDl_E" role="3clF45" />
      <node concept="3Tm1VV" id="5qdpREsDl_F" role="1B3o_S" />
      <node concept="3clFbS" id="5qdpREsDl_H" role="3clF47">
        <node concept="3clFbF" id="5qdpREsDl_L" role="3cqZAp">
          <node concept="37vLTI" id="5qdpREsDl_N" role="3clFbG">
            <node concept="37vLTw" id="5qdpREsDl_R" role="37vLTJ">
              <ref role="3cqZAo" node="5qdpREsDlzn" resolve="name" />
            </node>
            <node concept="37vLTw" id="5qdpREsDl_S" role="37vLTx">
              <ref role="3cqZAo" node="5qdpREsDl_K" resolve="name1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5qdpREsDl_V" role="3cqZAp">
          <node concept="37vLTI" id="5qdpREsDl_X" role="3clFbG">
            <node concept="37vLTw" id="5qdpREsDlA1" role="37vLTJ">
              <ref role="3cqZAo" node="5qdpREsDlza" resolve="value" />
            </node>
            <node concept="37vLTw" id="5qdpREsDlA2" role="37vLTx">
              <ref role="3cqZAo" node="5qdpREsDl_U" resolve="value1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5qdpREsDlA5" role="3cqZAp">
          <node concept="37vLTI" id="5qdpREsDlA7" role="3clFbG">
            <node concept="37vLTw" id="5qdpREsDlAb" role="37vLTJ">
              <ref role="3cqZAo" node="5qdpREsDlzC" resolve="timestamp" />
            </node>
            <node concept="37vLTw" id="5qdpREsDlAc" role="37vLTx">
              <ref role="3cqZAo" node="5qdpREsDlA4" resolve="timestamp1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5qdpREsDl_K" role="3clF46">
        <property role="TrG5h" value="name1" />
        <node concept="17QB3L" id="5qdpREsDl_J" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5qdpREsDl_U" role="3clF46">
        <property role="TrG5h" value="value1" />
        <node concept="17QB3L" id="5qdpREsDl_T" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5qdpREsDlA4" role="3clF46">
        <property role="TrG5h" value="timestamp1" />
        <node concept="17QB3L" id="5qdpREsDlA3" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5qdpREsDlDb" role="jymVt" />
    <node concept="2tJIrI" id="5qdpREsDlDI" role="jymVt" />
    <node concept="3clFb_" id="5qdpREsDlFZ" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="17QB3L" id="5qdpREsDlG0" role="3clF45" />
      <node concept="3Tm1VV" id="5qdpREsDlG1" role="1B3o_S" />
      <node concept="3clFbS" id="5qdpREsDlG2" role="3clF47">
        <node concept="3clFbF" id="5qdpREsDlG3" role="3cqZAp">
          <node concept="37vLTw" id="5qdpREsDlFY" role="3clFbG">
            <ref role="3cqZAo" node="5qdpREsDlzn" resolve="name" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5qdpREsDlG5" role="jymVt">
      <property role="TrG5h" value="getValue" />
      <node concept="17QB3L" id="5qdpREsDlG6" role="3clF45" />
      <node concept="3Tm1VV" id="5qdpREsDlG7" role="1B3o_S" />
      <node concept="3clFbS" id="5qdpREsDlG8" role="3clF47">
        <node concept="3clFbF" id="5qdpREsDlG9" role="3cqZAp">
          <node concept="37vLTw" id="5qdpREsDlG4" role="3clFbG">
            <ref role="3cqZAo" node="5qdpREsDlza" resolve="value" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5qdpREsDlGb" role="jymVt">
      <property role="TrG5h" value="getTimestamp" />
      <node concept="17QB3L" id="5qdpREsDlGc" role="3clF45" />
      <node concept="3Tm1VV" id="5qdpREsDlGd" role="1B3o_S" />
      <node concept="3clFbS" id="5qdpREsDlGe" role="3clF47">
        <node concept="3clFbF" id="5qdpREsDlGf" role="3cqZAp">
          <node concept="37vLTw" id="5qdpREsDlGa" role="3clFbG">
            <ref role="3cqZAo" node="5qdpREsDlzC" resolve="timestamp" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

