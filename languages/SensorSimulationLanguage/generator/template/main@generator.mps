<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:996c6b7b-3791-40af-aae2-84dfc153ac81(main@generator)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="bc16fd15-bfa2-47e7-b9c2-9f80e5b399e0" name="SensorSimulationLanguage" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="-1" />
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
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="xlxw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.math(JDK/)" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
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
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
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
    <node concept="3aamgX" id="6vH4OV2FwWc" role="3acgRq">
      <ref role="30HIoZ" to="7ew6:6vH4OV2EW7y" resolve="Noise" />
      <node concept="j$656" id="6vH4OV2FwWd" role="1lVwrX">
        <ref role="v9R2y" node="6vH4OV2FwWa" resolve="reduce_Noise" />
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
              <node concept="Xl_RD" id="5dO5_UbeVWm" role="37wK5m">
                <property role="Xl_RC" value="http://127.0.0.1:8086" />
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
        <node concept="3cpWs8" id="5dO5_UbeYCi" role="3cqZAp">
          <node concept="3cpWsn" id="5dO5_UbeYCj" role="3cpWs9">
            <property role="TrG5h" value="dbName" />
            <node concept="17QB3L" id="5dO5_Ubf423" role="1tU5fm" />
            <node concept="Xl_RD" id="5dO5_UbeZk_" role="33vP2m">
              <property role="Xl_RC" value="sensorSeries" />
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
              <node concept="37vLTw" id="5dO5_Ubf1gw" role="37wK5m">
                <ref role="3cqZAo" node="5dO5_UbeYCj" resolve="dbName" />
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
              <node concept="37vLTw" id="5dO5_Ubf78l" role="37wK5m">
                <ref role="3cqZAo" node="5dO5_UbeYCj" resolve="dbName" />
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
        <node concept="3clFbH" id="5dO5_Ubgc$B" role="3cqZAp" />
        <node concept="3cpWs8" id="5dO5_Ubg7GG" role="3cqZAp">
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
                      <node concept="37vLTw" id="5dO5_Ubg8Bh" role="37wK5m">
                        <ref role="3cqZAo" node="5dO5_UbeYCj" resolve="dbName" />
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
                                <node concept="37vLTw" id="5dO5_Ubh2Q$" role="37wK5m">
                                  <ref role="3cqZAo" node="5dO5_Ubg7GH" resolve="batchPoints" />
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
            <node concept="3clFbF" id="5dO5_UbgrXK" role="3cqZAp">
              <node concept="2OqwBi" id="5dO5_UbgsJU" role="3clFbG">
                <node concept="37vLTw" id="5dO5_UbgrXI" role="2Oq$k0">
                  <ref role="3cqZAo" node="5dO5_UbeVkk" resolve="influxDB" />
                </node>
                <node concept="liA8E" id="5dO5_UbgtyW" role="2OqNvi">
                  <ref role="37wK5l" to="9nbq:~InfluxDB.write(org.influxdb.dto.BatchPoints):void" resolve="write" />
                  <node concept="37vLTw" id="5dO5_UbgtGN" role="37wK5m">
                    <ref role="3cqZAo" node="5dO5_Ubg7GH" resolve="batchPoints" />
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
                <node concept="3cmrfG" id="3juagqJyAr2" role="37wK5m">
                  <property role="3cmrfH" value="500" />
                  <node concept="17Uvod" id="3K9a83ayiBj" role="lGtFl">
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                    <property role="2qtEX9" value="value" />
                    <node concept="3zFVjK" id="3K9a83ayiBk" role="3zH0cK">
                      <node concept="3clFbS" id="3K9a83ayiBl" role="2VODD2">
                        <node concept="3clFbF" id="3K9a83ayjGb" role="3cqZAp">
                          <node concept="2OqwBi" id="3K9a83aykJM" role="3clFbG">
                            <node concept="30H73N" id="3K9a83ayjGa" role="2Oq$k0" />
                            <node concept="3TrcHB" id="3K9a83ayluE" role="2OqNvi">
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
</model>

