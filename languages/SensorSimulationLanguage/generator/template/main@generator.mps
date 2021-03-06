<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:996c6b7b-3791-40af-aae2-84dfc153ac81(main@generator)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="7ew6" ref="r:e465baf8-de2e-4ffc-b433-5fde6234c8fc(SensorSimulationLanguage.structure)" />
    <import index="2ns9" ref="r:2ebb615b-7d7d-46a9-af25-8b8353fe1098(SensorSimulationLanguage.runtime.simulation)" />
    <import index="28m1" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.time(JDK/)" />
    <import index="6t7w" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.time.format(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="9nbq" ref="cc7fb470-7d0c-4aea-af2a-5d870ff3092f/java:org.influxdb(InfluxDB/)" />
    <import index="wthj" ref="cc7fb470-7d0c-4aea-af2a-5d870ff3092f/java:org.influxdb.dto(InfluxDB/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="xlxw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.math(JDK/)" />
    <import index="ynw8" ref="d102dc8e-32ba-4d10-8f95-be5a142b6537/java:com.appnexus.grafana.client(Grafana/)" />
    <import index="an4w" ref="d102dc8e-32ba-4d10-8f95-be5a142b6537/java:com.appnexus.grafana.client.models(Grafana/)" />
    <import index="v2y1" ref="d102dc8e-32ba-4d10-8f95-be5a142b6537/java:com.appnexus.grafana.configuration(Grafana/)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="7fo8" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.time.chrono(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
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
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
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
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="ln" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="propertyName" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="linkRole" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
    </language>
  </registry>
  <node concept="bUwia" id="3bvT0dJbuOS">
    <property role="TrG5h" value="main" />
    <node concept="3lhOvk" id="1Vo$Sn9Lv_v" role="3lj3bC">
      <ref role="30HIoZ" to="7ew6:3PPzdvo2E7B" resolve="Simulation" />
      <ref role="3lhOvi" node="1Vo$Sn9MHKj" resolve="reduce_Simulation" />
    </node>
    <node concept="3aamgX" id="3juagqJy5Pz" role="3acgRq">
      <ref role="30HIoZ" to="7ew6:3PPzdvo2E7J" resolve="SensorCollection" />
      <node concept="j$656" id="3juagqJy5P$" role="1lVwrX">
        <ref role="v9R2y" node="3juagqJy5Px" resolve="reduce_SensorCollection" />
      </node>
    </node>
    <node concept="3aamgX" id="7rYs2gB89_0" role="3acgRq">
      <ref role="30HIoZ" to="7ew6:7dKB6cHPzZ_" resolve="Markov" />
      <node concept="j$656" id="7rYs2gB89_1" role="1lVwrX">
        <ref role="v9R2y" node="7rYs2gB89$Y" resolve="reduce_Markov" />
      </node>
    </node>
    <node concept="3aamgX" id="7rYs2gB9b_p" role="3acgRq">
      <ref role="30HIoZ" to="7ew6:3PPzdvo2Egx" resolve="Random" />
      <node concept="j$656" id="7rYs2gB9b_q" role="1lVwrX">
        <ref role="v9R2y" node="7rYs2gB9b_n" resolve="reduce_Random" />
      </node>
    </node>
    <node concept="3aamgX" id="6ZqfKADUojr" role="3acgRq">
      <ref role="30HIoZ" to="7ew6:7dKB6cHP$0X" resolve="MarkovStates" />
      <node concept="j$656" id="6ZqfKADUojs" role="1lVwrX">
        <ref role="v9R2y" node="6ZqfKADUojp" resolve="reduce_MarkovStates" />
      </node>
    </node>
    <node concept="3aamgX" id="6JiemAxMPev" role="3acgRq">
      <ref role="30HIoZ" to="7ew6:7rYs2gBc2i3" resolve="ModellingLaw" />
      <node concept="j$656" id="6JiemAxMPew" role="1lVwrX">
        <ref role="v9R2y" node="6JiemAxMPet" resolve="reduce_ModellingLaw" />
      </node>
    </node>
    <node concept="3aamgX" id="5qdpREsHCW5" role="3acgRq">
      <ref role="30HIoZ" to="7ew6:6vH4OV2EW7y" resolve="Noise" />
      <node concept="j$656" id="5qdpREsHCW6" role="1lVwrX">
        <ref role="v9R2y" node="5qdpREsHCW3" resolve="reduce_NoiseReplay" />
      </node>
      <node concept="30G5F_" id="5qdpREsHFXY" role="30HLyM">
        <node concept="3clFbS" id="5qdpREsHFXZ" role="2VODD2">
          <node concept="3clFbF" id="5qdpREsHHj4" role="3cqZAp">
            <node concept="2OqwBi" id="5qdpREsHJGK" role="3clFbG">
              <node concept="2OqwBi" id="5qdpREsHJ4k" role="2Oq$k0">
                <node concept="30H73N" id="5qdpREsHIS7" role="2Oq$k0" />
                <node concept="1mfA1w" id="5qdpREsHJn$" role="2OqNvi" />
              </node>
              <node concept="1mIQ4w" id="5qdpREsHJXT" role="2OqNvi">
                <node concept="chp4Y" id="5qdpREsHK76" role="cj9EA">
                  <ref role="cht4Q" to="7ew6:1nZ6g$XRv_S" resolve="IReplay" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="6vH4OV2FwWc" role="3acgRq">
      <ref role="30HIoZ" to="7ew6:6vH4OV2EW7y" resolve="Noise" />
      <node concept="j$656" id="6vH4OV2FwWd" role="1lVwrX">
        <ref role="v9R2y" node="6vH4OV2FwWa" resolve="reduce_Noise" />
      </node>
    </node>
    <node concept="3aamgX" id="3QxC82ZIv$c" role="3acgRq">
      <ref role="30HIoZ" to="7ew6:5kA4vFmjO2P" resolve="ClassicGraph" />
      <node concept="j$656" id="3QxC82ZIv$d" role="1lVwrX">
        <ref role="v9R2y" node="3QxC82ZIv$a" resolve="reduce_ClassicGraph" />
      </node>
    </node>
    <node concept="3aamgX" id="5qdpREsEvBX" role="3acgRq">
      <ref role="30HIoZ" to="7ew6:3PPzdvo2Egy" resolve="CSV" />
      <node concept="j$656" id="5qdpREsEvBY" role="1lVwrX">
        <ref role="v9R2y" node="5qdpREsEvBV" resolve="reduce_CSV" />
      </node>
    </node>
    <node concept="3aamgX" id="5qdpREsEvEv" role="3acgRq">
      <ref role="30HIoZ" to="7ew6:1nZ6g$XRvAp" resolve="JSON" />
      <node concept="j$656" id="5qdpREsEvEw" role="1lVwrX">
        <ref role="v9R2y" node="5qdpREsEvEt" resolve="reduce_JSON" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1Vo$Sn9MHKj">
    <property role="TrG5h" value="reduce_Simulation" />
    <node concept="2tJIrI" id="36n0RtVzqB1" role="jymVt" />
    <node concept="2YIFZL" id="1Vo$Sn9MMnG" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="37vLTG" id="1Vo$Sn9MMnH" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="1Vo$Sn9MMnI" role="1tU5fm">
          <node concept="17QB3L" id="1Vo$Sn9MMnJ" role="10Q1$1" />
        </node>
      </node>
      <node concept="3cqZAl" id="1Vo$Sn9MMnK" role="3clF45" />
      <node concept="3Tm1VV" id="1Vo$Sn9MMnL" role="1B3o_S" />
      <node concept="3clFbS" id="1Vo$Sn9MMnM" role="3clF47">
        <node concept="3SKdUt" id="3QxC82ZJ1Aa" role="3cqZAp">
          <node concept="3SKdUq" id="3QxC82ZJ1Ac" role="3SKWNk">
            <property role="3SKdUp" value="settings" />
          </node>
        </node>
        <node concept="3cpWs8" id="3QxC82ZJ39q" role="3cqZAp">
          <node concept="3cpWsn" id="3QxC82ZJ39t" role="3cpWs9">
            <property role="TrG5h" value="GRAFANA_HOST" />
            <node concept="17QB3L" id="3QxC82ZJ39o" role="1tU5fm" />
            <node concept="Xl_RD" id="3QxC82ZJ3W3" role="33vP2m">
              <property role="Xl_RC" value="http://127.0.0.1:3000" />
              <node concept="17Uvod" id="pAhsp7uPqd" role="lGtFl">
                <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                <property role="2qtEX9" value="value" />
                <node concept="3zFVjK" id="pAhsp7uPqg" role="3zH0cK">
                  <node concept="3clFbS" id="pAhsp7uPqh" role="2VODD2">
                    <node concept="3clFbF" id="pAhsp7uPqn" role="3cqZAp">
                      <node concept="3K4zz7" id="pAhsp7v8gD" role="3clFbG">
                        <node concept="2OqwBi" id="pAhsp7v9BZ" role="3K4GZi">
                          <node concept="30H73N" id="pAhsp7v8Xl" role="2Oq$k0" />
                          <node concept="3TrcHB" id="pAhsp7va8M" role="2OqNvi">
                            <ref role="3TsBF5" to="7ew6:pAhsp7uh13" resolve="grafana" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="pAhsp7v6tv" role="3K4Cdx">
                          <node concept="2OqwBi" id="pAhsp7uPqi" role="2Oq$k0">
                            <node concept="3TrcHB" id="pAhsp7uPql" role="2OqNvi">
                              <ref role="3TsBF5" to="7ew6:pAhsp7uh13" resolve="grafana" />
                            </node>
                            <node concept="30H73N" id="pAhsp7uPqm" role="2Oq$k0" />
                          </node>
                          <node concept="17RlXB" id="pAhsp7v78$" role="2OqNvi" />
                        </node>
                        <node concept="Xl_RD" id="pAhsp7v8Mb" role="3K4E3e">
                          <property role="Xl_RC" value="http://127.0.0.1:3000" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3QxC82ZJ4Mc" role="3cqZAp">
          <node concept="3cpWsn" id="3QxC82ZJ4Mf" role="3cpWs9">
            <property role="TrG5h" value="INFLUXDB_HOST" />
            <node concept="17QB3L" id="3QxC82ZJ4Ma" role="1tU5fm" />
            <node concept="Xl_RD" id="3QxC82ZJ5AI" role="33vP2m">
              <property role="Xl_RC" value="http://127.0.0.1:8086" />
              <node concept="17Uvod" id="pAhsp7uQnY" role="lGtFl">
                <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                <property role="2qtEX9" value="value" />
                <node concept="3zFVjK" id="pAhsp7uQo1" role="3zH0cK">
                  <node concept="3clFbS" id="pAhsp7uQo2" role="2VODD2">
                    <node concept="3clFbF" id="pAhsp7vaGa" role="3cqZAp">
                      <node concept="3K4zz7" id="pAhsp7vaGb" role="3clFbG">
                        <node concept="2OqwBi" id="pAhsp7vaGc" role="3K4GZi">
                          <node concept="30H73N" id="pAhsp7vaGd" role="2Oq$k0" />
                          <node concept="3TrcHB" id="pAhsp7vbtu" role="2OqNvi">
                            <ref role="3TsBF5" to="7ew6:pAhsp7uh0Z" resolve="influxdb" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="pAhsp7vaGf" role="3K4Cdx">
                          <node concept="2OqwBi" id="pAhsp7vaGg" role="2Oq$k0">
                            <node concept="30H73N" id="pAhsp7vaGi" role="2Oq$k0" />
                            <node concept="3TrcHB" id="pAhsp7vcEa" role="2OqNvi">
                              <ref role="3TsBF5" to="7ew6:pAhsp7uh0Z" resolve="influxdb" />
                            </node>
                          </node>
                          <node concept="17RlXB" id="pAhsp7vaGj" role="2OqNvi" />
                        </node>
                        <node concept="Xl_RD" id="pAhsp7vaGk" role="3K4E3e">
                          <property role="Xl_RC" value="http://127.0.0.1:8086" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7ywHfeC9OPt" role="3cqZAp">
          <node concept="3cpWsn" id="7ywHfeC9OPw" role="3cpWs9">
            <property role="TrG5h" value="databaseName" />
            <node concept="17QB3L" id="7ywHfeC9OPr" role="1tU5fm" />
            <node concept="Xl_RD" id="7ywHfeC9PK4" role="33vP2m">
              <property role="Xl_RC" value="sensorSeries" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3QxC82ZJ0ND" role="3cqZAp" />
        <node concept="3cpWs8" id="36n0RtVz8xR" role="3cqZAp">
          <node concept="3cpWsn" id="36n0RtVz8xS" role="3cpWs9">
            <property role="TrG5h" value="dateFormat" />
            <node concept="3uibUv" id="36n0RtVz8xT" role="1tU5fm">
              <ref role="3uigEE" to="6t7w:~DateTimeFormatter" resolve="DateTimeFormatter" />
            </node>
            <node concept="2YIFZM" id="36n0RtVz8V_" role="33vP2m">
              <ref role="37wK5l" to="6t7w:~DateTimeFormatter.ofPattern(java.lang.String):java.time.format.DateTimeFormatter" resolve="ofPattern" />
              <ref role="1Pybhc" to="6t7w:~DateTimeFormatter" resolve="DateTimeFormatter" />
              <node concept="Xl_RD" id="36n0RtVz8We" role="37wK5m">
                <property role="Xl_RC" value="dd-MM-yy HH:mm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="36n0RtVyWTA" role="3cqZAp">
          <node concept="3cpWsn" id="36n0RtVyWTB" role="3cpWs9">
            <property role="TrG5h" value="startDate" />
            <node concept="3uibUv" id="36n0RtVyWTC" role="1tU5fm">
              <ref role="3uigEE" to="28m1:~LocalDateTime" resolve="LocalDateTime" />
            </node>
            <node concept="2YIFZM" id="36n0RtVyXY9" role="33vP2m">
              <ref role="1Pybhc" to="28m1:~LocalDateTime" resolve="LocalDateTime" />
              <ref role="37wK5l" to="28m1:~LocalDateTime.parse(java.lang.CharSequence,java.time.format.DateTimeFormatter):java.time.LocalDateTime" resolve="parse" />
              <node concept="Xl_RD" id="36n0RtVyXZq" role="37wK5m">
                <property role="Xl_RC" value="01-01-18 15:00" />
                <node concept="17Uvod" id="36n0RtVyYKP" role="lGtFl">
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <property role="2qtEX9" value="value" />
                  <node concept="3zFVjK" id="36n0RtVyYKS" role="3zH0cK">
                    <node concept="3clFbS" id="36n0RtVyYKT" role="2VODD2">
                      <node concept="3clFbF" id="36n0RtVyYKZ" role="3cqZAp">
                        <node concept="2OqwBi" id="36n0RtVyYKU" role="3clFbG">
                          <node concept="3TrcHB" id="36n0RtVyYKX" role="2OqNvi">
                            <ref role="3TsBF5" to="7ew6:3juagqJxhEC" resolve="startDate" />
                          </node>
                          <node concept="30H73N" id="36n0RtVyYKY" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="36n0RtVz9v0" role="37wK5m">
                <ref role="3cqZAo" node="36n0RtVz8xS" resolve="dateFormat" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="36n0RtVz9Ib" role="3cqZAp">
          <node concept="3cpWsn" id="36n0RtVz9Ic" role="3cpWs9">
            <property role="TrG5h" value="endDate" />
            <node concept="3uibUv" id="36n0RtVz9Id" role="1tU5fm">
              <ref role="3uigEE" to="28m1:~LocalDateTime" resolve="LocalDateTime" />
            </node>
            <node concept="2YIFZM" id="36n0RtVz9Ie" role="33vP2m">
              <ref role="1Pybhc" to="28m1:~LocalDateTime" resolve="LocalDateTime" />
              <ref role="37wK5l" to="28m1:~LocalDateTime.parse(java.lang.CharSequence,java.time.format.DateTimeFormatter):java.time.LocalDateTime" resolve="parse" />
              <node concept="Xl_RD" id="36n0RtVz9If" role="37wK5m">
                <property role="Xl_RC" value="01-01-18 16:00" />
                <node concept="17Uvod" id="36n0RtVz9Ig" role="lGtFl">
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <property role="2qtEX9" value="value" />
                  <node concept="3zFVjK" id="36n0RtVz9Ih" role="3zH0cK">
                    <node concept="3clFbS" id="36n0RtVz9Ii" role="2VODD2">
                      <node concept="3clFbF" id="36n0RtVz9Ij" role="3cqZAp">
                        <node concept="2OqwBi" id="36n0RtVz9Ik" role="3clFbG">
                          <node concept="3TrcHB" id="36n0RtVzbQt" role="2OqNvi">
                            <ref role="3TsBF5" to="7ew6:3juagqJxhEE" resolve="endDate" />
                          </node>
                          <node concept="30H73N" id="36n0RtVz9Im" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="36n0RtVz9In" role="37wK5m">
                <ref role="3cqZAo" node="36n0RtVz8xS" resolve="dateFormat" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5dO5_UbfUqj" role="3cqZAp" />
        <node concept="3SKdUt" id="7rYs2gBaeZ_" role="3cqZAp">
          <node concept="3SKdUq" id="7rYs2gBaeZB" role="3SKWNk">
            <property role="3SKdUp" value="Begin InfluxDB client setup ----------------------------------------" />
          </node>
        </node>
        <node concept="3cpWs8" id="5dO5_UbeVkj" role="3cqZAp">
          <node concept="3cpWsn" id="5dO5_UbeVkk" role="3cpWs9">
            <property role="TrG5h" value="influxDB" />
            <node concept="3uibUv" id="5dO5_UbeVkl" role="1tU5fm">
              <ref role="3uigEE" to="9nbq:~InfluxDB" resolve="InfluxDB" />
            </node>
            <node concept="2YIFZM" id="5dO5_UbeVVE" role="33vP2m">
              <ref role="1Pybhc" to="9nbq:~InfluxDBFactory" resolve="InfluxDBFactory" />
              <ref role="37wK5l" to="9nbq:~InfluxDBFactory.connect(java.lang.String,java.lang.String,java.lang.String):org.influxdb.InfluxDB" resolve="connect" />
              <node concept="37vLTw" id="3QxC82ZJ5Oy" role="37wK5m">
                <ref role="3cqZAo" node="3QxC82ZJ4Mf" resolve="INFLUXDB_HOST" />
              </node>
              <node concept="Xl_RD" id="5dO5_UbeWwO" role="37wK5m">
                <property role="Xl_RC" value="root" />
              </node>
              <node concept="Xl_RD" id="5dO5_UbeX1t" role="37wK5m">
                <property role="Xl_RC" value="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5dO5_UbeZZY" role="3cqZAp">
          <node concept="2OqwBi" id="5dO5_Ubf0HR" role="3clFbG">
            <node concept="37vLTw" id="5dO5_UbeZZW" role="2Oq$k0">
              <ref role="3cqZAo" node="5dO5_UbeVkk" resolve="influxDB" />
            </node>
            <node concept="liA8E" id="5dO5_Ubf16D" role="2OqNvi">
              <ref role="37wK5l" to="9nbq:~InfluxDB.createDatabase(java.lang.String):void" resolve="createDatabase" />
              <node concept="37vLTw" id="7ywHfeC9QT0" role="37wK5m">
                <ref role="3cqZAo" node="7ywHfeC9OPw" resolve="databaseName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5qdpREsGcaA" role="3cqZAp">
          <node concept="2OqwBi" id="5qdpREsGdjG" role="3clFbG">
            <node concept="37vLTw" id="5qdpREsGca$" role="2Oq$k0">
              <ref role="3cqZAo" node="5dO5_UbeVkk" resolve="influxDB" />
            </node>
            <node concept="liA8E" id="5qdpREsGdY9" role="2OqNvi">
              <ref role="37wK5l" to="9nbq:~InfluxDB.setDatabase(java.lang.String):org.influxdb.InfluxDB" resolve="setDatabase" />
              <node concept="37vLTw" id="5qdpREsGek0" role="37wK5m">
                <ref role="3cqZAo" node="7ywHfeC9OPw" resolve="databaseName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5dO5_Ubf471" role="3cqZAp">
          <node concept="3cpWsn" id="5dO5_Ubf474" role="3cpWs9">
            <property role="TrG5h" value="rpName" />
            <node concept="17QB3L" id="5dO5_Ubf46Z" role="1tU5fm" />
            <node concept="Xl_RD" id="5dO5_Ubf4Lk" role="33vP2m">
              <property role="Xl_RC" value="aRetentionPolicy" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5dO5_Ubf5su" role="3cqZAp">
          <node concept="2OqwBi" id="5dO5_Ubf6bE" role="3clFbG">
            <node concept="37vLTw" id="5dO5_Ubf5ss" role="2Oq$k0">
              <ref role="3cqZAo" node="5dO5_UbeVkk" resolve="influxDB" />
            </node>
            <node concept="liA8E" id="5dO5_Ubf6BS" role="2OqNvi">
              <ref role="37wK5l" to="9nbq:~InfluxDB.createRetentionPolicy(java.lang.String,java.lang.String,java.lang.String,java.lang.String,int,boolean):void" resolve="createRetentionPolicy" />
              <node concept="37vLTw" id="5dO5_Ubf6Ly" role="37wK5m">
                <ref role="3cqZAo" node="5dO5_Ubf474" resolve="rpName" />
              </node>
              <node concept="37vLTw" id="7ywHfeC9QWH" role="37wK5m">
                <ref role="3cqZAo" node="7ywHfeC9OPw" resolve="databaseName" />
              </node>
              <node concept="Xl_RD" id="5dO5_Ubf7Cb" role="37wK5m">
                <property role="Xl_RC" value="30d" />
              </node>
              <node concept="Xl_RD" id="5dO5_Ubf88m" role="37wK5m">
                <property role="Xl_RC" value="30m" />
              </node>
              <node concept="3cmrfG" id="5dO5_UbfbLv" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="3clFbT" id="5dO5_UbfcmM" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5qdpREsG$Ew" role="3cqZAp">
          <node concept="2OqwBi" id="5qdpREsG_zS" role="3clFbG">
            <node concept="37vLTw" id="5qdpREsG$Eu" role="2Oq$k0">
              <ref role="3cqZAo" node="5dO5_UbeVkk" resolve="influxDB" />
            </node>
            <node concept="liA8E" id="5qdpREsGAtl" role="2OqNvi">
              <ref role="37wK5l" to="9nbq:~InfluxDB.setRetentionPolicy(java.lang.String):org.influxdb.InfluxDB" resolve="setRetentionPolicy" />
              <node concept="37vLTw" id="5qdpREsGAEz" role="37wK5m">
                <ref role="3cqZAo" node="5dO5_Ubf474" resolve="rpName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5qdpREsEB7a" role="3cqZAp">
          <node concept="2OqwBi" id="5qdpREsEBdc" role="3clFbG">
            <node concept="37vLTw" id="5qdpREsEB79" role="2Oq$k0">
              <ref role="3cqZAo" node="5dO5_UbeVkk" resolve="influxDB" />
            </node>
            <node concept="liA8E" id="5qdpREsEBoi" role="2OqNvi">
              <ref role="37wK5l" to="9nbq:~InfluxDB.enableBatch(int,int,java.util.concurrent.TimeUnit):org.influxdb.InfluxDB" resolve="enableBatch" />
              <node concept="3cmrfG" id="5qdpREsGT_I" role="37wK5m">
                <property role="3cmrfH" value="2000" />
              </node>
              <node concept="3cmrfG" id="5qdpREsGV5C" role="37wK5m">
                <property role="3cmrfH" value="60" />
              </node>
              <node concept="Rm8GO" id="5qdpREsEDBI" role="37wK5m">
                <ref role="1Px2BO" to="5zyv:~TimeUnit" resolve="TimeUnit" />
                <ref role="Rm8GQ" to="5zyv:~TimeUnit.SECONDS" resolve="SECONDS" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5dO5_Ubgc$B" role="3cqZAp" />
        <node concept="1X3_iC" id="5qdpREsEETD" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="5dO5_Ubg7GG" role="8Wnug">
            <node concept="3cpWsn" id="5dO5_Ubg7GH" role="3cpWs9">
              <property role="TrG5h" value="batchPoints" />
              <node concept="3uibUv" id="5dO5_Ubg7GI" role="1tU5fm">
                <ref role="3uigEE" to="wthj:~BatchPoints" resolve="BatchPoints" />
              </node>
              <node concept="2OqwBi" id="5dO5_UbggvK" role="33vP2m">
                <node concept="2OqwBi" id="5dO5_UbgdMg" role="2Oq$k0">
                  <node concept="2OqwBi" id="5dO5_Ubga_q" role="2Oq$k0">
                    <node concept="2OqwBi" id="5dO5_Ubg8NN" role="2Oq$k0">
                      <node concept="2YIFZM" id="5dO5_Ubg8Ap" role="2Oq$k0">
                        <ref role="37wK5l" to="wthj:~BatchPoints.database(java.lang.String):org.influxdb.dto.BatchPoints$Builder" resolve="database" />
                        <ref role="1Pybhc" to="wthj:~BatchPoints" resolve="BatchPoints" />
                        <node concept="37vLTw" id="7ywHfeC9R0Q" role="37wK5m">
                          <ref role="3cqZAo" node="7ywHfeC9OPw" resolve="databaseName" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5dO5_Ubg90t" role="2OqNvi">
                        <ref role="37wK5l" to="wthj:~BatchPoints$Builder.tag(java.lang.String,java.lang.String):org.influxdb.dto.BatchPoints$Builder" resolve="tag" />
                        <node concept="Xl_RD" id="5dO5_Ubg9ec" role="37wK5m">
                          <property role="Xl_RC" value="async" />
                        </node>
                        <node concept="Xl_RD" id="5dO5_Ubga79" role="37wK5m">
                          <property role="Xl_RC" value="true" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="5dO5_Ubgbub" role="2OqNvi">
                      <ref role="37wK5l" to="wthj:~BatchPoints$Builder.retentionPolicy(java.lang.String):org.influxdb.dto.BatchPoints$Builder" resolve="retentionPolicy" />
                      <node concept="37vLTw" id="5dO5_Ubgdrc" role="37wK5m">
                        <ref role="3cqZAo" node="5dO5_Ubf474" resolve="rpName" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="5dO5_Ubgf16" role="2OqNvi">
                    <ref role="37wK5l" to="wthj:~BatchPoints$Builder.consistency(org.influxdb.InfluxDB$ConsistencyLevel):org.influxdb.dto.BatchPoints$Builder" resolve="consistency" />
                    <node concept="Rm8GO" id="5dO5_UbgfXc" role="37wK5m">
                      <ref role="Rm8GQ" to="9nbq:~InfluxDB$ConsistencyLevel.ALL" resolve="ALL" />
                      <ref role="1Px2BO" to="9nbq:~InfluxDB$ConsistencyLevel" resolve="InfluxDB.ConsistencyLevel" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5dO5_Ubgi6I" role="2OqNvi">
                  <ref role="37wK5l" to="wthj:~BatchPoints$Builder.build():org.influxdb.dto.BatchPoints" resolve="build" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7rYs2gBagnr" role="3cqZAp">
          <node concept="3SKdUq" id="7rYs2gBagnt" role="3SKWNk">
            <property role="3SKdUp" value="End InfluxDB client setup ------------------------------------------" />
          </node>
        </node>
        <node concept="3clFbH" id="7rYs2gBafFq" role="3cqZAp" />
        <node concept="3SKdUt" id="7rYs2gB82ti" role="3cqZAp">
          <node concept="3SKdUq" id="7rYs2gB82tk" role="3SKWNk">
            <property role="3SKdUp" value="Begin data sources generation --------------------------------------" />
          </node>
        </node>
        <node concept="3cpWs8" id="7rYs2gB8ZP4" role="3cqZAp">
          <node concept="3cpWsn" id="7rYs2gB8ZP5" role="3cpWs9">
            <property role="TrG5h" value="dataLaws" />
            <node concept="3uibUv" id="7rYs2gB8ZP2" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="17QB3L" id="7rYs2gB90x6" role="11_B2D" />
              <node concept="3uibUv" id="7rYs2gBb223" role="11_B2D">
                <ref role="3uigEE" to="2ns9:7rYs2gBaBv4" resolve="IDataSource" />
              </node>
            </node>
            <node concept="2ShNRf" id="7rYs2gB90_k" role="33vP2m">
              <node concept="1pGfFk" id="7rYs2gB90Og" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <node concept="17QB3L" id="7rYs2gB913_" role="1pMfVU" />
                <node concept="3uibUv" id="7rYs2gBb25t" role="1pMfVU">
                  <ref role="3uigEE" to="2ns9:7rYs2gBaBv4" resolve="IDataSource" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7rYs2gB88V2" role="3cqZAp">
          <node concept="2b32R4" id="7rYs2gB8sqw" role="lGtFl">
            <node concept="3JmXsc" id="7rYs2gB8sqz" role="2P8S$">
              <node concept="3clFbS" id="7rYs2gB8sq$" role="2VODD2">
                <node concept="3clFbF" id="7rYs2gB8sqE" role="3cqZAp">
                  <node concept="2OqwBi" id="7rYs2gB8sq_" role="3clFbG">
                    <node concept="3Tsc0h" id="7rYs2gB8sqC" role="2OqNvi">
                      <ref role="3TtcxE" to="7ew6:3PPzdvo2E7E" resolve="dataSources" />
                    </node>
                    <node concept="30H73N" id="7rYs2gB8sqD" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7rYs2gBbdc2" role="3cqZAp">
          <node concept="2OqwBi" id="7rYs2gBbdbZ" role="3clFbG">
            <node concept="10M0yZ" id="7rYs2gBbdc0" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="7rYs2gBbdc1" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="7rYs2gBbtND" role="37wK5m">
                <node concept="Xl_RD" id="7rYs2gBbucQ" role="3uHU7B">
                  <property role="Xl_RC" value="size : " />
                </node>
                <node concept="2OqwBi" id="7rYs2gBbec6" role="3uHU7w">
                  <node concept="37vLTw" id="7rYs2gBbdSp" role="2Oq$k0">
                    <ref role="3cqZAo" node="7rYs2gB8ZP5" resolve="dataLaws" />
                  </node>
                  <node concept="liA8E" id="7rYs2gBbeMM" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.size():int" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7rYs2gB83Jq" role="3cqZAp">
          <node concept="3SKdUq" id="7rYs2gB83Js" role="3SKWNk">
            <property role="3SKdUp" value="End data sources generation ----------------------------------------" />
          </node>
        </node>
        <node concept="3clFbH" id="7rYs2gBaaaa" role="3cqZAp" />
        <node concept="3SKdUt" id="7rYs2gBacdH" role="3cqZAp">
          <node concept="3SKdUq" id="7rYs2gBacdJ" role="3SKWNk">
            <property role="3SKdUp" value="Begin sensors configuration ----------------------------------------" />
          </node>
        </node>
        <node concept="3cpWs8" id="36n0RtV_vGY" role="3cqZAp">
          <node concept="3cpWsn" id="36n0RtV_vGZ" role="3cpWs9">
            <property role="TrG5h" value="sensorsList" />
            <node concept="3uibUv" id="36n0RtV_vGW" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="36n0RtV_ws8" role="11_B2D">
                <ref role="3uigEE" to="2ns9:3K9a83awgxk" resolve="Sensor" />
              </node>
            </node>
            <node concept="2ShNRf" id="36n0RtV_wun" role="33vP2m">
              <node concept="1pGfFk" id="36n0RtV_w$B" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="36n0RtV_zSz" role="1pMfVU">
                  <ref role="3uigEE" to="2ns9:3K9a83awgxk" resolve="Sensor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1Vo$Sn9O$Le" role="3cqZAp">
          <node concept="2b32R4" id="1Vo$Sn9O$Lt" role="lGtFl">
            <node concept="3JmXsc" id="1Vo$Sn9O$Lw" role="2P8S$">
              <node concept="3clFbS" id="1Vo$Sn9O$Lx" role="2VODD2">
                <node concept="3clFbF" id="1Vo$Sn9O$LB" role="3cqZAp">
                  <node concept="2OqwBi" id="1Vo$Sn9O$Ly" role="3clFbG">
                    <node concept="30H73N" id="1Vo$Sn9O$LA" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="3juagqJyr6j" role="2OqNvi">
                      <ref role="3TtcxE" to="7ew6:3PPzdvo2E7G" resolve="sensors" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7rYs2gBad_r" role="3cqZAp">
          <node concept="3SKdUq" id="7rYs2gBad_t" role="3SKWNk">
            <property role="3SKdUp" value="End sensors configuration ------------------------------------------" />
          </node>
        </node>
        <node concept="3clFbH" id="3QxC82ZJ6hB" role="3cqZAp" />
        <node concept="3SKdUt" id="3QxC82ZJ780" role="3cqZAp">
          <node concept="3SKdUq" id="3QxC82ZJ782" role="3SKWNk">
            <property role="3SKdUp" value="Begin Grafana dashboards configuration -----------------------------" />
          </node>
        </node>
        <node concept="3cpWs8" id="3QxC82ZIEfZ" role="3cqZAp">
          <node concept="3cpWsn" id="3QxC82ZIEg0" role="3cpWs9">
            <property role="TrG5h" value="grafanaConfig" />
            <node concept="3uibUv" id="3QxC82ZIEg1" role="1tU5fm">
              <ref role="3uigEE" to="v2y1:~GrafanaConfiguration" resolve="GrafanaConfiguration" />
            </node>
            <node concept="2OqwBi" id="55vGwhCOQch" role="33vP2m">
              <node concept="2OqwBi" id="3QxC82ZJhxk" role="2Oq$k0">
                <node concept="2ShNRf" id="3QxC82ZIEgp" role="2Oq$k0">
                  <node concept="1pGfFk" id="3QxC82ZIFvw" role="2ShVmc">
                    <ref role="37wK5l" to="v2y1:~GrafanaConfiguration.&lt;init&gt;()" resolve="GrafanaConfiguration" />
                  </node>
                </node>
                <node concept="liA8E" id="3QxC82ZJhL8" role="2OqNvi">
                  <ref role="37wK5l" to="v2y1:~GrafanaConfiguration.host(java.lang.String):com.appnexus.grafana.configuration.GrafanaConfiguration" resolve="host" />
                  <node concept="37vLTw" id="3QxC82ZJhMw" role="37wK5m">
                    <ref role="3cqZAo" node="3QxC82ZJ39t" resolve="GRAFANA_HOST" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="55vGwhCOQq8" role="2OqNvi">
                <ref role="37wK5l" to="v2y1:~GrafanaConfiguration.apiKey(java.lang.String):com.appnexus.grafana.configuration.GrafanaConfiguration" resolve="apiKey" />
                <node concept="3cpWs3" id="pAhsp7vLzY" role="37wK5m">
                  <node concept="Xl_RD" id="pAhsp7vL_u" role="3uHU7B">
                    <property role="Xl_RC" value="Bearer " />
                  </node>
                  <node concept="Xl_RD" id="55vGwhCOQu1" role="3uHU7w">
                    <property role="Xl_RC" value="blablablablablakeykeykeykey" />
                    <node concept="17Uvod" id="pAhsp7vLZn" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="pAhsp7vLZo" role="3zH0cK">
                        <node concept="3clFbS" id="pAhsp7vLZp" role="2VODD2">
                          <node concept="3clFbF" id="pAhsp7vMdd" role="3cqZAp">
                            <node concept="2OqwBi" id="pAhsp7vNqE" role="3clFbG">
                              <node concept="2OqwBi" id="pAhsp7vMrA" role="2Oq$k0">
                                <node concept="30H73N" id="pAhsp7vMdc" role="2Oq$k0" />
                                <node concept="3TrEf2" id="pAhsp7vMYE" role="2OqNvi">
                                  <ref role="3Tt5mk" to="7ew6:5kA4vFmjPTe" resolve="displays" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="pAhsp7vNLu" role="2OqNvi">
                                <ref role="3TsBF5" to="7ew6:pAhsp7vwjr" resolve="token" />
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
          </node>
        </node>
        <node concept="3cpWs8" id="7ywHfeC9JjJ" role="3cqZAp">
          <node concept="3cpWsn" id="7ywHfeC9JjK" role="3cpWs9">
            <property role="TrG5h" value="grafanaClient" />
            <node concept="3uibUv" id="7ywHfeC9JjL" role="1tU5fm">
              <ref role="3uigEE" to="ynw8:~GrafanaClient" resolve="GrafanaClient" />
            </node>
            <node concept="2ShNRf" id="7ywHfeC9KuY" role="33vP2m">
              <node concept="1pGfFk" id="7ywHfeC9LIn" role="2ShVmc">
                <ref role="37wK5l" to="ynw8:~GrafanaClient.&lt;init&gt;(com.appnexus.grafana.configuration.GrafanaConfiguration)" resolve="GrafanaClient" />
                <node concept="37vLTw" id="7ywHfeC9LJb" role="37wK5m">
                  <ref role="3cqZAo" node="3QxC82ZIEg0" resolve="grafanaConfig" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="pAhsp7vGl4" role="3cqZAp">
          <node concept="2b32R4" id="pAhsp7vHaI" role="lGtFl">
            <node concept="3JmXsc" id="pAhsp7vHaL" role="2P8S$">
              <node concept="3clFbS" id="pAhsp7vHaM" role="2VODD2">
                <node concept="3clFbF" id="pAhsp7vHaS" role="3cqZAp">
                  <node concept="2OqwBi" id="pAhsp7vJh9" role="3clFbG">
                    <node concept="2OqwBi" id="pAhsp7vHaN" role="2Oq$k0">
                      <node concept="30H73N" id="pAhsp7vHaR" role="2Oq$k0" />
                      <node concept="3TrEf2" id="pAhsp7vISG" role="2OqNvi">
                        <ref role="3Tt5mk" to="7ew6:5kA4vFmjPTe" resolve="displays" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="pAhsp7vJyx" role="2OqNvi">
                      <ref role="3TtcxE" to="7ew6:pAhsp7vwjp" resolve="displays" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3QxC82ZJ8gA" role="3cqZAp">
          <node concept="3SKdUq" id="3QxC82ZJ8gB" role="3SKWNk">
            <property role="3SKdUp" value="End Grafana dashboards configuration -------------------------------" />
          </node>
        </node>
        <node concept="3clFbH" id="5qdpREsEmmM" role="3cqZAp" />
        <node concept="3SKdUt" id="5qdpREsEnlT" role="3cqZAp">
          <node concept="3SKdUq" id="5qdpREsEnlV" role="3SKWNk">
            <property role="3SKdUp" value="Begin replay execution ---------------------------------------------" />
          </node>
        </node>
        <node concept="3cpWs8" id="5qdpREsEt7Z" role="3cqZAp">
          <node concept="3cpWsn" id="5qdpREsEt80" role="3cpWs9">
            <property role="TrG5h" value="replayers" />
            <node concept="3uibUv" id="5qdpREsEt7X" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="5qdpREsEu3V" role="11_B2D">
                <ref role="3uigEE" to="2ns9:5qdpREsDlwK" resolve="IReplay" />
              </node>
            </node>
            <node concept="2ShNRf" id="5qdpREsEu63" role="33vP2m">
              <node concept="1pGfFk" id="5qdpREsEvcw" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5qdpREsEpGF" role="3cqZAp">
          <node concept="2b32R4" id="5qdpREsEqAt" role="lGtFl">
            <node concept="3JmXsc" id="5qdpREsEqAw" role="2P8S$">
              <node concept="3clFbS" id="5qdpREsEqAx" role="2VODD2">
                <node concept="3clFbF" id="5qdpREsEqAB" role="3cqZAp">
                  <node concept="2OqwBi" id="5qdpREsEqAy" role="3clFbG">
                    <node concept="3Tsc0h" id="5qdpREsEqA_" role="2OqNvi">
                      <ref role="3TtcxE" to="7ew6:1nZ6g$XTBx$" resolve="replays" />
                    </node>
                    <node concept="30H73N" id="5qdpREsEqAA" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5qdpREsEzOE" role="3cqZAp">
          <node concept="3clFbS" id="5qdpREsEzOG" role="2LFqv$">
            <node concept="3clFbF" id="5qdpREsEQSP" role="3cqZAp">
              <node concept="2OqwBi" id="5qdpREsERWC" role="3clFbG">
                <node concept="2OqwBi" id="5qdpREsER9R" role="2Oq$k0">
                  <node concept="37vLTw" id="5qdpREsEQSN" role="2Oq$k0">
                    <ref role="3cqZAo" node="5qdpREsEzOH" resolve="replayer" />
                  </node>
                  <node concept="liA8E" id="5qdpREsFS2A" role="2OqNvi">
                    <ref role="37wK5l" to="2ns9:5qdpREsDlJS" resolve="getReadings" />
                  </node>
                </node>
                <node concept="liA8E" id="5qdpREsETdH" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Iterable.forEach(java.util.function.Consumer):void" resolve="forEach" />
                  <node concept="1bVj0M" id="5qdpREsEU6h" role="37wK5m">
                    <node concept="3clFbS" id="5qdpREsEU6i" role="1bW5cS">
                      <node concept="SfApY" id="5qdpREsF4hQ" role="3cqZAp">
                        <node concept="3clFbS" id="5qdpREsF4hR" role="SfCbr">
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
                                      <node concept="2OqwBi" id="5qdpREsEXk6" role="37wK5m">
                                        <node concept="37vLTw" id="5qdpREsEX7A" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5qdpREsEW$h" resolve="record" />
                                        </node>
                                        <node concept="liA8E" id="5qdpREsEXwo" role="2OqNvi">
                                          <ref role="37wK5l" to="2ns9:5qdpREsDlFZ" resolve="getName" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="5dO5_UbfnHR" role="2OqNvi">
                                      <ref role="37wK5l" to="wthj:~Point$Builder.time(long,java.util.concurrent.TimeUnit):org.influxdb.dto.Point$Builder" resolve="time" />
                                      <node concept="2YIFZM" id="5qdpREsF3F6" role="37wK5m">
                                        <ref role="37wK5l" to="wyt6:~Long.parseLong(java.lang.String):long" resolve="parseLong" />
                                        <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
                                        <node concept="2OqwBi" id="5qdpREsF3YK" role="37wK5m">
                                          <node concept="37vLTw" id="5qdpREsF3Ok" role="2Oq$k0">
                                            <ref role="3cqZAo" node="5qdpREsEW$h" resolve="record" />
                                          </node>
                                          <node concept="liA8E" id="5qdpREsF4aX" role="2OqNvi">
                                            <ref role="37wK5l" to="2ns9:5qdpREsDlGb" resolve="getTimestamp" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="Rm8GO" id="1XfQ9HmVBPF" role="37wK5m">
                                        <ref role="Rm8GQ" to="5zyv:~TimeUnit.MILLISECONDS" resolve="MILLISECONDS" />
                                        <ref role="1Px2BO" to="5zyv:~TimeUnit" resolve="TimeUnit" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="5dO5_UbftMd" role="2OqNvi">
                                    <ref role="37wK5l" to="wthj:~Point$Builder.addField(java.lang.String,java.lang.String):org.influxdb.dto.Point$Builder" resolve="addField" />
                                    <node concept="Xl_RD" id="5dO5_Ubfv_0" role="37wK5m">
                                      <property role="Xl_RC" value="value" />
                                    </node>
                                    <node concept="2OqwBi" id="5qdpREsF0Ki" role="37wK5m">
                                      <node concept="37vLTw" id="5qdpREsF0y2" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5qdpREsEW$h" resolve="record" />
                                      </node>
                                      <node concept="liA8E" id="5qdpREsF1zg" role="2OqNvi">
                                        <ref role="37wK5l" to="2ns9:5qdpREsDlG5" resolve="getValue" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="5dO5_UbfDIE" role="2OqNvi">
                                  <ref role="37wK5l" to="wthj:~Point$Builder.build():org.influxdb.dto.Point" resolve="build" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="5qdpREsEUcM" role="3cqZAp">
                            <node concept="2OqwBi" id="5qdpREsEUkJ" role="3clFbG">
                              <node concept="37vLTw" id="5qdpREsEUcL" role="2Oq$k0">
                                <ref role="3cqZAo" node="5dO5_UbeVkk" resolve="influxDB" />
                              </node>
                              <node concept="liA8E" id="5qdpREsEUxD" role="2OqNvi">
                                <ref role="37wK5l" to="9nbq:~InfluxDB.write(org.influxdb.dto.Point):void" resolve="write" />
                                <node concept="37vLTw" id="5qdpREsF2aq" role="37wK5m">
                                  <ref role="3cqZAo" node="5dO5_UbgkRP" resolve="point" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="TDmWw" id="5qdpREsF4hX" role="TEbGg">
                          <node concept="3clFbS" id="5qdpREsF4i0" role="TDEfX">
                            <node concept="3clFbF" id="5qdpREsF5n8" role="3cqZAp">
                              <node concept="2OqwBi" id="5qdpREsF5$C" role="3clFbG">
                                <node concept="10M0yZ" id="5qdpREsF5$D" role="2Oq$k0">
                                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                                  <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                                </node>
                                <node concept="liA8E" id="5qdpREsF5$E" role="2OqNvi">
                                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                                  <node concept="3cpWs3" id="5qdpREsF8hQ" role="37wK5m">
                                    <node concept="Xl_RD" id="5qdpREsF8il" role="3uHU7w">
                                      <property role="Xl_RC" value=" from a replay is invalid" />
                                    </node>
                                    <node concept="3cpWs3" id="5qdpREsF76l" role="3uHU7B">
                                      <node concept="Xl_RD" id="5qdpREsF5FX" role="3uHU7B">
                                        <property role="Xl_RC" value="Timestamp " />
                                      </node>
                                      <node concept="2OqwBi" id="5qdpREsF7CJ" role="3uHU7w">
                                        <node concept="37vLTw" id="5qdpREsF7eh" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5qdpREsEW$h" resolve="record" />
                                        </node>
                                        <node concept="liA8E" id="5qdpREsF7Pg" role="2OqNvi">
                                          <ref role="37wK5l" to="2ns9:5qdpREsDlGb" resolve="getTimestamp" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWsn" id="5qdpREsF4i1" role="TDEfY">
                            <property role="TrG5h" value="e" />
                            <node concept="3uibUv" id="5qdpREsF4hW" role="1tU5fm">
                              <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="5qdpREsEW$h" role="1bW2Oz">
                      <property role="TrG5h" value="record" />
                      <node concept="3uibUv" id="5qdpREsEWGA" role="1tU5fm">
                        <ref role="3uigEE" to="2ns9:5qdpREsDlxB" resolve="ReplayRecord" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5qdpREsEzOH" role="1Duv9x">
            <property role="TrG5h" value="replayer" />
            <node concept="3uibUv" id="5qdpREsE$SS" role="1tU5fm">
              <ref role="3uigEE" to="2ns9:5qdpREsDlwK" resolve="IReplay" />
            </node>
          </node>
          <node concept="37vLTw" id="5qdpREsE_h9" role="1DdaDG">
            <ref role="3cqZAo" node="5qdpREsEt80" resolve="replayers" />
          </node>
        </node>
        <node concept="3SKdUt" id="5qdpREsEoMv" role="3cqZAp">
          <node concept="3SKdUq" id="5qdpREsEofC" role="3SKWNk">
            <property role="3SKdUp" value="End replay execution -----------------------------------------------" />
          </node>
        </node>
        <node concept="3clFbH" id="7rYs2gB851p" role="3cqZAp" />
        <node concept="3SKdUt" id="7rYs2gB86jB" role="3cqZAp">
          <node concept="3SKdUq" id="7rYs2gB86jD" role="3SKWNk">
            <property role="3SKdUp" value="Begin execution ----------------------------------------------------" />
          </node>
        </node>
        <node concept="2$JKZl" id="36n0RtV$B$P" role="3cqZAp">
          <node concept="3clFbS" id="36n0RtV$B$R" role="2LFqv$">
            <node concept="3clFbF" id="36n0RtVAzAO" role="3cqZAp">
              <node concept="2OqwBi" id="36n0RtVA$mz" role="3clFbG">
                <node concept="37vLTw" id="36n0RtVAzAM" role="2Oq$k0">
                  <ref role="3cqZAo" node="36n0RtV_vGZ" resolve="sensorsList" />
                </node>
                <node concept="liA8E" id="36n0RtVA$Tb" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Collection.removeIf(java.util.function.Predicate):boolean" resolve="removeIf" />
                  <node concept="1bVj0M" id="36n0RtVA_5L" role="37wK5m">
                    <node concept="3clFbS" id="36n0RtVA_5M" role="1bW5cS">
                      <node concept="3clFbF" id="36n0RtVA_r6" role="3cqZAp">
                        <node concept="3eOSWO" id="36n0RtVAMHl" role="3clFbG">
                          <node concept="2OqwBi" id="36n0RtVAAlM" role="3uHU7B">
                            <node concept="2OqwBi" id="36n0RtVA_zH" role="2Oq$k0">
                              <node concept="37vLTw" id="36n0RtVA_r5" role="2Oq$k0">
                                <ref role="3cqZAo" node="36n0RtVA_iP" resolve="it" />
                              </node>
                              <node concept="liA8E" id="36n0RtVA_JF" role="2OqNvi">
                                <ref role="37wK5l" to="2ns9:3juagqJydtv" resolve="readValue" />
                                <node concept="37vLTw" id="5qdpREsEQsW" role="37wK5m">
                                  <ref role="3cqZAo" node="5dO5_UbeVkk" resolve="influxDB" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="36n0RtVABnV" role="2OqNvi">
                              <ref role="37wK5l" to="28m1:~LocalDateTime.compareTo(java.time.chrono.ChronoLocalDateTime):int" resolve="compareTo" />
                              <node concept="37vLTw" id="36n0RtVAB_7" role="37wK5m">
                                <ref role="3cqZAo" node="36n0RtVz9Ic" resolve="endDate" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cmrfG" id="36n0RtVAIXA" role="3uHU7w">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="36n0RtVA_iP" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="3uibUv" id="36n0RtVA_iO" role="1tU5fm">
                        <ref role="3uigEE" to="2ns9:3K9a83awgxk" resolve="Sensor" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6ZqfKAE0GFi" role="2$JKZa">
            <node concept="2OqwBi" id="6ZqfKAE0GFk" role="3fr31v">
              <node concept="37vLTw" id="6ZqfKAE0GFl" role="2Oq$k0">
                <ref role="3cqZAo" node="36n0RtV_vGZ" resolve="sensorsList" />
              </node>
              <node concept="liA8E" id="6ZqfKAE0GFm" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7rYs2gB87_V" role="3cqZAp">
          <node concept="3SKdUq" id="7rYs2gB87_X" role="3SKWNk">
            <property role="3SKdUp" value="End execution ------------------------------------------------------" />
          </node>
        </node>
        <node concept="3clFbH" id="5qdpREsEG5k" role="3cqZAp" />
        <node concept="3SKdUt" id="5qdpREsEH8f" role="3cqZAp">
          <node concept="3SKdUq" id="5qdpREsEH8h" role="3SKWNk">
            <property role="3SKdUp" value="Clean up -----------------------------------------------------------" />
          </node>
        </node>
        <node concept="3clFbF" id="5qdpREsEJ1S" role="3cqZAp">
          <node concept="2OqwBi" id="5qdpREsEJPW" role="3clFbG">
            <node concept="37vLTw" id="5qdpREsEJ1Q" role="2Oq$k0">
              <ref role="3cqZAo" node="5dO5_UbeVkk" resolve="influxDB" />
            </node>
            <node concept="liA8E" id="5qdpREsEKDz" role="2OqNvi">
              <ref role="37wK5l" to="9nbq:~InfluxDB.close():void" resolve="close" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1Vo$Sn9NS8s" role="jymVt" />
    <node concept="3Tm1VV" id="1Vo$Sn9MHKk" role="1B3o_S" />
    <node concept="n94m4" id="1Vo$Sn9MHKl" role="lGtFl">
      <ref role="n9lRv" to="7ew6:3PPzdvo2E7B" resolve="Simulation" />
    </node>
    <node concept="17Uvod" id="1Vo$Sn9MHKE" role="lGtFl">
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <property role="2qtEX9" value="name" />
      <node concept="3zFVjK" id="1Vo$Sn9MHKH" role="3zH0cK">
        <node concept="3clFbS" id="1Vo$Sn9MHKI" role="2VODD2">
          <node concept="3clFbF" id="1Vo$Sn9MHKO" role="3cqZAp">
            <node concept="2OqwBi" id="1Vo$Sn9MHKJ" role="3clFbG">
              <node concept="3TrcHB" id="1Vo$Sn9MHKM" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
              <node concept="30H73N" id="1Vo$Sn9MHKN" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="3juagqJy5Px">
    <property role="TrG5h" value="reduce_SensorCollection" />
    <ref role="3gUMe" to="7ew6:3PPzdvo2E7J" resolve="SensorCollection" />
    <node concept="3clFbS" id="3juagqJy5Rc" role="13RCb5">
      <node concept="3cpWs8" id="3juagqJyqfn" role="3cqZAp">
        <node concept="3cpWsn" id="3juagqJyqfq" role="3cpWs9">
          <property role="TrG5h" value="sensorsList" />
          <node concept="_YKpA" id="3juagqJyqfj" role="1tU5fm">
            <node concept="3uibUv" id="3K9a83awloh" role="_ZDj9">
              <ref role="3uigEE" to="2ns9:3K9a83awgxk" resolve="Sensor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="36n0RtV$nss" role="3cqZAp">
        <node concept="3cpWsn" id="36n0RtV$nst" role="3cpWs9">
          <property role="TrG5h" value="startDate" />
          <node concept="3uibUv" id="36n0RtV$nsu" role="1tU5fm">
            <ref role="3uigEE" to="28m1:~LocalDateTime" resolve="LocalDateTime" />
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="7rYs2gBas6e" role="3cqZAp">
        <node concept="3cpWsn" id="7rYs2gBas6f" role="3cpWs9">
          <property role="TrG5h" value="dataLaws" />
          <node concept="3uibUv" id="7rYs2gBas6g" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
            <node concept="17QB3L" id="7rYs2gBas6h" role="11_B2D" />
            <node concept="3uibUv" id="7rYs2gBb0Lg" role="11_B2D">
              <ref role="3uigEE" to="2ns9:7rYs2gBaBv4" resolve="IDataSource" />
            </node>
          </node>
          <node concept="2ShNRf" id="7rYs2gBas6j" role="33vP2m">
            <node concept="1pGfFk" id="7rYs2gBas6k" role="2ShVmc">
              <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
              <node concept="17QB3L" id="7rYs2gBas6l" role="1pMfVU" />
              <node concept="3uibUv" id="7rYs2gBb0Ml" role="1pMfVU">
                <ref role="3uigEE" to="2ns9:7rYs2gBaBv4" resolve="IDataSource" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="3juagqJzwR8" role="3cqZAp" />
      <node concept="1Dw8fO" id="3juagqJylgu" role="3cqZAp">
        <node concept="3cpWsn" id="3juagqJylgv" role="1Duv9x">
          <property role="TrG5h" value="i" />
          <node concept="10Oyi0" id="3juagqJylgB" role="1tU5fm" />
          <node concept="3cmrfG" id="3juagqJylgQ" role="33vP2m">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
        <node concept="3clFbS" id="3juagqJylgw" role="2LFqv$">
          <node concept="3clFbF" id="3juagqJyq_p" role="3cqZAp">
            <node concept="2OqwBi" id="3juagqJytAj" role="3clFbG">
              <node concept="37vLTw" id="3juagqJz$Ab" role="2Oq$k0">
                <ref role="3cqZAo" node="3juagqJyqfq" resolve="sensorsList" />
              </node>
              <node concept="TSZUe" id="3juagqJyuCX" role="2OqNvi">
                <node concept="2ShNRf" id="3juagqJyvab" role="25WWJ7">
                  <node concept="1pGfFk" id="3juagqJyvfU" role="2ShVmc">
                    <ref role="37wK5l" to="2ns9:36n0RtVzifZ" resolve="Sensor" />
                    <node concept="3cpWs3" id="3juagqJyvQm" role="37wK5m">
                      <node concept="37vLTw" id="3juagqJyCMo" role="3uHU7w">
                        <ref role="3cqZAo" node="3juagqJylgv" resolve="i" />
                      </node>
                      <node concept="Xl_RD" id="3juagqJyvhB" role="3uHU7B">
                        <property role="Xl_RC" value="sensorName" />
                        <node concept="17Uvod" id="3juagqJyvp0" role="lGtFl">
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                          <property role="2qtEX9" value="value" />
                          <node concept="3zFVjK" id="3juagqJyvp3" role="3zH0cK">
                            <node concept="3clFbS" id="3juagqJyvp4" role="2VODD2">
                              <node concept="3clFbF" id="3juagqJyvpa" role="3cqZAp">
                                <node concept="2OqwBi" id="3juagqJyvp5" role="3clFbG">
                                  <node concept="3TrcHB" id="3juagqJyvp8" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                  <node concept="30H73N" id="3juagqJyvp9" role="2Oq$k0" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7rYs2gBatAL" role="37wK5m">
                      <node concept="37vLTw" id="7rYs2gBat4E" role="2Oq$k0">
                        <ref role="3cqZAo" node="7rYs2gBas6f" resolve="dataLaws" />
                      </node>
                      <node concept="liA8E" id="7rYs2gBausy" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                        <node concept="Xl_RD" id="7rYs2gBauTL" role="37wK5m">
                          <property role="Xl_RC" value="lawName" />
                          <node concept="17Uvod" id="7rYs2gBawEk" role="lGtFl">
                            <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                            <property role="2qtEX9" value="value" />
                            <node concept="3zFVjK" id="7rYs2gBawEl" role="3zH0cK">
                              <node concept="3clFbS" id="7rYs2gBawEm" role="2VODD2">
                                <node concept="3clFbF" id="7rYs2gBaxwn" role="3cqZAp">
                                  <node concept="2OqwBi" id="7rYs2gBaypa" role="3clFbG">
                                    <node concept="2OqwBi" id="7rYs2gBaxHY" role="2Oq$k0">
                                      <node concept="30H73N" id="7rYs2gBaxwm" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="7rYs2gBaxYg" role="2OqNvi">
                                        <ref role="3Tt5mk" to="7ew6:3PPzdvo2Eg_" resolve="dataSource" />
                                      </node>
                                    </node>
                                    <node concept="3TrcHB" id="7rYs2gBayON" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="7rYs2gB9tEW" role="37wK5m">
                      <ref role="3cqZAo" node="36n0RtV$nst" resolve="startDate" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3eOVzh" id="3juagqJyoaz" role="1Dwp0S">
          <node concept="3cmrfG" id="3juagqJyoaO" role="3uHU7w">
            <property role="3cmrfH" value="10" />
            <node concept="17Uvod" id="3juagqJyE3r" role="lGtFl">
              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
              <property role="2qtEX9" value="value" />
              <node concept="3zFVjK" id="3juagqJyE3u" role="3zH0cK">
                <node concept="3clFbS" id="3juagqJyE3v" role="2VODD2">
                  <node concept="3clFbF" id="3juagqJyE3_" role="3cqZAp">
                    <node concept="2OqwBi" id="3juagqJyE3w" role="3clFbG">
                      <node concept="3TrcHB" id="3juagqJyE3z" role="2OqNvi">
                        <ref role="3TsBF5" to="7ew6:75cVuPqSa61" resolve="quantity" />
                      </node>
                      <node concept="30H73N" id="3juagqJyE3$" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="3juagqJylSt" role="3uHU7B">
            <ref role="3cqZAo" node="3juagqJylgv" resolve="i" />
          </node>
        </node>
        <node concept="3uNrnE" id="3juagqJypys" role="1Dwrff">
          <node concept="37vLTw" id="3juagqJypyu" role="2$L3a6">
            <ref role="3cqZAo" node="3juagqJylgv" resolve="i" />
          </node>
        </node>
        <node concept="raruj" id="3juagqJyFO5" role="lGtFl" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="7rYs2gB89$Y">
    <property role="TrG5h" value="reduce_Markov" />
    <property role="3GE5qa" value="laws" />
    <ref role="3gUMe" to="7ew6:7dKB6cHPzZ_" resolve="Markov" />
    <node concept="3clFbS" id="7rYs2gB89_y" role="13RCb5">
      <node concept="3cpWs8" id="7rYs2gB91yV" role="3cqZAp">
        <node concept="3cpWsn" id="7rYs2gB91yW" role="3cpWs9">
          <property role="TrG5h" value="dataLaws" />
          <node concept="3uibUv" id="7rYs2gB91yX" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
            <node concept="17QB3L" id="7rYs2gB91yY" role="11_B2D" />
            <node concept="3uibUv" id="7rYs2gBaRan" role="11_B2D">
              <ref role="3uigEE" to="2ns9:7rYs2gBaBv4" resolve="IDataSource" />
            </node>
          </node>
          <node concept="2ShNRf" id="7rYs2gB91z0" role="33vP2m">
            <node concept="1pGfFk" id="7rYs2gB91z1" role="2ShVmc">
              <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
              <node concept="17QB3L" id="7rYs2gB91z2" role="1pMfVU" />
              <node concept="3uibUv" id="7rYs2gBaRFz" role="1pMfVU">
                <ref role="3uigEE" to="2ns9:7rYs2gBaBv4" resolve="IDataSource" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="7rYs2gB91oo" role="3cqZAp" />
      <node concept="9aQIb" id="7rYs2gB8NbV" role="3cqZAp">
        <node concept="3clFbS" id="7rYs2gB8NbX" role="9aQI4">
          <node concept="3cpWs8" id="6ZqfKADVrEI" role="3cqZAp">
            <node concept="3cpWsn" id="6ZqfKADVrEJ" role="3cpWs9">
              <property role="TrG5h" value="markov" />
              <node concept="3uibUv" id="6ZqfKADVrEK" role="1tU5fm">
                <ref role="3uigEE" to="2ns9:7rYs2gB7g7k" resolve="MarkovLaw" />
              </node>
              <node concept="2ShNRf" id="6ZqfKADVthF" role="33vP2m">
                <node concept="1pGfFk" id="6ZqfKADWdJx" role="2ShVmc">
                  <ref role="37wK5l" to="2ns9:6ZqfKADVwzo" resolve="MarkovLaw" />
                  <node concept="Xl_RD" id="6ZqfKADWdUr" role="37wK5m">
                    <property role="Xl_RC" value="name" />
                    <node concept="17Uvod" id="6ZqfKADWegk" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="6ZqfKADWegn" role="3zH0cK">
                        <node concept="3clFbS" id="6ZqfKADWego" role="2VODD2">
                          <node concept="3clFbF" id="6ZqfKADWegu" role="3cqZAp">
                            <node concept="2OqwBi" id="6ZqfKADWegp" role="3clFbG">
                              <node concept="3TrcHB" id="6ZqfKADWegs" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                              <node concept="30H73N" id="6ZqfKADWegt" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="6ZqfKAE2Qs_" role="37wK5m">
                    <property role="3cmrfH" value="10" />
                    <node concept="17Uvod" id="6ZqfKAE2QDB" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="6ZqfKAE2QDE" role="3zH0cK">
                        <node concept="3clFbS" id="6ZqfKAE2QDF" role="2VODD2">
                          <node concept="3clFbF" id="6ZqfKAE2QDL" role="3cqZAp">
                            <node concept="2OqwBi" id="6ZqfKAE2QDG" role="3clFbG">
                              <node concept="3TrcHB" id="6ZqfKAE2QDJ" role="2OqNvi">
                                <ref role="3TsBF5" to="7ew6:75cVuPqSa98" resolve="updatePeriod" />
                              </node>
                              <node concept="30H73N" id="6ZqfKAE2QDK" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="6ZqfKAE2RAz" role="37wK5m">
                    <property role="3cmrfH" value="5" />
                    <node concept="17Uvod" id="6ZqfKAE2S4Y" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="6ZqfKAE2S51" role="3zH0cK">
                        <node concept="3clFbS" id="6ZqfKAE2S52" role="2VODD2">
                          <node concept="3clFbF" id="6ZqfKAE2S58" role="3cqZAp">
                            <node concept="2OqwBi" id="6ZqfKAE2S53" role="3clFbG">
                              <node concept="3TrcHB" id="6ZqfKAE2S56" role="2OqNvi">
                                <ref role="3TsBF5" to="7ew6:75cVuPqSa9b" resolve="samplingPeriod" />
                              </node>
                              <node concept="30H73N" id="6ZqfKAE2S57" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="6ZqfKAE2Veu" role="37wK5m">
                    <property role="3cmrfH" value="86400" />
                    <node concept="17Uvod" id="6ZqfKAE2VHC" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="6ZqfKAE2VHF" role="3zH0cK">
                        <node concept="3clFbS" id="6ZqfKAE2VHG" role="2VODD2">
                          <node concept="3clFbF" id="6ZqfKAE2VHM" role="3cqZAp">
                            <node concept="2OqwBi" id="6ZqfKAE2VHH" role="3clFbG">
                              <node concept="30H73N" id="6ZqfKAE2VHL" role="2Oq$k0" />
                              <node concept="3TrcHB" id="6ZqfKAE3auB" role="2OqNvi">
                                <ref role="3TsBF5" to="7ew6:3juagqJxLPu" resolve="resetPeriod" />
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
          </node>
          <node concept="3clFbH" id="6ZqfKADVmUf" role="3cqZAp">
            <node concept="2b32R4" id="6ZqfKADVnbn" role="lGtFl">
              <node concept="3JmXsc" id="6ZqfKADVnbq" role="2P8S$">
                <node concept="3clFbS" id="6ZqfKADVnbr" role="2VODD2">
                  <node concept="3clFbF" id="6ZqfKADVnbx" role="3cqZAp">
                    <node concept="2OqwBi" id="6ZqfKADVnbs" role="3clFbG">
                      <node concept="3Tsc0h" id="6ZqfKADVnbv" role="2OqNvi">
                        <ref role="3TtcxE" to="7ew6:7dKB6cHP$0u" resolve="states" />
                      </node>
                      <node concept="30H73N" id="6ZqfKADVnbw" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6ZqfKADW5l2" role="3cqZAp">
            <node concept="2OqwBi" id="6ZqfKADW5K5" role="3clFbG">
              <node concept="37vLTw" id="6ZqfKADW5l0" role="2Oq$k0">
                <ref role="3cqZAo" node="6ZqfKADVrEJ" resolve="markov" />
              </node>
              <node concept="liA8E" id="6ZqfKADW6I0" role="2OqNvi">
                <ref role="37wK5l" to="2ns9:6ZqfKADVyA0" resolve="assertCorrectConfiguration" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7rYs2gB95EU" role="3cqZAp">
            <node concept="2OqwBi" id="7rYs2gB969V" role="3clFbG">
              <node concept="37vLTw" id="7rYs2gB95ES" role="2Oq$k0">
                <ref role="3cqZAo" node="7rYs2gB91yW" resolve="dataLaws" />
              </node>
              <node concept="liA8E" id="7rYs2gB96Js" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                <node concept="Xl_RD" id="7rYs2gB96Wx" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                  <node concept="17Uvod" id="7rYs2gB9872" role="lGtFl">
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                    <property role="2qtEX9" value="value" />
                    <node concept="3zFVjK" id="7rYs2gB9875" role="3zH0cK">
                      <node concept="3clFbS" id="7rYs2gB9876" role="2VODD2">
                        <node concept="3clFbF" id="7rYs2gB987c" role="3cqZAp">
                          <node concept="2OqwBi" id="7rYs2gB9877" role="3clFbG">
                            <node concept="3TrcHB" id="7rYs2gB987a" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                            <node concept="30H73N" id="7rYs2gB987b" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6ZqfKADWgDm" role="37wK5m">
                  <ref role="3cqZAo" node="6ZqfKADVrEJ" resolve="markov" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="7rYs2gB8PEX" role="lGtFl" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="7rYs2gB9b_n">
    <property role="TrG5h" value="reduce_Random" />
    <property role="3GE5qa" value="laws" />
    <ref role="3gUMe" to="7ew6:3PPzdvo2Egx" resolve="Random" />
    <node concept="3clFbS" id="7rYs2gB9ulK" role="13RCb5">
      <node concept="3cpWs8" id="7rYs2gB9Ikb" role="3cqZAp">
        <node concept="3cpWsn" id="7rYs2gB9Ikc" role="3cpWs9">
          <property role="TrG5h" value="dataLaws" />
          <node concept="3uibUv" id="7rYs2gB9Ikd" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
            <node concept="17QB3L" id="7rYs2gB9Ike" role="11_B2D" />
            <node concept="3uibUv" id="7rYs2gBaVDM" role="11_B2D">
              <ref role="3uigEE" to="2ns9:7rYs2gBaBv4" resolve="IDataSource" />
            </node>
          </node>
          <node concept="2ShNRf" id="7rYs2gB9Ikg" role="33vP2m">
            <node concept="1pGfFk" id="7rYs2gB9Ikh" role="2ShVmc">
              <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
              <node concept="17QB3L" id="7rYs2gB9Iki" role="1pMfVU" />
              <node concept="3uibUv" id="7rYs2gBaZdN" role="1pMfVU">
                <ref role="3uigEE" to="2ns9:7rYs2gBaBv4" resolve="IDataSource" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="7rYs2gB9HPs" role="3cqZAp" />
      <node concept="3clFbF" id="7rYs2gB9Kc9" role="3cqZAp">
        <node concept="2OqwBi" id="7rYs2gB9KUJ" role="3clFbG">
          <node concept="37vLTw" id="7rYs2gB9Kc7" role="2Oq$k0">
            <ref role="3cqZAo" node="7rYs2gB9Ikc" resolve="dataLaws" />
          </node>
          <node concept="liA8E" id="7rYs2gB9Lwg" role="2OqNvi">
            <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
            <node concept="Xl_RD" id="7rYs2gB9N8p" role="37wK5m">
              <property role="Xl_RC" value="lawName" />
              <node concept="17Uvod" id="7rYs2gB9OxF" role="lGtFl">
                <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                <property role="2qtEX9" value="value" />
                <node concept="3zFVjK" id="7rYs2gB9OxI" role="3zH0cK">
                  <node concept="3clFbS" id="7rYs2gB9OxJ" role="2VODD2">
                    <node concept="3clFbF" id="7rYs2gB9OxP" role="3cqZAp">
                      <node concept="2OqwBi" id="7rYs2gB9Ylf" role="3clFbG">
                        <node concept="30H73N" id="7rYs2gB9Y6Q" role="2Oq$k0" />
                        <node concept="3TrcHB" id="7rYs2gB9YAm" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="3juagqJywfq" role="37wK5m">
              <node concept="1pGfFk" id="3juagqJywwf" role="2ShVmc">
                <ref role="37wK5l" to="2ns9:3juagqJy1KY" resolve="RandomLaw" />
                <node concept="Xl_RD" id="3juagqJywH0" role="37wK5m">
                  <property role="Xl_RC" value="lawName" />
                  <node concept="17Uvod" id="3juagqJyxVL" role="lGtFl">
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                    <property role="2qtEX9" value="value" />
                    <node concept="3zFVjK" id="3juagqJyxVM" role="3zH0cK">
                      <node concept="3clFbS" id="3juagqJyxVN" role="2VODD2">
                        <node concept="3clFbF" id="3juagqJyyvV" role="3cqZAp">
                          <node concept="2OqwBi" id="3juagqJyyHy" role="3clFbG">
                            <node concept="30H73N" id="3juagqJyyvU" role="2Oq$k0" />
                            <node concept="3TrcHB" id="7rYs2gB9$2Y" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cmrfG" id="3juagqJyBLP" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                  <node concept="17Uvod" id="3K9a83axQHS" role="lGtFl">
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                    <property role="2qtEX9" value="value" />
                    <node concept="3zFVjK" id="3K9a83axQHT" role="3zH0cK">
                      <node concept="3clFbS" id="3K9a83axQHU" role="2VODD2">
                        <node concept="3clFbF" id="3K9a83ay24o" role="3cqZAp">
                          <node concept="2OqwBi" id="7rYs2gB9AW5" role="3clFbG">
                            <node concept="30H73N" id="7rYs2gB9ADn" role="2Oq$k0" />
                            <node concept="3TrcHB" id="7rYs2gB9Buj" role="2OqNvi">
                              <ref role="3TsBF5" to="7ew6:3PPzdvo2EgG" resolve="min" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cmrfG" id="3juagqJy_bo" role="37wK5m">
                  <property role="3cmrfH" value="10" />
                  <node concept="17Uvod" id="3K9a83ay61f" role="lGtFl">
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                    <property role="2qtEX9" value="value" />
                    <node concept="3zFVjK" id="3K9a83ay61g" role="3zH0cK">
                      <node concept="3clFbS" id="3K9a83ay61h" role="2VODD2">
                        <node concept="3clFbF" id="3K9a83ay6Xe" role="3cqZAp">
                          <node concept="2OqwBi" id="3K9a83ay97_" role="3clFbG">
                            <node concept="30H73N" id="3K9a83ay6Xd" role="2Oq$k0" />
                            <node concept="3TrcHB" id="3K9a83ay9$R" role="2OqNvi">
                              <ref role="3TsBF5" to="7ew6:3PPzdvo2EgI" resolve="max" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cmrfG" id="3juagqJy_F0" role="37wK5m">
                  <property role="3cmrfH" value="10" />
                  <node concept="17Uvod" id="3K9a83ayazQ" role="lGtFl">
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                    <property role="2qtEX9" value="value" />
                    <node concept="3zFVjK" id="3K9a83ayazR" role="3zH0cK">
                      <node concept="3clFbS" id="3K9a83ayazS" role="2VODD2">
                        <node concept="3clFbF" id="3K9a83aybAs" role="3cqZAp">
                          <node concept="2OqwBi" id="3K9a83aydx7" role="3clFbG">
                            <node concept="30H73N" id="3K9a83aybAr" role="2Oq$k0" />
                            <node concept="3TrcHB" id="3K9a83aydX2" role="2OqNvi">
                              <ref role="3TsBF5" to="7ew6:75cVuPqSa98" resolve="updatePeriod" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cmrfG" id="3juagqJyAaP" role="37wK5m">
                  <property role="3cmrfH" value="10" />
                  <node concept="17Uvod" id="3K9a83aye_W" role="lGtFl">
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                    <property role="2qtEX9" value="value" />
                    <node concept="3zFVjK" id="3K9a83aye_X" role="3zH0cK">
                      <node concept="3clFbS" id="3K9a83aye_Y" role="2VODD2">
                        <node concept="3clFbF" id="3K9a83ayf$6" role="3cqZAp">
                          <node concept="2OqwBi" id="3K9a83ayh9A" role="3clFbG">
                            <node concept="30H73N" id="3K9a83ayf$5" role="2Oq$k0" />
                            <node concept="3TrcHB" id="3K9a83ayh_x" role="2OqNvi">
                              <ref role="3TsBF5" to="7ew6:75cVuPqSa9b" resolve="samplingPeriod" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cmrfG" id="pAhsp7$zJb" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="7rYs2gB9RAo" role="lGtFl" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="6ZqfKADUojp">
    <property role="TrG5h" value="reduce_MarkovStates" />
    <property role="3GE5qa" value="laws" />
    <ref role="3gUMe" to="7ew6:7dKB6cHP$0X" resolve="MarkovStates" />
    <node concept="3clFbS" id="6ZqfKADWrKE" role="13RCb5">
      <node concept="3cpWs8" id="6ZqfKADWrLB" role="3cqZAp">
        <node concept="3cpWsn" id="6ZqfKADWrLC" role="3cpWs9">
          <property role="TrG5h" value="markov" />
          <node concept="3uibUv" id="6ZqfKADWrLD" role="1tU5fm">
            <ref role="3uigEE" to="2ns9:7rYs2gB7g7k" resolve="MarkovLaw" />
          </node>
        </node>
      </node>
      <node concept="9aQIb" id="6ZqfKADWrLV" role="3cqZAp">
        <node concept="3clFbS" id="6ZqfKADWrLX" role="9aQI4">
          <node concept="3cpWs8" id="6ZqfKADWsl4" role="3cqZAp">
            <node concept="3cpWsn" id="6ZqfKADWsl5" role="3cpWs9">
              <property role="TrG5h" value="markovState" />
              <node concept="3uibUv" id="6ZqfKADWsl6" role="1tU5fm">
                <ref role="3uigEE" to="2ns9:6ZqfKADUomG" resolve="MarkovState" />
              </node>
              <node concept="2ShNRf" id="6ZqfKADWsZO" role="33vP2m">
                <node concept="1pGfFk" id="6ZqfKADWto$" role="2ShVmc">
                  <ref role="37wK5l" to="2ns9:6ZqfKADUqIf" resolve="MarkovState" />
                  <node concept="Xl_RD" id="6ZqfKADWtz8" role="37wK5m">
                    <property role="Xl_RC" value="name" />
                    <node concept="17Uvod" id="6ZqfKADWtSl" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="6ZqfKADWtSo" role="3zH0cK">
                        <node concept="3clFbS" id="6ZqfKADWtSp" role="2VODD2">
                          <node concept="3clFbF" id="6ZqfKADWtSv" role="3cqZAp">
                            <node concept="2OqwBi" id="6ZqfKADWtSq" role="3clFbG">
                              <node concept="3TrcHB" id="6ZqfKADWtSt" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                              <node concept="30H73N" id="6ZqfKADWtSu" role="2Oq$k0" />
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
          <node concept="3clFbF" id="6ZqfKADXX_U" role="3cqZAp">
            <node concept="2OqwBi" id="6ZqfKADXXQl" role="3clFbG">
              <node concept="37vLTw" id="6ZqfKADXX_S" role="2Oq$k0">
                <ref role="3cqZAo" node="6ZqfKADWsl5" resolve="markovState" />
              </node>
              <node concept="liA8E" id="6ZqfKADXY0W" role="2OqNvi">
                <ref role="37wK5l" to="2ns9:6ZqfKADUoso" resolve="addTransition" />
                <node concept="2ShNRf" id="6ZqfKADZ5gr" role="37wK5m">
                  <node concept="1pGfFk" id="6ZqfKADZ6gs" role="2ShVmc">
                    <ref role="37wK5l" to="xlxw:~BigDecimal.&lt;init&gt;(java.lang.String)" resolve="BigDecimal" />
                    <node concept="Xl_RD" id="6ZqfKADZ6h1" role="37wK5m">
                      <property role="Xl_RC" value="0.5" />
                      <node concept="17Uvod" id="6ZqfKADZ6rL" role="lGtFl">
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                        <property role="2qtEX9" value="value" />
                        <node concept="3zFVjK" id="6ZqfKADZ6rO" role="3zH0cK">
                          <node concept="3clFbS" id="6ZqfKADZ6rP" role="2VODD2">
                            <node concept="3clFbF" id="6ZqfKADZ6rV" role="3cqZAp">
                              <node concept="2OqwBi" id="6ZqfKADZ6rQ" role="3clFbG">
                                <node concept="3TrcHB" id="6ZqfKADZ6rT" role="2OqNvi">
                                  <ref role="3TsBF5" to="7ew6:7dKB6cHPCIy" resolve="probability" />
                                </node>
                                <node concept="30H73N" id="6ZqfKADZ6rU" role="2Oq$k0" />
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
            <node concept="1WS0z7" id="6ZqfKADXYU7" role="lGtFl">
              <node concept="3JmXsc" id="6ZqfKADXYUa" role="3Jn$fo">
                <node concept="3clFbS" id="6ZqfKADXYUb" role="2VODD2">
                  <node concept="3clFbF" id="6ZqfKADXYUh" role="3cqZAp">
                    <node concept="2OqwBi" id="6ZqfKADXYUc" role="3clFbG">
                      <node concept="3Tsc0h" id="6ZqfKADXYUf" role="2OqNvi">
                        <ref role="3TtcxE" to="7ew6:7dKB6cHPCXV" resolve="transitions" />
                      </node>
                      <node concept="30H73N" id="6ZqfKADXYUg" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6ZqfKADWuff" role="3cqZAp">
            <node concept="2OqwBi" id="6ZqfKADWuyD" role="3clFbG">
              <node concept="37vLTw" id="6ZqfKADWufd" role="2Oq$k0">
                <ref role="3cqZAo" node="6ZqfKADWrLC" resolve="markov" />
              </node>
              <node concept="liA8E" id="6ZqfKADWuMn" role="2OqNvi">
                <ref role="37wK5l" to="2ns9:6ZqfKADVulB" resolve="addState" />
                <node concept="37vLTw" id="6ZqfKADWuMS" role="37wK5m">
                  <ref role="3cqZAo" node="6ZqfKADWsl5" resolve="markovState" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="6ZqfKADWsEN" role="lGtFl" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="6JiemAxMPet">
    <property role="TrG5h" value="reduce_ModellingLaw" />
    <property role="3GE5qa" value="laws" />
    <ref role="3gUMe" to="7ew6:7rYs2gBc2i3" resolve="ModellingLaw" />
    <node concept="3clFbS" id="6JiemAxMPfY" role="13RCb5">
      <node concept="3cpWs8" id="6JiemAxMQLB" role="3cqZAp">
        <node concept="3cpWsn" id="6JiemAxMQLC" role="3cpWs9">
          <property role="TrG5h" value="dataLaws" />
          <node concept="3uibUv" id="6JiemAxMQLD" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
            <node concept="17QB3L" id="6JiemAxMQLE" role="11_B2D" />
            <node concept="3uibUv" id="6JiemAxMQLF" role="11_B2D">
              <ref role="3uigEE" to="2ns9:7rYs2gBaBv4" resolve="IDataSource" />
            </node>
          </node>
          <node concept="2ShNRf" id="6JiemAxMQLG" role="33vP2m">
            <node concept="1pGfFk" id="6JiemAxMQLH" role="2ShVmc">
              <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
              <node concept="17QB3L" id="6JiemAxMQLI" role="1pMfVU" />
              <node concept="3uibUv" id="6JiemAxMQLJ" role="1pMfVU">
                <ref role="3uigEE" to="2ns9:7rYs2gBaBv4" resolve="IDataSource" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="9aQIb" id="6JiemAxMQRL" role="3cqZAp">
        <node concept="3clFbS" id="6JiemAxMQRN" role="9aQI4">
          <node concept="3cpWs8" id="6JiemAxMR_V" role="3cqZAp">
            <node concept="3cpWsn" id="6JiemAxMR_W" role="3cpWs9">
              <property role="TrG5h" value="modeling_law" />
              <node concept="3uibUv" id="6JiemAxMR_X" role="1tU5fm">
                <ref role="3uigEE" to="2ns9:7rYs2gBcNRC" resolve="ModellingLaw" />
              </node>
              <node concept="2ShNRf" id="6JiemAxMRDJ" role="33vP2m">
                <node concept="1pGfFk" id="6JiemAxMSR$" role="2ShVmc">
                  <ref role="37wK5l" to="2ns9:7rYs2gBcQ_H" resolve="ModellingLaw" />
                  <node concept="Xl_RD" id="6JiemAxMSRM" role="37wK5m">
                    <property role="Xl_RC" value="name" />
                    <node concept="17Uvod" id="6JiemAxMSSj" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="6JiemAxMSSm" role="3zH0cK">
                        <node concept="3clFbS" id="6JiemAxMSSn" role="2VODD2">
                          <node concept="3clFbF" id="6JiemAxMSSt" role="3cqZAp">
                            <node concept="2OqwBi" id="6JiemAxMSSo" role="3clFbG">
                              <node concept="3TrcHB" id="6JiemAxMSSr" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                              <node concept="30H73N" id="6JiemAxMSSs" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="6JiemAxMTe_" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                    <node concept="17Uvod" id="6JiemAxMV0h" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="6JiemAxMV0i" role="3zH0cK">
                        <node concept="3clFbS" id="6JiemAxMV0j" role="2VODD2">
                          <node concept="3clFbF" id="6JiemAxMVsd" role="3cqZAp">
                            <node concept="2OqwBi" id="6JiemAxMVIV" role="3clFbG">
                              <node concept="30H73N" id="6JiemAxMVsc" role="2Oq$k0" />
                              <node concept="3TrcHB" id="6JiemAxMWhd" role="2OqNvi">
                                <ref role="3TsBF5" to="7ew6:7rYs2gBc2ib" resolve="lowerBound" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="6JiemAxMXC9" role="37wK5m">
                    <property role="3cmrfH" value="86400" />
                    <node concept="17Uvod" id="6JiemAxMZoT" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="6JiemAxMZoW" role="3zH0cK">
                        <node concept="3clFbS" id="6JiemAxMZoX" role="2VODD2">
                          <node concept="3clFbF" id="6JiemAxMZp3" role="3cqZAp">
                            <node concept="2OqwBi" id="6JiemAxMZoY" role="3clFbG">
                              <node concept="3TrcHB" id="6JiemAxMZp1" role="2OqNvi">
                                <ref role="3TsBF5" to="7ew6:7rYs2gBc2i9" resolve="upperBound" />
                              </node>
                              <node concept="30H73N" id="6JiemAxMZp2" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="6JiemAxN0jb" role="37wK5m">
                    <property role="3cmrfH" value="60" />
                    <node concept="17Uvod" id="6JiemAxN0Kl" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="6JiemAxN0Ko" role="3zH0cK">
                        <node concept="3clFbS" id="6JiemAxN0Kp" role="2VODD2">
                          <node concept="3clFbF" id="6JiemAxN0Kv" role="3cqZAp">
                            <node concept="2OqwBi" id="6JiemAxN0Kq" role="3clFbG">
                              <node concept="3TrcHB" id="6JiemAxN0Kt" role="2OqNvi">
                                <ref role="3TsBF5" to="7ew6:75cVuPqSa98" resolve="updatePeriod" />
                              </node>
                              <node concept="30H73N" id="6JiemAxN0Ku" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="6JiemAxN1FX" role="37wK5m">
                    <property role="3cmrfH" value="15" />
                    <node concept="17Uvod" id="6JiemAxN29Q" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="6JiemAxN29T" role="3zH0cK">
                        <node concept="3clFbS" id="6JiemAxN29U" role="2VODD2">
                          <node concept="3clFbF" id="6JiemAxN2a0" role="3cqZAp">
                            <node concept="2OqwBi" id="6JiemAxN29V" role="3clFbG">
                              <node concept="3TrcHB" id="6JiemAxN29Y" role="2OqNvi">
                                <ref role="3TsBF5" to="7ew6:75cVuPqSa9b" resolve="samplingPeriod" />
                              </node>
                              <node concept="30H73N" id="6JiemAxN29Z" role="2Oq$k0" />
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
          <node concept="3clFbF" id="6JiemAxNuF3" role="3cqZAp">
            <node concept="2OqwBi" id="6JiemAxNvjl" role="3clFbG">
              <node concept="37vLTw" id="6JiemAxNuF1" role="2Oq$k0">
                <ref role="3cqZAo" node="6JiemAxMR_W" resolve="modeling_law" />
              </node>
              <node concept="liA8E" id="6JiemAxNv_i" role="2OqNvi">
                <ref role="37wK5l" to="2ns9:6JiemAxNcXW" resolve="addConstraint" />
                <node concept="3cmrfG" id="6JiemAxNGrb" role="37wK5m">
                  <property role="3cmrfH" value="200" />
                  <node concept="17Uvod" id="6JiemAxNHtN" role="lGtFl">
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                    <property role="2qtEX9" value="value" />
                    <node concept="3zFVjK" id="6JiemAxNHtQ" role="3zH0cK">
                      <node concept="3clFbS" id="6JiemAxNHtR" role="2VODD2">
                        <node concept="3clFbF" id="6JiemAxNHtX" role="3cqZAp">
                          <node concept="2OqwBi" id="6JiemAxNHtS" role="3clFbG">
                            <node concept="3TrcHB" id="6JiemAxNHtV" role="2OqNvi">
                              <ref role="3TsBF5" to="7ew6:7rYs2gBc2ik" resolve="bound" />
                            </node>
                            <node concept="30H73N" id="6JiemAxNHtW" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="6JiemAxNxWR" role="37wK5m">
                  <property role="Xl_RC" value="x^2" />
                  <node concept="17Uvod" id="6JiemAxNHUf" role="lGtFl">
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                    <property role="2qtEX9" value="value" />
                    <node concept="3zFVjK" id="6JiemAxNHUi" role="3zH0cK">
                      <node concept="3clFbS" id="6JiemAxNHUj" role="2VODD2">
                        <node concept="3clFbF" id="6JiemAxNHUp" role="3cqZAp">
                          <node concept="2OqwBi" id="6JiemAxNHUk" role="3clFbG">
                            <node concept="3TrcHB" id="6JiemAxNHUn" role="2OqNvi">
                              <ref role="3TsBF5" to="7ew6:7rYs2gBc2im" resolve="closure" />
                            </node>
                            <node concept="30H73N" id="6JiemAxNHUo" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1WS0z7" id="6JiemAxNz2q" role="lGtFl">
              <node concept="3JmXsc" id="6JiemAxNz2t" role="3Jn$fo">
                <node concept="3clFbS" id="6JiemAxNz2u" role="2VODD2">
                  <node concept="3clFbF" id="6JiemAxNz2$" role="3cqZAp">
                    <node concept="2OqwBi" id="6JiemAxNz2v" role="3clFbG">
                      <node concept="3Tsc0h" id="6JiemAxNz2y" role="2OqNvi">
                        <ref role="3TtcxE" to="7ew6:7rYs2gBc2ie" resolve="constraint" />
                      </node>
                      <node concept="30H73N" id="6JiemAxNz2z" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6vH4OV2E$HC" role="3cqZAp">
            <node concept="2OqwBi" id="6vH4OV2E_wb" role="3clFbG">
              <node concept="37vLTw" id="6vH4OV2E$HA" role="2Oq$k0">
                <ref role="3cqZAo" node="6JiemAxMR_W" resolve="modeling_law" />
              </node>
              <node concept="liA8E" id="6vH4OV2E_K6" role="2OqNvi">
                <ref role="37wK5l" to="2ns9:6vH4OV2CS3m" resolve="assertValidModel" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6vH4OV2FLAY" role="3cqZAp">
            <node concept="3cpWsn" id="6vH4OV2FLAZ" role="3cpWs9">
              <property role="TrG5h" value="dataSource" />
              <node concept="3uibUv" id="6vH4OV2FLB0" role="1tU5fm">
                <ref role="3uigEE" to="2ns9:7rYs2gBaBv4" resolve="IDataSource" />
              </node>
              <node concept="37vLTw" id="6vH4OV2FMlO" role="33vP2m">
                <ref role="3cqZAo" node="6JiemAxMR_W" resolve="modeling_law" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6vH4OV2FxJx" role="3cqZAp">
            <node concept="29HgVG" id="6vH4OV2Fyq6" role="lGtFl">
              <node concept="3NFfHV" id="6vH4OV2Fyq7" role="3NFExx">
                <node concept="3clFbS" id="6vH4OV2Fyq8" role="2VODD2">
                  <node concept="3clFbF" id="6vH4OV2Fyqe" role="3cqZAp">
                    <node concept="2OqwBi" id="6vH4OV2Fyq9" role="3clFbG">
                      <node concept="3TrEf2" id="6vH4OV2Fyqc" role="2OqNvi">
                        <ref role="3Tt5mk" to="7ew6:6vH4OV2EWaQ" resolve="noise" />
                      </node>
                      <node concept="30H73N" id="6vH4OV2Fyqd" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6JiemAxN3$n" role="3cqZAp">
            <node concept="2OqwBi" id="6JiemAxN4im" role="3clFbG">
              <node concept="37vLTw" id="6JiemAxN3$l" role="2Oq$k0">
                <ref role="3cqZAo" node="6JiemAxMQLC" resolve="dataLaws" />
              </node>
              <node concept="liA8E" id="6JiemAxN4TT" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                <node concept="Xl_RD" id="6JiemAxN56Y" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                  <node concept="17Uvod" id="6JiemAxN5qy" role="lGtFl">
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                    <property role="2qtEX9" value="value" />
                    <node concept="3zFVjK" id="6JiemAxN5q_" role="3zH0cK">
                      <node concept="3clFbS" id="6JiemAxN5qA" role="2VODD2">
                        <node concept="3clFbF" id="6JiemAxN5qG" role="3cqZAp">
                          <node concept="2OqwBi" id="6JiemAxN5qB" role="3clFbG">
                            <node concept="3TrcHB" id="6JiemAxN5qE" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                            <node concept="30H73N" id="6JiemAxN5qF" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6JiemAxN604" role="37wK5m">
                  <ref role="3cqZAo" node="6JiemAxMR_W" resolve="modeling_law" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="6JiemAxMQS3" role="lGtFl" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="6vH4OV2FwWa">
    <property role="TrG5h" value="reduce_Noise" />
    <ref role="3gUMe" to="7ew6:6vH4OV2EW7y" resolve="Noise" />
    <node concept="3clFbS" id="6vH4OV2FMFx" role="13RCb5">
      <node concept="3cpWs8" id="6vH4OV2FMFJ" role="3cqZAp">
        <node concept="3cpWsn" id="6vH4OV2FMFK" role="3cpWs9">
          <property role="TrG5h" value="dataSource" />
          <node concept="3uibUv" id="6vH4OV2FMFL" role="1tU5fm">
            <ref role="3uigEE" to="2ns9:7rYs2gBaBv4" resolve="IDataSource" />
          </node>
        </node>
      </node>
      <node concept="3clFbF" id="6vH4OV2FMG8" role="3cqZAp">
        <node concept="2OqwBi" id="6vH4OV2FMLS" role="3clFbG">
          <node concept="37vLTw" id="6vH4OV2FMG6" role="2Oq$k0">
            <ref role="3cqZAo" node="6vH4OV2FMFK" resolve="dataSource" />
          </node>
          <node concept="liA8E" id="6vH4OV2FMXe" role="2OqNvi">
            <ref role="37wK5l" to="2ns9:6vH4OV2FIUQ" resolve="setNoiseGenerator" />
            <node concept="2ShNRf" id="6vH4OV2FMXB" role="37wK5m">
              <node concept="1pGfFk" id="6vH4OV2FNcL" role="2ShVmc">
                <ref role="37wK5l" to="2ns9:6vH4OV2FyKA" resolve="NoiseGenerator" />
                <node concept="Xl_RD" id="6vH4OV2FNda" role="37wK5m">
                  <property role="Xl_RC" value="-1." />
                  <node concept="17Uvod" id="6vH4OV2FN$o" role="lGtFl">
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                    <property role="2qtEX9" value="value" />
                    <node concept="3zFVjK" id="6vH4OV2FN$r" role="3zH0cK">
                      <node concept="3clFbS" id="6vH4OV2FN$s" role="2VODD2">
                        <node concept="3clFbF" id="6vH4OV2FN$y" role="3cqZAp">
                          <node concept="2OqwBi" id="6vH4OV2FN$t" role="3clFbG">
                            <node concept="3TrcHB" id="6vH4OV2FN$w" role="2OqNvi">
                              <ref role="3TsBF5" to="7ew6:6vH4OV2EW7z" resolve="min" />
                            </node>
                            <node concept="30H73N" id="6vH4OV2FN$x" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="6vH4OV2FNeZ" role="37wK5m">
                  <property role="Xl_RC" value="1." />
                  <node concept="17Uvod" id="6vH4OV2FNKZ" role="lGtFl">
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                    <property role="2qtEX9" value="value" />
                    <node concept="3zFVjK" id="6vH4OV2FNL2" role="3zH0cK">
                      <node concept="3clFbS" id="6vH4OV2FNL3" role="2VODD2">
                        <node concept="3clFbF" id="6vH4OV2FNL9" role="3cqZAp">
                          <node concept="2OqwBi" id="6vH4OV2FNL4" role="3clFbG">
                            <node concept="3TrcHB" id="6vH4OV2FNL7" role="2OqNvi">
                              <ref role="3TsBF5" to="7ew6:6vH4OV2EW7_" resolve="max" />
                            </node>
                            <node concept="30H73N" id="6vH4OV2FNL8" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cmrfG" id="6vH4OV2FNgG" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                  <node concept="17Uvod" id="6vH4OV2FNY8" role="lGtFl">
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                    <property role="2qtEX9" value="value" />
                    <node concept="3zFVjK" id="6vH4OV2FNYb" role="3zH0cK">
                      <node concept="3clFbS" id="6vH4OV2FNYc" role="2VODD2">
                        <node concept="3clFbF" id="6vH4OV2FNYi" role="3cqZAp">
                          <node concept="2OqwBi" id="6vH4OV2FNYd" role="3clFbG">
                            <node concept="3TrcHB" id="6vH4OV2FNYg" role="2OqNvi">
                              <ref role="3TsBF5" to="7ew6:6vH4OV2EW7C" resolve="scale" />
                            </node>
                            <node concept="30H73N" id="6vH4OV2FNYh" role="2Oq$k0" />
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
        <node concept="raruj" id="6vH4OV2FNyv" role="lGtFl" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="3QxC82ZIv$a">
    <property role="TrG5h" value="reduce_ClassicGraph" />
    <property role="3GE5qa" value="displays" />
    <ref role="3gUMe" to="7ew6:5kA4vFmjO2P" resolve="ClassicGraph" />
    <node concept="3clFbS" id="3QxC82ZIBbO" role="13RCb5">
      <node concept="3cpWs8" id="7ywHfeC9LJT" role="3cqZAp">
        <node concept="3cpWsn" id="7ywHfeC9LJU" role="3cpWs9">
          <property role="TrG5h" value="grafanaClient" />
          <node concept="3uibUv" id="7ywHfeC9LJV" role="1tU5fm">
            <ref role="3uigEE" to="ynw8:~GrafanaClient" resolve="GrafanaClient" />
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="7ywHfeC9SVp" role="3cqZAp">
        <node concept="3cpWsn" id="7ywHfeC9SVs" role="3cpWs9">
          <property role="TrG5h" value="databaseName" />
          <node concept="17QB3L" id="7ywHfeC9SVn" role="1tU5fm" />
        </node>
      </node>
      <node concept="9aQIb" id="3QxC82ZIEfL" role="3cqZAp">
        <node concept="3clFbS" id="3QxC82ZIEfN" role="9aQI4">
          <node concept="3cpWs8" id="7ywHfeC9M5b" role="3cqZAp">
            <node concept="3cpWsn" id="7ywHfeC9M5e" role="3cpWs9">
              <property role="TrG5h" value="dashboardName" />
              <node concept="17QB3L" id="7ywHfeC9M5a" role="1tU5fm" />
              <node concept="Xl_RD" id="7ywHfeC9M5F" role="33vP2m">
                <property role="Xl_RC" value="name" />
                <node concept="17Uvod" id="7ywHfeC9M5V" role="lGtFl">
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <property role="2qtEX9" value="value" />
                  <node concept="3zFVjK" id="7ywHfeC9M5Y" role="3zH0cK">
                    <node concept="3clFbS" id="7ywHfeC9M5Z" role="2VODD2">
                      <node concept="3clFbF" id="7ywHfeC9M65" role="3cqZAp">
                        <node concept="2OqwBi" id="7ywHfeC9M60" role="3clFbG">
                          <node concept="3TrcHB" id="7ywHfeC9M63" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                          <node concept="30H73N" id="7ywHfeC9M64" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="55vGwhCPNRk" role="3cqZAp" />
          <node concept="SfApY" id="55vGwhCPRWL" role="3cqZAp">
            <node concept="3clFbS" id="55vGwhCPRWM" role="SfCbr">
              <node concept="3clFbF" id="55vGwhCPPoF" role="3cqZAp">
                <node concept="2OqwBi" id="55vGwhCPQdx" role="3clFbG">
                  <node concept="37vLTw" id="55vGwhCPPoD" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ywHfeC9LJU" resolve="grafanaClient" />
                  </node>
                  <node concept="liA8E" id="55vGwhCPQnH" role="2OqNvi">
                    <ref role="37wK5l" to="ynw8:~GrafanaClient.deleteDashboard(java.lang.String):java.lang.String" resolve="deleteDashboard" />
                    <node concept="37vLTw" id="55vGwhCPQoj" role="37wK5m">
                      <ref role="3cqZAo" node="7ywHfeC9M5e" resolve="dashboardName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="TDmWw" id="55vGwhCPRWS" role="TEbGg">
              <node concept="3clFbS" id="55vGwhCPRWV" role="TDEfX">
                <node concept="3SKdUt" id="pAhsp7wd$a" role="3cqZAp">
                  <node concept="3SKdUq" id="pAhsp7wd$b" role="3SKWNk">
                    <property role="3SKdUp" value="that shouldn't throw an exception but yeah, whatever" />
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="55vGwhCPRWW" role="TDEfY">
                <property role="TrG5h" value="e" />
                <node concept="3uibUv" id="55vGwhCPSYD" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="55vGwhCPODk" role="3cqZAp" />
          <node concept="3cpWs8" id="pAhsp7wKg7" role="3cqZAp">
            <node concept="3cpWsn" id="pAhsp7wKg8" role="3cpWs9">
              <property role="TrG5h" value="rows" />
              <node concept="3uibUv" id="pAhsp7wKg5" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                <node concept="3uibUv" id="pAhsp7wL3E" role="11_B2D">
                  <ref role="3uigEE" to="an4w:~DashboardRow" resolve="DashboardRow" />
                </node>
              </node>
              <node concept="2ShNRf" id="pAhsp7wL4h" role="33vP2m">
                <node concept="1pGfFk" id="pAhsp7wMbA" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="pAhsp7wIDg" role="3cqZAp" />
          <node concept="9aQIb" id="pAhsp7xuHC" role="3cqZAp">
            <node concept="3clFbS" id="pAhsp7xuHE" role="9aQI4">
              <node concept="3cpWs8" id="pAhsp7wTBP" role="3cqZAp">
                <node concept="3cpWsn" id="pAhsp7wTBQ" role="3cpWs9">
                  <property role="TrG5h" value="panels" />
                  <node concept="3uibUv" id="pAhsp7wTBN" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                    <node concept="3uibUv" id="pAhsp7wUrU" role="11_B2D">
                      <ref role="3uigEE" to="an4w:~DashboardPanel" resolve="DashboardPanel" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="pAhsp7wUsA" role="33vP2m">
                    <node concept="1pGfFk" id="pAhsp7wUGB" role="2ShVmc">
                      <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="pAhsp7xEyk" role="3cqZAp">
                <node concept="3clFbS" id="pAhsp7xEym" role="9aQI4">
                  <node concept="3cpWs8" id="7ywHfeC9MAs" role="3cqZAp">
                    <node concept="3cpWsn" id="7ywHfeC9MAt" role="3cpWs9">
                      <property role="TrG5h" value="panelTarget" />
                      <node concept="3uibUv" id="7ywHfeC9MAu" role="1tU5fm">
                        <ref role="3uigEE" to="an4w:~DashboardPanelTarget" resolve="DashboardPanelTarget" />
                      </node>
                      <node concept="2OqwBi" id="7ywHfeC9TnN" role="33vP2m">
                        <node concept="2OqwBi" id="7ywHfeC9N9I" role="2Oq$k0">
                          <node concept="2ShNRf" id="7ywHfeC9MLB" role="2Oq$k0">
                            <node concept="1pGfFk" id="7ywHfeC9N1x" role="2ShVmc">
                              <ref role="37wK5l" to="an4w:~DashboardPanelTarget.&lt;init&gt;()" resolve="DashboardPanelTarget" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7ywHfeC9Npg" role="2OqNvi">
                            <ref role="37wK5l" to="an4w:~DashboardPanelTarget.refId(java.lang.String):com.appnexus.grafana.client.models.DashboardPanelTarget" resolve="refId" />
                            <node concept="Xl_RD" id="55vGwhCQpbR" role="37wK5m">
                              <property role="Xl_RC" value="panel name" />
                              <node concept="17Uvod" id="pAhsp7xNVw" role="lGtFl">
                                <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                                <property role="2qtEX9" value="value" />
                                <node concept="3zFVjK" id="pAhsp7xNVz" role="3zH0cK">
                                  <node concept="3clFbS" id="pAhsp7xNV$" role="2VODD2">
                                    <node concept="3clFbF" id="pAhsp7xNVE" role="3cqZAp">
                                      <node concept="2OqwBi" id="pAhsp7xNV_" role="3clFbG">
                                        <node concept="3TrcHB" id="pAhsp7xNVC" role="2OqNvi">
                                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                        </node>
                                        <node concept="30H73N" id="pAhsp7xNVD" role="2Oq$k0" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7ywHfeC9THb" role="2OqNvi">
                          <ref role="37wK5l" to="an4w:~DashboardPanelTarget.target(java.lang.String):com.appnexus.grafana.client.models.DashboardPanelTarget" resolve="target" />
                          <node concept="Xl_RD" id="pAhsp7xJZX" role="37wK5m">
                            <property role="Xl_RC" value="*" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="7ywHfeC9UL7" role="3cqZAp">
                    <node concept="3cpWsn" id="7ywHfeC9UL8" role="3cpWs9">
                      <property role="TrG5h" value="xAxis" />
                      <node concept="3uibUv" id="7ywHfeC9UL9" role="1tU5fm">
                        <ref role="3uigEE" to="an4w:~DashboardPanelXAxis" resolve="DashboardPanelXAxis" />
                      </node>
                      <node concept="2OqwBi" id="7ywHfeC9Wdy" role="33vP2m">
                        <node concept="2OqwBi" id="7ywHfeC9VEZ" role="2Oq$k0">
                          <node concept="2ShNRf" id="7ywHfeC9V0Y" role="2Oq$k0">
                            <node concept="1pGfFk" id="7ywHfeC9VwU" role="2ShVmc">
                              <ref role="37wK5l" to="an4w:~DashboardPanelXAxis.&lt;init&gt;()" resolve="DashboardPanelXAxis" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7ywHfeC9VUx" role="2OqNvi">
                            <ref role="37wK5l" to="an4w:~DashboardPanelXAxis.show(java.lang.Boolean):com.appnexus.grafana.client.models.DashboardPanelXAxis" resolve="show" />
                            <node concept="3clFbT" id="7ywHfeC9W17" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7ywHfeC9Wqu" role="2OqNvi">
                          <ref role="37wK5l" to="an4w:~DashboardPanelXAxis.mode(com.appnexus.grafana.client.models.DashboardPanelXAxis$Mode):com.appnexus.grafana.client.models.DashboardPanelXAxis" resolve="mode" />
                          <node concept="Rm8GO" id="7ywHfeC9Yjw" role="37wK5m">
                            <ref role="Rm8GQ" to="an4w:~DashboardPanelXAxis$Mode.TIME" resolve="TIME" />
                            <ref role="1Px2BO" to="an4w:~DashboardPanelXAxis$Mode" resolve="DashboardPanelXAxis.Mode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="7ywHfeC9Ze$" role="3cqZAp">
                    <node concept="3cpWsn" id="7ywHfeC9Ze_" role="3cpWs9">
                      <property role="TrG5h" value="yAxis" />
                      <node concept="3uibUv" id="7ywHfeC9ZeA" role="1tU5fm">
                        <ref role="3uigEE" to="an4w:~DashboardPanelYAxis" resolve="DashboardPanelYAxis" />
                      </node>
                      <node concept="2OqwBi" id="55vGwhCQ7so" role="33vP2m">
                        <node concept="2OqwBi" id="7ywHfeCa0Zo" role="2Oq$k0">
                          <node concept="2OqwBi" id="7ywHfeCa0o6" role="2Oq$k0">
                            <node concept="2OqwBi" id="7ywHfeC9ZUO" role="2Oq$k0">
                              <node concept="2ShNRf" id="7ywHfeC9ZyH" role="2Oq$k0">
                                <node concept="1pGfFk" id="7ywHfeC9ZMB" role="2ShVmc">
                                  <ref role="37wK5l" to="an4w:~DashboardPanelYAxis.&lt;init&gt;()" resolve="DashboardPanelYAxis" />
                                </node>
                              </node>
                              <node concept="liA8E" id="7ywHfeCa0am" role="2OqNvi">
                                <ref role="37wK5l" to="an4w:~DashboardPanelYAxis.format(com.appnexus.grafana.client.models.DashboardPanelYAxis$Format):com.appnexus.grafana.client.models.DashboardPanelYAxis" resolve="format" />
                                <node concept="Rm8GO" id="7ywHfeCa0f6" role="37wK5m">
                                  <ref role="Rm8GQ" to="an4w:~DashboardPanelYAxis$Format.SHORT" resolve="SHORT" />
                                  <ref role="1Px2BO" to="an4w:~DashboardPanelYAxis$Format" resolve="DashboardPanelYAxis.Format" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="7ywHfeCa0DK" role="2OqNvi">
                              <ref role="37wK5l" to="an4w:~DashboardPanelYAxis.logBase(java.lang.Integer):com.appnexus.grafana.client.models.DashboardPanelYAxis" resolve="logBase" />
                              <node concept="3cmrfG" id="7ywHfeCa0Gm" role="37wK5m">
                                <property role="3cmrfH" value="1" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="7ywHfeCa1Ad" role="2OqNvi">
                            <ref role="37wK5l" to="an4w:~DashboardPanelYAxis.show(java.lang.Boolean):com.appnexus.grafana.client.models.DashboardPanelYAxis" resolve="show" />
                            <node concept="3clFbT" id="7ywHfeCa2cB" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="55vGwhCQ8fK" role="2OqNvi">
                          <ref role="37wK5l" to="an4w:~DashboardPanelYAxis.label(java.lang.String):com.appnexus.grafana.client.models.DashboardPanelYAxis" resolve="label" />
                          <node concept="Xl_RD" id="55vGwhCQ9bR" role="37wK5m">
                            <property role="Xl_RC" value="y label" />
                            <node concept="17Uvod" id="pAhsp7xPvN" role="lGtFl">
                              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                              <property role="2qtEX9" value="value" />
                              <node concept="3zFVjK" id="pAhsp7xPvQ" role="3zH0cK">
                                <node concept="3clFbS" id="pAhsp7xPvR" role="2VODD2">
                                  <node concept="3clFbF" id="pAhsp7xPvX" role="3cqZAp">
                                    <node concept="2OqwBi" id="pAhsp7xPvS" role="3clFbG">
                                      <node concept="3TrcHB" id="pAhsp7xPvV" role="2OqNvi">
                                        <ref role="3TsBF5" to="7ew6:pAhsp7whkP" resolve="yAxis" />
                                      </node>
                                      <node concept="30H73N" id="pAhsp7xPvW" role="2Oq$k0" />
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
                  <node concept="3clFbH" id="7ywHfeCa2Pg" role="3cqZAp" />
                  <node concept="3cpWs8" id="pAhsp7x2wJ" role="3cqZAp">
                    <node concept="3cpWsn" id="pAhsp7x2wK" role="3cpWs9">
                      <property role="TrG5h" value="targets" />
                      <node concept="3uibUv" id="pAhsp7x2wH" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                        <node concept="3uibUv" id="pAhsp7xcnI" role="11_B2D">
                          <ref role="3uigEE" to="an4w:~DashboardPanelTarget" resolve="DashboardPanelTarget" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="pAhsp7x3m3" role="33vP2m">
                        <node concept="1pGfFk" id="pAhsp7x3A4" role="2ShVmc">
                          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="pAhsp7xisv" role="3cqZAp">
                    <node concept="3cpWsn" id="pAhsp7xisw" role="3cpWs9">
                      <property role="TrG5h" value="yAxes" />
                      <node concept="3uibUv" id="pAhsp7xisx" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                        <node concept="3uibUv" id="pAhsp7xjhP" role="11_B2D">
                          <ref role="3uigEE" to="an4w:~DashboardPanelYAxis" resolve="DashboardPanelYAxis" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="pAhsp7xisz" role="33vP2m">
                        <node concept="1pGfFk" id="pAhsp7xis$" role="2ShVmc">
                          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="pAhsp7xk7_" role="3cqZAp">
                    <node concept="2OqwBi" id="pAhsp7xlTB" role="3clFbG">
                      <node concept="37vLTw" id="pAhsp7xk7z" role="2Oq$k0">
                        <ref role="3cqZAo" node="pAhsp7xisw" resolve="yAxes" />
                      </node>
                      <node concept="liA8E" id="pAhsp7xogd" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                        <node concept="37vLTw" id="pAhsp7xoov" role="37wK5m">
                          <ref role="3cqZAo" node="7ywHfeC9Ze_" resolve="yAxis" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="pAhsp7xoRT" role="3cqZAp">
                    <node concept="2OqwBi" id="pAhsp7xoRU" role="3clFbG">
                      <node concept="37vLTw" id="pAhsp7xoRV" role="2Oq$k0">
                        <ref role="3cqZAo" node="pAhsp7xisw" resolve="yAxes" />
                      </node>
                      <node concept="liA8E" id="pAhsp7xoRW" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                        <node concept="37vLTw" id="pAhsp7xoRX" role="37wK5m">
                          <ref role="3cqZAo" node="7ywHfeC9Ze_" resolve="yAxis" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="pAhsp7xcot" role="3cqZAp">
                    <node concept="2OqwBi" id="pAhsp7xdZt" role="3clFbG">
                      <node concept="37vLTw" id="pAhsp7xcor" role="2Oq$k0">
                        <ref role="3cqZAo" node="pAhsp7x2wK" resolve="targets" />
                      </node>
                      <node concept="liA8E" id="pAhsp7xgwC" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                        <node concept="37vLTw" id="pAhsp7xgCU" role="37wK5m">
                          <ref role="3cqZAo" node="7ywHfeC9MAt" resolve="panelTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="pAhsp7xCSi" role="3cqZAp" />
                  <node concept="3cpWs8" id="7ywHfeCa46O" role="3cqZAp">
                    <node concept="3cpWsn" id="7ywHfeCa46P" role="3cpWs9">
                      <property role="TrG5h" value="panel" />
                      <node concept="3uibUv" id="7ywHfeCa46Q" role="1tU5fm">
                        <ref role="3uigEE" to="an4w:~DashboardPanel" resolve="DashboardPanel" />
                      </node>
                      <node concept="2OqwBi" id="55vGwhCPr8A" role="33vP2m">
                        <node concept="2OqwBi" id="7ywHfeCarL9" role="2Oq$k0">
                          <node concept="2OqwBi" id="7ywHfeCalr5" role="2Oq$k0">
                            <node concept="2OqwBi" id="7ywHfeCagVO" role="2Oq$k0">
                              <node concept="2OqwBi" id="7ywHfeCae0t" role="2Oq$k0">
                                <node concept="2OqwBi" id="7ywHfeCa9Rn" role="2Oq$k0">
                                  <node concept="2OqwBi" id="7ywHfeCa8_u" role="2Oq$k0">
                                    <node concept="2OqwBi" id="7ywHfeCa5cy" role="2Oq$k0">
                                      <node concept="2ShNRf" id="7ywHfeCa4$p" role="2Oq$k0">
                                        <node concept="1pGfFk" id="7ywHfeCa4Oj" role="2ShVmc">
                                          <ref role="37wK5l" to="an4w:~DashboardPanel.&lt;init&gt;()" resolve="DashboardPanel" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="7ywHfeCa5s4" role="2OqNvi">
                                        <ref role="37wK5l" to="an4w:~DashboardPanel.targets(java.util.List):com.appnexus.grafana.client.models.DashboardPanel" resolve="targets" />
                                        <node concept="37vLTw" id="pAhsp7xhD9" role="37wK5m">
                                          <ref role="3cqZAo" node="pAhsp7x2wK" resolve="targets" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="7ywHfeCa94n" role="2OqNvi">
                                      <ref role="37wK5l" to="an4w:~DashboardPanel.datasource(java.lang.String):com.appnexus.grafana.client.models.DashboardPanel" resolve="datasource" />
                                      <node concept="Xl_RD" id="7ywHfeCa9ll" role="37wK5m">
                                        <property role="Xl_RC" value="influxdb" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="7ywHfeCab4y" role="2OqNvi">
                                    <ref role="37wK5l" to="an4w:~DashboardPanel.type(com.appnexus.grafana.client.models.DashboardPanel$Type):com.appnexus.grafana.client.models.DashboardPanel" resolve="type" />
                                    <node concept="Rm8GO" id="7ywHfeCadnc" role="37wK5m">
                                      <ref role="Rm8GQ" to="an4w:~DashboardPanel$Type.GRAPH" resolve="GRAPH" />
                                      <ref role="1Px2BO" to="an4w:~DashboardPanel$Type" resolve="DashboardPanel.Type" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="7ywHfeCafO2" role="2OqNvi">
                                  <ref role="37wK5l" to="an4w:~DashboardPanel.fill(java.lang.Integer):com.appnexus.grafana.client.models.DashboardPanel" resolve="fill" />
                                  <node concept="3cmrfG" id="7ywHfeCagfH" role="37wK5m">
                                    <property role="3cmrfH" value="1" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="7ywHfeCajmA" role="2OqNvi">
                                <ref role="37wK5l" to="an4w:~DashboardPanel.title(java.lang.String):com.appnexus.grafana.client.models.DashboardPanel" resolve="title" />
                                <node concept="Xl_RD" id="pAhsp7xS14" role="37wK5m">
                                  <property role="Xl_RC" value="panel name" />
                                  <node concept="17Uvod" id="pAhsp7xUJz" role="lGtFl">
                                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                                    <property role="2qtEX9" value="value" />
                                    <node concept="3zFVjK" id="pAhsp7xUJA" role="3zH0cK">
                                      <node concept="3clFbS" id="pAhsp7xUJB" role="2VODD2">
                                        <node concept="3clFbF" id="pAhsp7xUJH" role="3cqZAp">
                                          <node concept="2OqwBi" id="pAhsp7xUJC" role="3clFbG">
                                            <node concept="3TrcHB" id="pAhsp7xUJF" role="2OqNvi">
                                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                            </node>
                                            <node concept="30H73N" id="pAhsp7xUJG" role="2Oq$k0" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="7ywHfeCapos" role="2OqNvi">
                              <ref role="37wK5l" to="an4w:~DashboardPanel.xaxis(com.appnexus.grafana.client.models.DashboardPanelXAxis):com.appnexus.grafana.client.models.DashboardPanel" resolve="xaxis" />
                              <node concept="37vLTw" id="7ywHfeCaqwM" role="37wK5m">
                                <ref role="3cqZAo" node="7ywHfeC9UL8" resolve="xAxis" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="7ywHfeCaxcg" role="2OqNvi">
                            <ref role="37wK5l" to="an4w:~DashboardPanel.yaxes(java.util.List):com.appnexus.grafana.client.models.DashboardPanel" resolve="yaxes" />
                            <node concept="37vLTw" id="pAhsp7xr0i" role="37wK5m">
                              <ref role="3cqZAo" node="pAhsp7xisw" resolve="yAxes" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="55vGwhCPwoE" role="2OqNvi">
                          <ref role="37wK5l" to="an4w:~DashboardPanel.span(java.lang.Integer):com.appnexus.grafana.client.models.DashboardPanel" resolve="span" />
                          <node concept="3cmrfG" id="55vGwhCPxT3" role="37wK5m">
                            <property role="3cmrfH" value="4" />
                            <node concept="17Uvod" id="pAhsp7xREC" role="lGtFl">
                              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                              <property role="2qtEX9" value="value" />
                              <node concept="3zFVjK" id="pAhsp7xREF" role="3zH0cK">
                                <node concept="3clFbS" id="pAhsp7xREG" role="2VODD2">
                                  <node concept="3clFbF" id="pAhsp7xREM" role="3cqZAp">
                                    <node concept="2OqwBi" id="pAhsp7xREH" role="3clFbG">
                                      <node concept="3TrcHB" id="pAhsp7xREK" role="2OqNvi">
                                        <ref role="3TsBF5" to="7ew6:pAhsp7whp7" resolve="span" />
                                      </node>
                                      <node concept="30H73N" id="pAhsp7xREL" role="2Oq$k0" />
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
                  <node concept="3clFbF" id="pAhsp7wWwS" role="3cqZAp">
                    <node concept="2OqwBi" id="pAhsp7wY6n" role="3clFbG">
                      <node concept="37vLTw" id="pAhsp7wWwQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="pAhsp7wTBQ" resolve="panels" />
                      </node>
                      <node concept="liA8E" id="pAhsp7x0Bx" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                        <node concept="37vLTw" id="pAhsp7x0JN" role="37wK5m">
                          <ref role="3cqZAo" node="7ywHfeCa46P" resolve="panel" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1WS0z7" id="pAhsp7xITU" role="lGtFl">
                  <node concept="3JmXsc" id="pAhsp7xITX" role="3Jn$fo">
                    <node concept="3clFbS" id="pAhsp7xITY" role="2VODD2">
                      <node concept="3clFbF" id="pAhsp7xIU4" role="3cqZAp">
                        <node concept="2OqwBi" id="pAhsp7xITZ" role="3clFbG">
                          <node concept="3Tsc0h" id="pAhsp7xIU2" role="2OqNvi">
                            <ref role="3TtcxE" to="7ew6:pAhsp7whpC" resolve="panels" />
                          </node>
                          <node concept="30H73N" id="pAhsp7xIU3" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="pAhsp7xBKu" role="3cqZAp" />
              <node concept="3cpWs8" id="7ywHfeCaNHu" role="3cqZAp">
                <node concept="3cpWsn" id="7ywHfeCaNHv" role="3cpWs9">
                  <property role="TrG5h" value="row" />
                  <node concept="3uibUv" id="7ywHfeCaNHw" role="1tU5fm">
                    <ref role="3uigEE" to="an4w:~DashboardRow" resolve="DashboardRow" />
                  </node>
                  <node concept="2OqwBi" id="7ywHfeCaP6i" role="33vP2m">
                    <node concept="2OqwBi" id="7ywHfeCaOE0" role="2Oq$k0">
                      <node concept="2ShNRf" id="7ywHfeCaOhT" role="2Oq$k0">
                        <node concept="1pGfFk" id="7ywHfeCaOxN" role="2ShVmc">
                          <ref role="37wK5l" to="an4w:~DashboardRow.&lt;init&gt;()" resolve="DashboardRow" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7ywHfeCaOTy" role="2OqNvi">
                        <ref role="37wK5l" to="an4w:~DashboardRow.collapse(java.lang.Boolean):com.appnexus.grafana.client.models.DashboardRow" resolve="collapse" />
                        <node concept="3clFbT" id="7ywHfeCaOUb" role="37wK5m">
                          <property role="3clFbU" value="false" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7ywHfeCaPr3" role="2OqNvi">
                      <ref role="37wK5l" to="an4w:~DashboardRow.panels(java.util.List):com.appnexus.grafana.client.models.DashboardRow" resolve="panels" />
                      <node concept="37vLTw" id="pAhsp7wVkT" role="37wK5m">
                        <ref role="3cqZAo" node="pAhsp7wTBQ" resolve="panels" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="pAhsp7wNCY" role="3cqZAp">
                <node concept="2OqwBi" id="pAhsp7wPoJ" role="3clFbG">
                  <node concept="37vLTw" id="pAhsp7wNCW" role="2Oq$k0">
                    <ref role="3cqZAo" node="pAhsp7wKg8" resolve="rows" />
                  </node>
                  <node concept="liA8E" id="pAhsp7wRJl" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                    <node concept="37vLTw" id="pAhsp7wRRB" role="37wK5m">
                      <ref role="3cqZAo" node="7ywHfeCaNHv" resolve="row" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1WS0z7" id="pAhsp7xB8e" role="lGtFl">
              <node concept="3JmXsc" id="pAhsp7xB8h" role="3Jn$fo">
                <node concept="3clFbS" id="pAhsp7xB8i" role="2VODD2">
                  <node concept="3clFbF" id="pAhsp7xB8o" role="3cqZAp">
                    <node concept="2OqwBi" id="pAhsp7xB8j" role="3clFbG">
                      <node concept="3Tsc0h" id="pAhsp7xB8m" role="2OqNvi">
                        <ref role="3TtcxE" to="7ew6:pAhsp7whWO" resolve="rows" />
                      </node>
                      <node concept="30H73N" id="pAhsp7xB8n" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7ywHfeCaX0l" role="3cqZAp">
            <node concept="3cpWsn" id="7ywHfeCaX0m" role="3cpWs9">
              <property role="TrG5h" value="dashboard" />
              <node concept="3uibUv" id="7ywHfeCaX0n" role="1tU5fm">
                <ref role="3uigEE" to="an4w:~Dashboard" resolve="Dashboard" />
              </node>
              <node concept="2OqwBi" id="7ywHfeCb03v" role="33vP2m">
                <node concept="2OqwBi" id="7ywHfeCaY$8" role="2Oq$k0">
                  <node concept="2OqwBi" id="7ywHfeCaY18" role="2Oq$k0">
                    <node concept="2ShNRf" id="7ywHfeCaXB3" role="2Oq$k0">
                      <node concept="HV5vD" id="7ywHfeCaXQX" role="2ShVmc">
                        <ref role="HV5vE" to="an4w:~Dashboard" resolve="Dashboard" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7ywHfeCaYi_" role="2OqNvi">
                      <ref role="37wK5l" to="an4w:~Dashboard.title(java.lang.String):com.appnexus.grafana.client.models.Dashboard" resolve="title" />
                      <node concept="37vLTw" id="7ywHfeCaYjd" role="37wK5m">
                        <ref role="3cqZAo" node="7ywHfeC9M5e" resolve="dashboardName" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7ywHfeCaYVt" role="2OqNvi">
                    <ref role="37wK5l" to="an4w:~Dashboard.schemaVersion(java.lang.Integer):com.appnexus.grafana.client.models.Dashboard" resolve="schemaVersion" />
                    <node concept="3cmrfG" id="7ywHfeCaZjX" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7ywHfeCb1yr" role="2OqNvi">
                  <ref role="37wK5l" to="an4w:~Dashboard.rows(java.util.List):com.appnexus.grafana.client.models.Dashboard" resolve="rows" />
                  <node concept="37vLTw" id="pAhsp7wMww" role="37wK5m">
                    <ref role="3cqZAo" node="pAhsp7wKg8" resolve="rows" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7ywHfeCaVNv" role="3cqZAp" />
          <node concept="3cpWs8" id="7ywHfeCaGIN" role="3cqZAp">
            <node concept="3cpWsn" id="7ywHfeCaGIO" role="3cpWs9">
              <property role="TrG5h" value="meta" />
              <node concept="3uibUv" id="7ywHfeCaGIP" role="1tU5fm">
                <ref role="3uigEE" to="an4w:~DashboardMeta" resolve="DashboardMeta" />
              </node>
              <node concept="2OqwBi" id="7ywHfeCaHYH" role="33vP2m">
                <node concept="2OqwBi" id="7ywHfeCaHxO" role="2Oq$k0">
                  <node concept="2ShNRf" id="7ywHfeCaHh$" role="2Oq$k0">
                    <node concept="1pGfFk" id="7ywHfeCaHpB" role="2ShVmc">
                      <ref role="37wK5l" to="an4w:~DashboardMeta.&lt;init&gt;()" resolve="DashboardMeta" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7ywHfeCaHLm" role="2OqNvi">
                    <ref role="37wK5l" to="an4w:~DashboardMeta.canSave(java.lang.Boolean):com.appnexus.grafana.client.models.DashboardMeta" resolve="canSave" />
                    <node concept="3clFbT" id="7ywHfeCaHMi" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7ywHfeCaIju" role="2OqNvi">
                  <ref role="37wK5l" to="an4w:~DashboardMeta.slug(java.lang.String):com.appnexus.grafana.client.models.DashboardMeta" resolve="slug" />
                  <node concept="37vLTw" id="7ywHfeCaIzm" role="37wK5m">
                    <ref role="3cqZAo" node="7ywHfeC9M5e" resolve="dashboardName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7ywHfeCaJXY" role="3cqZAp">
            <node concept="3cpWsn" id="7ywHfeCaJXZ" role="3cpWs9">
              <property role="TrG5h" value="grafanaDashboard" />
              <node concept="3uibUv" id="7ywHfeCaJY0" role="1tU5fm">
                <ref role="3uigEE" to="an4w:~GrafanaDashboard" resolve="GrafanaDashboard" />
              </node>
              <node concept="2OqwBi" id="7ywHfeCaLRO" role="33vP2m">
                <node concept="2OqwBi" id="7ywHfeCaL1z" role="2Oq$k0">
                  <node concept="2ShNRf" id="7ywHfeCaK_w" role="2Oq$k0">
                    <node concept="HV5vD" id="7ywHfeCaKRo" role="2ShVmc">
                      <ref role="HV5vE" to="an4w:~GrafanaDashboard" resolve="GrafanaDashboard" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7ywHfeCaLqx" role="2OqNvi">
                    <ref role="37wK5l" to="an4w:~GrafanaDashboard.meta(com.appnexus.grafana.client.models.DashboardMeta):com.appnexus.grafana.client.models.GrafanaDashboard" resolve="meta" />
                    <node concept="37vLTw" id="7ywHfeCaLES" role="37wK5m">
                      <ref role="3cqZAo" node="7ywHfeCaGIO" resolve="meta" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7ywHfeCaMba" role="2OqNvi">
                  <ref role="37wK5l" to="an4w:~GrafanaDashboard.dashboard(com.appnexus.grafana.client.models.Dashboard):com.appnexus.grafana.client.models.GrafanaDashboard" resolve="dashboard" />
                  <node concept="37vLTw" id="7ywHfeCb6Nf" role="37wK5m">
                    <ref role="3cqZAo" node="7ywHfeCaX0m" resolve="dashboard" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7ywHfeCb5ZK" role="3cqZAp" />
          <node concept="SfApY" id="7ywHfeCb9yM" role="3cqZAp">
            <node concept="3clFbS" id="7ywHfeCb9yN" role="SfCbr">
              <node concept="3clFbF" id="7ywHfeCb8i$" role="3cqZAp">
                <node concept="2OqwBi" id="7ywHfeCb93v" role="3clFbG">
                  <node concept="37vLTw" id="7ywHfeCb8iy" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ywHfeC9LJU" resolve="grafanaClient" />
                  </node>
                  <node concept="liA8E" id="7ywHfeCb9kB" role="2OqNvi">
                    <ref role="37wK5l" to="ynw8:~GrafanaClient.createDashboard(com.appnexus.grafana.client.models.GrafanaDashboard):com.appnexus.grafana.client.models.DashboardMeta" resolve="createDashboard" />
                    <node concept="37vLTw" id="7ywHfeCb9qt" role="37wK5m">
                      <ref role="3cqZAo" node="7ywHfeCaJXZ" resolve="grafanaDashboard" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="TDmWw" id="7ywHfeCb9yT" role="TEbGg">
              <node concept="3clFbS" id="7ywHfeCb9yW" role="TDEfX">
                <node concept="3clFbF" id="7ywHfeCbam8" role="3cqZAp">
                  <node concept="2OqwBi" id="7ywHfeCbam5" role="3clFbG">
                    <node concept="10M0yZ" id="7ywHfeCbam6" role="2Oq$k0">
                      <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                      <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                    </node>
                    <node concept="liA8E" id="7ywHfeCbam7" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                      <node concept="2OqwBi" id="55vGwhCOAug" role="37wK5m">
                        <node concept="37vLTw" id="55vGwhCOAjg" role="2Oq$k0">
                          <ref role="3cqZAo" node="7ywHfeCb9yX" resolve="e" />
                        </node>
                        <node concept="liA8E" id="55vGwhCOAFs" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="55vGwhCOAHh" role="3cqZAp">
                  <node concept="2OqwBi" id="55vGwhCOAHe" role="3clFbG">
                    <node concept="10M0yZ" id="55vGwhCOAHf" role="2Oq$k0">
                      <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                      <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                    </node>
                    <node concept="liA8E" id="55vGwhCOAHg" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.Object):void" resolve="println" />
                      <node concept="2OqwBi" id="55vGwhCOAU4" role="37wK5m">
                        <node concept="37vLTw" id="55vGwhCOAI_" role="2Oq$k0">
                          <ref role="3cqZAo" node="7ywHfeCb9yX" resolve="e" />
                        </node>
                        <node concept="liA8E" id="55vGwhCOBh_" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Throwable.getStackTrace():java.lang.StackTraceElement[]" resolve="getStackTrace" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="7ywHfeCb9yX" role="TDEfY">
                <property role="TrG5h" value="e" />
                <node concept="3uibUv" id="7ywHfeCbakp" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="3QxC82ZIEfR" role="lGtFl" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="5qdpREsEvBV">
    <property role="TrG5h" value="reduce_CSV" />
    <property role="3GE5qa" value="replays" />
    <ref role="3gUMe" to="7ew6:3PPzdvo2Egy" resolve="CSV" />
    <node concept="3clFbS" id="5qdpREsEvCH" role="13RCb5">
      <node concept="3cpWs8" id="5qdpREsEvCR" role="3cqZAp">
        <node concept="3cpWsn" id="5qdpREsEvCS" role="3cpWs9">
          <property role="TrG5h" value="replayers" />
          <node concept="3uibUv" id="5qdpREsEvCP" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
            <node concept="3uibUv" id="5qdpREsEvD4" role="11_B2D">
              <ref role="3uigEE" to="2ns9:5qdpREsDlwK" resolve="IReplay" />
            </node>
          </node>
        </node>
      </node>
      <node concept="9aQIb" id="5qdpREsEvDv" role="3cqZAp">
        <node concept="3clFbS" id="5qdpREsEvDx" role="9aQI4">
          <node concept="3cpWs8" id="1nZ6g$XYhzo" role="3cqZAp">
            <node concept="3cpWsn" id="1nZ6g$XYhzp" role="3cpWs9">
              <property role="TrG5h" value="replay" />
              <node concept="3uibUv" id="1nZ6g$XYhzq" role="1tU5fm">
                <ref role="3uigEE" to="2ns9:5qdpREsDlwK" resolve="IReplay" />
              </node>
              <node concept="2ShNRf" id="1nZ6g$XYhEe" role="33vP2m">
                <node concept="1pGfFk" id="1nZ6g$XZ7SO" role="2ShVmc">
                  <ref role="37wK5l" to="2ns9:5u9gdSXn7B8" resolve="CSV" />
                  <node concept="Xl_RD" id="1nZ6g$XZ7TD" role="37wK5m">
                    <property role="Xl_RC" value="filepath" />
                    <node concept="17Uvod" id="1nZ6g$XZ7Vq" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1nZ6g$XZ7Vr" role="3zH0cK">
                        <node concept="3clFbS" id="1nZ6g$XZ7Vs" role="2VODD2">
                          <node concept="3clFbF" id="1nZ6g$XZafT" role="3cqZAp">
                            <node concept="2OqwBi" id="1nZ6g$XZaui" role="3clFbG">
                              <node concept="30H73N" id="1nZ6g$XZafS" role="2Oq$k0" />
                              <node concept="3TrcHB" id="1nZ6g$XZaJt" role="2OqNvi">
                                <ref role="3TsBF5" to="7ew6:1nZ6g$XRvAk" resolve="filepath" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="1nZ6g$XZa2p" role="37wK5m">
                    <property role="Xl_RC" value="sensorfilter" />
                    <node concept="17Uvod" id="1nZ6g$XZa6p" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1nZ6g$XZa6q" role="3zH0cK">
                        <node concept="3clFbS" id="1nZ6g$XZa6r" role="2VODD2">
                          <node concept="3clFbF" id="1nZ6g$XZb6l" role="3cqZAp">
                            <node concept="2OqwBi" id="1nZ6g$XZdxN" role="3clFbG">
                              <node concept="30H73N" id="1nZ6g$XZb6k" role="2Oq$k0" />
                              <node concept="3TrcHB" id="1nZ6g$XZdMU" role="2OqNvi">
                                <ref role="3TsBF5" to="7ew6:5qdpREsDWC$" resolve="sensorNames" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="1nZ6g$XZeIs" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                    <node concept="17Uvod" id="1nZ6g$XZeUP" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1nZ6g$XZeUS" role="3zH0cK">
                        <node concept="3clFbS" id="1nZ6g$XZeUT" role="2VODD2">
                          <node concept="3clFbF" id="1nZ6g$XZeUZ" role="3cqZAp">
                            <node concept="2OqwBi" id="1nZ6g$XZeUU" role="3clFbG">
                              <node concept="3TrcHB" id="1nZ6g$XZeUX" role="2OqNvi">
                                <ref role="3TsBF5" to="7ew6:5u9gdSXmfKE" resolve="nameColumn" />
                              </node>
                              <node concept="30H73N" id="1nZ6g$XZeUY" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="1nZ6g$XZhvo" role="37wK5m">
                    <property role="3cmrfH" value="2" />
                    <node concept="17Uvod" id="1nZ6g$XZhXa" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1nZ6g$XZhXd" role="3zH0cK">
                        <node concept="3clFbS" id="1nZ6g$XZhXe" role="2VODD2">
                          <node concept="3clFbF" id="1nZ6g$XZhXk" role="3cqZAp">
                            <node concept="2OqwBi" id="1nZ6g$XZhXf" role="3clFbG">
                              <node concept="3TrcHB" id="1nZ6g$XZhXi" role="2OqNvi">
                                <ref role="3TsBF5" to="7ew6:5u9gdSXmaGX" resolve="timeColumn" />
                              </node>
                              <node concept="30H73N" id="1nZ6g$XZhXj" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="1nZ6g$XZiU2" role="37wK5m">
                    <property role="3cmrfH" value="3" />
                    <node concept="17Uvod" id="1nZ6g$XZjoz" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1nZ6g$XZjoA" role="3zH0cK">
                        <node concept="3clFbS" id="1nZ6g$XZjoB" role="2VODD2">
                          <node concept="3clFbF" id="1nZ6g$XZjoH" role="3cqZAp">
                            <node concept="2OqwBi" id="1nZ6g$XZjoC" role="3clFbG">
                              <node concept="3TrcHB" id="1nZ6g$XZjoF" role="2OqNvi">
                                <ref role="3TsBF5" to="7ew6:5u9gdSXmfKJ" resolve="valueColumn" />
                              </node>
                              <node concept="30H73N" id="1nZ6g$XZjoG" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbT" id="1XfQ9HmRTiJ" role="37wK5m">
                    <property role="3clFbU" value="true" />
                    <node concept="17Uvod" id="1XfQ9HmRTNf" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123137/1068580123138" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1XfQ9HmRTNi" role="3zH0cK">
                        <node concept="3clFbS" id="1XfQ9HmRTNj" role="2VODD2">
                          <node concept="3clFbF" id="1XfQ9HmRTNp" role="3cqZAp">
                            <node concept="2OqwBi" id="1XfQ9HmRTNk" role="3clFbG">
                              <node concept="3TrcHB" id="1XfQ9HmRTNn" role="2OqNvi">
                                <ref role="3TsBF5" to="7ew6:1XfQ9HmRIhl" resolve="hasHeader" />
                              </node>
                              <node concept="30H73N" id="1XfQ9HmRTNo" role="2Oq$k0" />
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
          <node concept="3clFbH" id="5qdpREsEvDw" role="3cqZAp">
            <node concept="29HgVG" id="5qdpREsIlwL" role="lGtFl">
              <node concept="3NFfHV" id="5qdpREsIlwM" role="3NFExx">
                <node concept="3clFbS" id="5qdpREsIlwN" role="2VODD2">
                  <node concept="3clFbF" id="5qdpREsIlwT" role="3cqZAp">
                    <node concept="2OqwBi" id="5qdpREsIlwO" role="3clFbG">
                      <node concept="3TrEf2" id="5qdpREsIlwR" role="2OqNvi">
                        <ref role="3Tt5mk" to="7ew6:6vH4OV2EWaQ" resolve="noise" />
                      </node>
                      <node concept="30H73N" id="5qdpREsIlwS" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1XfQ9HmRMkf" role="3cqZAp">
            <node concept="2OqwBi" id="1XfQ9HmRRfj" role="3clFbG">
              <node concept="37vLTw" id="1XfQ9HmRMkd" role="2Oq$k0">
                <ref role="3cqZAo" node="5qdpREsEvCS" resolve="replayers" />
              </node>
              <node concept="liA8E" id="1XfQ9HmRSqK" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                <node concept="37vLTw" id="1XfQ9HmRSyG" role="37wK5m">
                  <ref role="3cqZAo" node="1nZ6g$XYhzp" resolve="replay" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="5qdpREsEvDD" role="lGtFl" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="5qdpREsEvEt">
    <property role="TrG5h" value="reduce_JSON" />
    <property role="3GE5qa" value="replays" />
    <ref role="3gUMe" to="7ew6:1nZ6g$XRvAp" resolve="JSON" />
    <node concept="3clFbS" id="5qdpREsEvFh" role="13RCb5">
      <node concept="3cpWs8" id="5qdpREsEvFo" role="3cqZAp">
        <node concept="3cpWsn" id="5qdpREsEvFp" role="3cpWs9">
          <property role="TrG5h" value="replayers" />
          <node concept="3uibUv" id="5qdpREsEvFq" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
            <node concept="3uibUv" id="5qdpREsEvFr" role="11_B2D">
              <ref role="3uigEE" to="2ns9:5qdpREsDlwK" resolve="IReplay" />
            </node>
          </node>
        </node>
      </node>
      <node concept="9aQIb" id="5qdpREsEvFJ" role="3cqZAp">
        <node concept="3clFbS" id="5qdpREsEvFL" role="9aQI4">
          <node concept="3cpWs8" id="1XfQ9HmXqFZ" role="3cqZAp">
            <node concept="3cpWsn" id="1XfQ9HmXqG0" role="3cpWs9">
              <property role="TrG5h" value="replay" />
              <node concept="3uibUv" id="1XfQ9HmXqG1" role="1tU5fm">
                <ref role="3uigEE" to="2ns9:5qdpREsDlwK" resolve="IReplay" />
              </node>
              <node concept="2ShNRf" id="1XfQ9HmXqMK" role="33vP2m">
                <node concept="1pGfFk" id="1XfQ9HmXqVe" role="2ShVmc">
                  <ref role="37wK5l" to="2ns9:1nZ6g$XSZgd" resolve="JSON" />
                  <node concept="Xl_RD" id="1XfQ9HmXqW6" role="37wK5m">
                    <property role="Xl_RC" value="filepath" />
                    <node concept="17Uvod" id="1XfQ9HmXqXV" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1XfQ9HmXqXY" role="3zH0cK">
                        <node concept="3clFbS" id="1XfQ9HmXqXZ" role="2VODD2">
                          <node concept="3clFbF" id="1XfQ9HmXqY5" role="3cqZAp">
                            <node concept="2OqwBi" id="1XfQ9HmXqY0" role="3clFbG">
                              <node concept="3TrcHB" id="1XfQ9HmXqY3" role="2OqNvi">
                                <ref role="3TsBF5" to="7ew6:1nZ6g$XRvAk" resolve="filepath" />
                              </node>
                              <node concept="30H73N" id="1XfQ9HmXqY4" role="2Oq$k0" />
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
          <node concept="3clFbH" id="1XfQ9HmXBaw" role="3cqZAp">
            <node concept="29HgVG" id="1XfQ9HmXCD$" role="lGtFl">
              <node concept="3NFfHV" id="1XfQ9HmXCD_" role="3NFExx">
                <node concept="3clFbS" id="1XfQ9HmXCDA" role="2VODD2">
                  <node concept="3clFbF" id="1XfQ9HmXCDG" role="3cqZAp">
                    <node concept="2OqwBi" id="1XfQ9HmXCDB" role="3clFbG">
                      <node concept="3TrEf2" id="1XfQ9HmXCDE" role="2OqNvi">
                        <ref role="3Tt5mk" to="7ew6:6vH4OV2EWaQ" resolve="noise" />
                      </node>
                      <node concept="30H73N" id="1XfQ9HmXCDF" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1XfQ9HmXD88" role="3cqZAp">
            <node concept="2OqwBi" id="1XfQ9HmXFod" role="3clFbG">
              <node concept="37vLTw" id="1XfQ9HmXD86" role="2Oq$k0">
                <ref role="3cqZAo" node="5qdpREsEvFp" resolve="replayers" />
              </node>
              <node concept="liA8E" id="1XfQ9HmXHIM" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                <node concept="37vLTw" id="1XfQ9HmXHQI" role="37wK5m">
                  <ref role="3cqZAo" node="1XfQ9HmXqG0" resolve="replay" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="5qdpREsEvFU" role="lGtFl" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="5qdpREsHCW3">
    <property role="TrG5h" value="reduce_NoiseReplay" />
    <ref role="3gUMe" to="7ew6:6vH4OV2EW7y" resolve="Noise" />
    <node concept="3clFbS" id="5qdpREsHCWR" role="13RCb5">
      <node concept="3cpWs8" id="5qdpREsHCWY" role="3cqZAp">
        <node concept="3cpWsn" id="5qdpREsHCWZ" role="3cpWs9">
          <property role="TrG5h" value="replay" />
          <node concept="3uibUv" id="5qdpREsHCX0" role="1tU5fm">
            <ref role="3uigEE" to="2ns9:5qdpREsDlwK" resolve="IReplay" />
          </node>
        </node>
      </node>
      <node concept="3clFbF" id="5qdpREsHDyK" role="3cqZAp">
        <node concept="2OqwBi" id="5qdpREsHDCk" role="3clFbG">
          <node concept="37vLTw" id="5qdpREsHDyI" role="2Oq$k0">
            <ref role="3cqZAo" node="5qdpREsHCWZ" resolve="replay" />
          </node>
          <node concept="liA8E" id="5qdpREsHDMU" role="2OqNvi">
            <ref role="37wK5l" to="2ns9:5qdpREsHDxn" resolve="setNoiseGenerator" />
            <node concept="2ShNRf" id="5qdpREsHDNr" role="37wK5m">
              <node concept="1pGfFk" id="5qdpREsHDWo" role="2ShVmc">
                <ref role="37wK5l" to="2ns9:6vH4OV2FyKA" resolve="NoiseGenerator" />
                <node concept="Xl_RD" id="5qdpREsHDWV" role="37wK5m">
                  <property role="Xl_RC" value="-1." />
                  <node concept="17Uvod" id="5qdpREsHEft" role="lGtFl">
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                    <property role="2qtEX9" value="value" />
                    <node concept="3zFVjK" id="5qdpREsHEfw" role="3zH0cK">
                      <node concept="3clFbS" id="5qdpREsHEfx" role="2VODD2">
                        <node concept="3clFbF" id="5qdpREsHEfB" role="3cqZAp">
                          <node concept="2OqwBi" id="5qdpREsHEfy" role="3clFbG">
                            <node concept="3TrcHB" id="5qdpREsHEf_" role="2OqNvi">
                              <ref role="3TsBF5" to="7ew6:6vH4OV2EW7z" resolve="min" />
                            </node>
                            <node concept="30H73N" id="5qdpREsHEfA" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="5qdpREsHE_z" role="37wK5m">
                  <property role="Xl_RC" value="1." />
                  <node concept="17Uvod" id="5qdpREsHEWy" role="lGtFl">
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                    <property role="2qtEX9" value="value" />
                    <node concept="3zFVjK" id="5qdpREsHEW_" role="3zH0cK">
                      <node concept="3clFbS" id="5qdpREsHEWA" role="2VODD2">
                        <node concept="3clFbF" id="5qdpREsHEWG" role="3cqZAp">
                          <node concept="2OqwBi" id="5qdpREsHEWB" role="3clFbG">
                            <node concept="3TrcHB" id="5qdpREsHEWE" role="2OqNvi">
                              <ref role="3TsBF5" to="7ew6:6vH4OV2EW7_" resolve="max" />
                            </node>
                            <node concept="30H73N" id="5qdpREsHEWF" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cmrfG" id="5qdpREsHFjY" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                  <node concept="17Uvod" id="5qdpREsHFwW" role="lGtFl">
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                    <property role="2qtEX9" value="value" />
                    <node concept="3zFVjK" id="5qdpREsHFwZ" role="3zH0cK">
                      <node concept="3clFbS" id="5qdpREsHFx0" role="2VODD2">
                        <node concept="3clFbF" id="5qdpREsHFx6" role="3cqZAp">
                          <node concept="2OqwBi" id="5qdpREsHFx1" role="3clFbG">
                            <node concept="3TrcHB" id="5qdpREsHFx4" role="2OqNvi">
                              <ref role="3TsBF5" to="7ew6:6vH4OV2EW7C" resolve="scale" />
                            </node>
                            <node concept="30H73N" id="5qdpREsHFx5" role="2Oq$k0" />
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
        <node concept="raruj" id="5qdpREsHEdI" role="lGtFl" />
      </node>
    </node>
  </node>
</model>

