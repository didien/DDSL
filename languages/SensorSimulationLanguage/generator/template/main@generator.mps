<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:996c6b7b-3791-40af-aae2-84dfc153ac81(main@generator)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="bc16fd15-bfa2-47e7-b9c2-9f80e5b399e0" name="SensorSimulationLanguage" version="0" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="7ew6" ref="r:e465baf8-de2e-4ffc-b433-5fde6234c8fc(SensorSimulationLanguage.structure)" />
    <import index="2ns9" ref="r:2ebb615b-7d7d-46a9-af25-8b8353fe1098(SensorSimulationLanguage.runtime.simulation)" />
    <import index="28m1" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.time(JDK/)" />
    <import index="6t7w" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.time.format(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
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
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
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
        <node concept="3cpWs8" id="3juagqJzGv7" role="3cqZAp">
          <node concept="3cpWsn" id="3juagqJzGv8" role="3cpWs9">
            <property role="TrG5h" value="sensorsList" />
            <node concept="_YKpA" id="3juagqJzGv9" role="1tU5fm">
              <node concept="3uibUv" id="3K9a83awuSM" role="_ZDj9">
                <ref role="3uigEE" to="2ns9:3K9a83awgxk" resolve="Sensor" />
              </node>
            </node>
            <node concept="2ShNRf" id="3juagqJ$jJW" role="33vP2m">
              <node concept="Tc6Ow" id="3juagqJ$jJF" role="2ShVmc">
                <node concept="3uibUv" id="3K9a83awv4i" role="HW$YZ">
                  <ref role="3uigEE" to="2ns9:3K9a83awgxk" resolve="Sensor" />
                </node>
              </node>
            </node>
          </node>
        </node>
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
        <node concept="3clFbH" id="36n0RtVz7uh" role="3cqZAp" />
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
        <node concept="3clFbF" id="36n0RtVyZmb" role="3cqZAp">
          <node concept="2OqwBi" id="36n0RtVyZm8" role="3clFbG">
            <node concept="10M0yZ" id="36n0RtVyZm9" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="36n0RtVyZma" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(int):void" resolve="println" />
              <node concept="2OqwBi" id="36n0RtVz0gR" role="37wK5m">
                <node concept="37vLTw" id="36n0RtVyZHi" role="2Oq$k0">
                  <ref role="3cqZAo" node="36n0RtVyWTB" resolve="startDate" />
                </node>
                <node concept="liA8E" id="36n0RtVz0LB" role="2OqNvi">
                  <ref role="37wK5l" to="28m1:~LocalDateTime.getHour():int" resolve="getHour" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="36n0RtVyVq7" role="3cqZAp" />
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
        <node concept="3clFbH" id="3K9a83axc7p" role="3cqZAp" />
        <node concept="3clFbF" id="3K9a83axcr4" role="3cqZAp">
          <node concept="2OqwBi" id="3K9a83axdcb" role="3clFbG">
            <node concept="37vLTw" id="3K9a83axcr2" role="2Oq$k0">
              <ref role="3cqZAo" node="3juagqJzGv8" resolve="sensorsList" />
            </node>
            <node concept="2es0OD" id="3K9a83axeff" role="2OqNvi">
              <node concept="1bVj0M" id="3K9a83axefh" role="23t8la">
                <node concept="3clFbS" id="3K9a83axefi" role="1bW5cS">
                  <node concept="3clFbJ" id="36n0RtVzmi1" role="3cqZAp">
                    <node concept="3clFbS" id="36n0RtVzmi3" role="3clFbx">
                      <node concept="3clFbF" id="36n0RtV$fG1" role="3cqZAp">
                        <node concept="2OqwBi" id="36n0RtV$fFY" role="3clFbG">
                          <node concept="10M0yZ" id="36n0RtV$fFZ" role="2Oq$k0">
                            <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                            <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                          </node>
                          <node concept="liA8E" id="36n0RtV$fG0" role="2OqNvi">
                            <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                            <node concept="Xl_RD" id="36n0RtV$gEU" role="37wK5m">
                              <property role="Xl_RC" value="removed" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="36n0RtVzmQX" role="3cqZAp">
                        <node concept="2OqwBi" id="36n0RtVznws" role="3clFbG">
                          <node concept="37vLTw" id="36n0RtVzmQV" role="2Oq$k0">
                            <ref role="3cqZAo" node="3juagqJzGv8" resolve="sensorsList" />
                          </node>
                          <node concept="3dhRuq" id="36n0RtVzo_J" role="2OqNvi">
                            <node concept="37vLTw" id="36n0RtVzoF2" role="25WWJ7">
                              <ref role="3cqZAo" node="3K9a83axefj" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3eOSWO" id="36n0RtV$emK" role="3clFbw">
                      <node concept="2OqwBi" id="36n0RtV$3eE" role="3uHU7B">
                        <node concept="2OqwBi" id="36n0RtV$24D" role="2Oq$k0">
                          <node concept="37vLTw" id="36n0RtV$1U2" role="2Oq$k0">
                            <ref role="3cqZAo" node="3K9a83axefj" resolve="it" />
                          </node>
                          <node concept="liA8E" id="36n0RtV$2kY" role="2OqNvi">
                            <ref role="37wK5l" to="2ns9:3juagqJydtv" resolve="readValue" />
                          </node>
                        </node>
                        <node concept="liA8E" id="36n0RtV$4G8" role="2OqNvi">
                          <ref role="37wK5l" to="28m1:~LocalDateTime.compareTo(java.time.chrono.ChronoLocalDateTime):int" resolve="compareTo" />
                          <node concept="37vLTw" id="36n0RtV$4X$" role="37wK5m">
                            <ref role="3cqZAo" node="36n0RtVz9Ic" resolve="endDate" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cmrfG" id="36n0RtV$drQ" role="3uHU7w">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3K9a83axefj" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="3K9a83axefk" role="1tU5fm" />
                </node>
              </node>
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
                                  <node concept="2OqwBi" id="3juagqJyzHR" role="3clFbG">
                                    <node concept="2OqwBi" id="3juagqJyyHy" role="2Oq$k0">
                                      <node concept="30H73N" id="3juagqJyyvU" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="3juagqJyz4b" role="2OqNvi">
                                        <ref role="3Tt5mk" to="7ew6:3PPzdvo2Eg_" resolve="dataSource" />
                                      </node>
                                    </node>
                                    <node concept="3TrcHB" id="3juagqJy$5q" role="2OqNvi">
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
                                  <node concept="2OqwBi" id="3K9a83ay4JA" role="3clFbG">
                                    <node concept="1PxgMI" id="3K9a83ay3Y5" role="2Oq$k0">
                                      <node concept="chp4Y" id="3K9a83ay4hO" role="3oSUPX">
                                        <ref role="cht4Q" to="7ew6:3PPzdvo2Egx" resolve="Random" />
                                      </node>
                                      <node concept="2OqwBi" id="3K9a83ay2mk" role="1m5AlR">
                                        <node concept="30H73N" id="3K9a83ay24n" role="2Oq$k0" />
                                        <node concept="3TrEf2" id="3K9a83ay2IS" role="2OqNvi">
                                          <ref role="3Tt5mk" to="7ew6:3PPzdvo2Eg_" resolve="dataSource" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3TrcHB" id="3K9a83ay5cS" role="2OqNvi">
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
                                    <node concept="1PxgMI" id="3K9a83ay8m4" role="2Oq$k0">
                                      <node concept="chp4Y" id="3K9a83ay8DN" role="3oSUPX">
                                        <ref role="cht4Q" to="7ew6:3PPzdvo2Egx" resolve="Random" />
                                      </node>
                                      <node concept="2OqwBi" id="3K9a83ay7fa" role="1m5AlR">
                                        <node concept="30H73N" id="3K9a83ay6Xd" role="2Oq$k0" />
                                        <node concept="3TrEf2" id="3K9a83ay7Mr" role="2OqNvi">
                                          <ref role="3Tt5mk" to="7ew6:3PPzdvo2Eg_" resolve="dataSource" />
                                        </node>
                                      </node>
                                    </node>
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
                                    <node concept="2OqwBi" id="3K9a83aybSo" role="2Oq$k0">
                                      <node concept="30H73N" id="3K9a83aybAr" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="3K9a83aycgW" role="2OqNvi">
                                        <ref role="3Tt5mk" to="7ew6:3PPzdvo2Eg_" resolve="dataSource" />
                                      </node>
                                    </node>
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
                                    <node concept="2OqwBi" id="3K9a83ayfQ2" role="2Oq$k0">
                                      <node concept="30H73N" id="3K9a83ayf$5" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="3K9a83aygpR" role="2OqNvi">
                                        <ref role="3Tt5mk" to="7ew6:3PPzdvo2Eg_" resolve="dataSource" />
                                      </node>
                                    </node>
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
                                    <node concept="2OqwBi" id="3K9a83ayjY7" role="2Oq$k0">
                                      <node concept="30H73N" id="3K9a83ayjGa" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="3K9a83aykmF" role="2OqNvi">
                                        <ref role="3Tt5mk" to="7ew6:3PPzdvo2Eg_" resolve="dataSource" />
                                      </node>
                                    </node>
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
                    <node concept="37vLTw" id="36n0RtV$oRA" role="37wK5m">
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
</model>

