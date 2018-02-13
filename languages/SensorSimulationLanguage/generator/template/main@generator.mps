<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:996c6b7b-3791-40af-aae2-84dfc153ac81(main@generator)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="7ew6" ref="r:e465baf8-de2e-4ffc-b433-5fde6234c8fc(SensorSimulationLanguage.structure)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
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
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="ln" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
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
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
    </language>
  </registry>
  <node concept="bUwia" id="3bvT0dJbuOS">
    <property role="TrG5h" value="main" />
    <node concept="3lhOvk" id="1Vo$Sn9Lv_v" role="3lj3bC">
      <ref role="30HIoZ" to="7ew6:3PPzdvo2E7B" resolve="Simulation" />
      <ref role="3lhOvi" node="1Vo$Sn9MHKj" resolve="reduce_Simulation" />
    </node>
    <node concept="3lhOvk" id="3juagqJzKUa" role="3lj3bC">
      <ref role="3lhOvi" node="3juagqJy5Re" resolve="IDataSource" />
      <ref role="30HIoZ" to="7ew6:75cVuPqSa90" resolve="IDataSource" />
    </node>
    <node concept="3lhOvk" id="1Vo$Sn9PBSW" role="3lj3bC">
      <ref role="30HIoZ" to="7ew6:3PPzdvo2Egx" resolve="Random" />
      <ref role="3lhOvi" node="1Vo$Sn9Oek7" resolve="RandomLaw" />
    </node>
    <node concept="3lhOvk" id="3juagqJzJd6" role="3lj3bC">
      <ref role="30HIoZ" to="7ew6:3PPzdvo2E7J" resolve="SensorCollection" />
      <ref role="3lhOvi" node="3juagqJydcT" resolve="Sensor" />
    </node>
    <node concept="3aamgX" id="1Vo$Sn9Po_0" role="3acgRq">
      <ref role="30HIoZ" to="7ew6:3PPzdvo2Egx" resolve="Random" />
      <node concept="gft3U" id="1Vo$Sn9PHnY" role="1lVwrX">
        <node concept="3clFbS" id="1Vo$Sn9PHo4" role="gfFT$">
          <node concept="3cpWs8" id="1Vo$Sn9PHoi" role="3cqZAp">
            <node concept="3cpWsn" id="1Vo$Sn9PHoj" role="3cpWs9">
              <property role="TrG5h" value="random" />
              <node concept="3uibUv" id="1Vo$Sn9PHok" role="1tU5fm">
                <ref role="3uigEE" node="1Vo$Sn9Oek7" resolve="RandomLaw" />
              </node>
              <node concept="17Uvod" id="1Vo$Sn9PHos" role="lGtFl">
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <property role="2qtEX9" value="name" />
                <node concept="3zFVjK" id="1Vo$Sn9PHov" role="3zH0cK">
                  <node concept="3clFbS" id="1Vo$Sn9PHow" role="2VODD2">
                    <node concept="3clFbF" id="1Vo$Sn9PHoA" role="3cqZAp">
                      <node concept="2OqwBi" id="1Vo$Sn9PHox" role="3clFbG">
                        <node concept="3TrcHB" id="1Vo$Sn9PHo$" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                        <node concept="30H73N" id="1Vo$Sn9PHo_" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="1Vo$Sn9PHT7" role="33vP2m">
                <node concept="1pGfFk" id="1Vo$Sn9PI7Z" role="2ShVmc">
                  <ref role="37wK5l" node="3juagqJy1KY" resolve="RandomLaw" />
                  <node concept="Xl_RD" id="1Vo$Sn9OMsF" role="37wK5m">
                    <property role="Xl_RC" value="name" />
                    <node concept="17Uvod" id="1Vo$Sn9OMsG" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1Vo$Sn9OMsH" role="3zH0cK">
                        <node concept="3clFbS" id="1Vo$Sn9OMsI" role="2VODD2">
                          <node concept="3clFbF" id="1Vo$Sn9OMsJ" role="3cqZAp">
                            <node concept="2OqwBi" id="1Vo$Sn9OMsK" role="3clFbG">
                              <node concept="3TrcHB" id="1Vo$Sn9OMsL" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                              <node concept="30H73N" id="1Vo$Sn9OMsM" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="1Vo$Sn9OMsN" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                    <node concept="17Uvod" id="1Vo$Sn9OMsO" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1Vo$Sn9OMsP" role="3zH0cK">
                        <node concept="3clFbS" id="1Vo$Sn9OMsQ" role="2VODD2">
                          <node concept="3clFbF" id="1Vo$Sn9OMsR" role="3cqZAp">
                            <node concept="2OqwBi" id="1Vo$Sn9OMsS" role="3clFbG">
                              <node concept="3TrcHB" id="1Vo$Sn9OMsT" role="2OqNvi">
                                <ref role="3TsBF5" to="7ew6:3PPzdvo2EgG" resolve="min" />
                              </node>
                              <node concept="30H73N" id="1Vo$Sn9OMsU" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="1Vo$Sn9OMsV" role="37wK5m">
                    <property role="3cmrfH" value="10" />
                    <node concept="17Uvod" id="1Vo$Sn9OMsW" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1Vo$Sn9OMsX" role="3zH0cK">
                        <node concept="3clFbS" id="1Vo$Sn9OMsY" role="2VODD2">
                          <node concept="3clFbF" id="1Vo$Sn9OMsZ" role="3cqZAp">
                            <node concept="2OqwBi" id="1Vo$Sn9OMt0" role="3clFbG">
                              <node concept="3TrcHB" id="1Vo$Sn9OMt1" role="2OqNvi">
                                <ref role="3TsBF5" to="7ew6:3PPzdvo2EgI" resolve="max" />
                              </node>
                              <node concept="30H73N" id="1Vo$Sn9OMt2" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="3juagqJxUKi" role="37wK5m">
                    <property role="3cmrfH" value="30" />
                    <node concept="17Uvod" id="3juagqJxXcb" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="3juagqJxXce" role="3zH0cK">
                        <node concept="3clFbS" id="3juagqJxXcf" role="2VODD2">
                          <node concept="3clFbF" id="3juagqJxXcl" role="3cqZAp">
                            <node concept="2OqwBi" id="3juagqJxXcg" role="3clFbG">
                              <node concept="3TrcHB" id="3juagqJxXcj" role="2OqNvi">
                                <ref role="3TsBF5" to="7ew6:75cVuPqSa98" resolve="updatePeriod" />
                              </node>
                              <node concept="30H73N" id="3juagqJxXck" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="1Vo$Sn9OMt3" role="37wK5m">
                    <property role="3cmrfH" value="5" />
                    <node concept="17Uvod" id="1Vo$Sn9OMt4" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1Vo$Sn9OMt5" role="3zH0cK">
                        <node concept="3clFbS" id="1Vo$Sn9OMt6" role="2VODD2">
                          <node concept="3clFbF" id="1Vo$Sn9OMt7" role="3cqZAp">
                            <node concept="2OqwBi" id="1Vo$Sn9OMt8" role="3clFbG">
                              <node concept="3TrcHB" id="1Vo$Sn9OMt9" role="2OqNvi">
                                <ref role="3TsBF5" to="7ew6:75cVuPqSa9b" resolve="samplingPeriod" />
                              </node>
                              <node concept="30H73N" id="1Vo$Sn9OMta" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="1Vo$Sn9OMtb" role="37wK5m">
                    <property role="3cmrfH" value="86400" />
                    <node concept="17Uvod" id="1Vo$Sn9OMtc" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1Vo$Sn9OMtd" role="3zH0cK">
                        <node concept="3clFbS" id="1Vo$Sn9OMte" role="2VODD2">
                          <node concept="3clFbF" id="1Vo$Sn9OMtf" role="3cqZAp">
                            <node concept="2OqwBi" id="1Vo$Sn9OMtg" role="3clFbG">
                              <node concept="30H73N" id="1Vo$Sn9OMti" role="2Oq$k0" />
                              <node concept="3TrcHB" id="3juagqJy0cD" role="2OqNvi">
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
        </node>
      </node>
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
    <node concept="312cEg" id="1Vo$Sn9MJgY" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="simName" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="1Vo$Sn9MJ6e" role="1B3o_S" />
      <node concept="17QB3L" id="1Vo$Sn9MJgT" role="1tU5fm" />
      <node concept="Xl_RD" id="1Vo$Sn9MJhl" role="33vP2m">
        <property role="Xl_RC" value="reduce_Simulation" />
        <node concept="17Uvod" id="1Vo$Sn9MJrZ" role="lGtFl">
          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
          <property role="2qtEX9" value="value" />
          <node concept="3zFVjK" id="1Vo$Sn9MJs2" role="3zH0cK">
            <node concept="3clFbS" id="1Vo$Sn9MJs3" role="2VODD2">
              <node concept="3clFbF" id="1Vo$Sn9MJs9" role="3cqZAp">
                <node concept="2OqwBi" id="1Vo$Sn9MJs4" role="3clFbG">
                  <node concept="30H73N" id="1Vo$Sn9MJs8" role="2Oq$k0" />
                  <node concept="3TrcHB" id="1Vo$Sn9MOhE" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3juagqJxhmc" role="jymVt" />
    <node concept="2tJIrI" id="1Vo$Sn9MIVA" role="jymVt" />
    <node concept="3clFbW" id="1Vo$Sn9MIAc" role="jymVt">
      <node concept="3cqZAl" id="1Vo$Sn9MIAe" role="3clF45" />
      <node concept="3Tm1VV" id="1Vo$Sn9MIAf" role="1B3o_S" />
      <node concept="3clFbS" id="1Vo$Sn9MIAg" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1Vo$Sn9MO_i" role="jymVt" />
    <node concept="2tJIrI" id="1Vo$Sn9MLPT" role="jymVt" />
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
              <node concept="3uibUv" id="3juagqJzGva" role="_ZDj9">
                <ref role="3uigEE" node="3juagqJydcT" resolve="Sensor" />
              </node>
            </node>
            <node concept="2ShNRf" id="3juagqJ$jJW" role="33vP2m">
              <node concept="Tc6Ow" id="3juagqJ$jJF" role="2ShVmc">
                <node concept="3uibUv" id="3juagqJ$jJG" role="HW$YZ">
                  <ref role="3uigEE" node="3juagqJydcT" resolve="Sensor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3juagqJyq4b" role="3cqZAp" />
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
  <node concept="312cEu" id="1Vo$Sn9Oek7">
    <property role="TrG5h" value="RandomLaw" />
    <node concept="312cEg" id="1Vo$Sn9NYJk" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="lawName" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="1Vo$Sn9NYJ3" role="1B3o_S" />
      <node concept="17QB3L" id="1Vo$Sn9NYJd" role="1tU5fm" />
    </node>
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
    <node concept="2tJIrI" id="1Vo$Sn9NYOV" role="jymVt" />
    <node concept="312cEg" id="1Vo$Sn9NYN9" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="updatePeriod" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="1Vo$Sn9NYML" role="1B3o_S" />
      <node concept="10Oyi0" id="1Vo$Sn9NYN2" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1Vo$Sn9NYM9" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="samplingFrequency" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="1Vo$Sn9NYLJ" role="1B3o_S" />
      <node concept="10Oyi0" id="1Vo$Sn9NYM2" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="3juagqJxR9G" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="resetPeriod" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="3juagqJxR1K" role="1B3o_S" />
      <node concept="10Oyi0" id="3juagqJxR9B" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="1Vo$Sn9O0IY" role="jymVt" />
    <node concept="2tJIrI" id="3juagqJy1EW" role="jymVt" />
    <node concept="3clFbW" id="3juagqJy1KY" role="jymVt">
      <node concept="3cqZAl" id="3juagqJy1KZ" role="3clF45" />
      <node concept="3Tm1VV" id="3juagqJy1L0" role="1B3o_S" />
      <node concept="3clFbS" id="3juagqJy1L2" role="3clF47">
        <node concept="3clFbF" id="3juagqJy1L6" role="3cqZAp">
          <node concept="37vLTI" id="3juagqJy1L8" role="3clFbG">
            <node concept="37vLTw" id="3juagqJy1Lc" role="37vLTJ">
              <ref role="3cqZAo" node="1Vo$Sn9NYJk" resolve="lawName" />
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
              <node concept="37vLTw" id="1Vo$Sn9O4Rl" role="37wK5m">
                <ref role="3cqZAo" node="1Vo$Sn9NYLi" resolve="max" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1Vo$Sn9O0WH" role="1B3o_S" />
      <node concept="10Oyi0" id="1Vo$Sn9O19R" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1Vo$Sn9O6pS" role="jymVt" />
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
    <node concept="3Tm1VV" id="1Vo$Sn9Oek8" role="1B3o_S" />
    <node concept="n94m4" id="1Vo$Sn9Oek9" role="lGtFl" />
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
  </node>
  <node concept="13MO4I" id="3juagqJy5Px">
    <property role="TrG5h" value="reduce_SensorCollection" />
    <ref role="3gUMe" to="7ew6:3PPzdvo2E7J" resolve="SensorCollection" />
    <node concept="3clFbS" id="3juagqJy5Rc" role="13RCb5">
      <node concept="3cpWs8" id="3juagqJyqfn" role="3cqZAp">
        <node concept="3cpWsn" id="3juagqJyqfq" role="3cpWs9">
          <property role="TrG5h" value="sensorsList" />
          <node concept="_YKpA" id="3juagqJyqfj" role="1tU5fm">
            <node concept="3uibUv" id="3juagqJyqp2" role="_ZDj9">
              <ref role="3uigEE" node="3juagqJydcT" resolve="Sensor" />
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
                    <ref role="37wK5l" node="3juagqJydfX" resolve="Sensor" />
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
                        <ref role="37wK5l" node="3juagqJy1KY" resolve="RandomLaw" />
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
                        </node>
                        <node concept="3cmrfG" id="3juagqJy_bo" role="37wK5m">
                          <property role="3cmrfH" value="10" />
                        </node>
                        <node concept="3cmrfG" id="3juagqJy_F0" role="37wK5m">
                          <property role="3cmrfH" value="10" />
                        </node>
                        <node concept="3cmrfG" id="3juagqJyAaP" role="37wK5m">
                          <property role="3cmrfH" value="10" />
                        </node>
                        <node concept="3cmrfG" id="3juagqJyAr2" role="37wK5m">
                          <property role="3cmrfH" value="500" />
                        </node>
                      </node>
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
  <node concept="3HP615" id="3juagqJy5Re">
    <property role="TrG5h" value="IDataSource" />
    <node concept="3clFb_" id="3juagqJycV5" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getNext" />
      <node concept="3clFbS" id="3juagqJycV8" role="3clF47" />
      <node concept="3Tm1VV" id="3juagqJycV9" role="1B3o_S" />
      <node concept="10Oyi0" id="3juagqJycV1" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="3juagqJy5Rf" role="1B3o_S" />
    <node concept="n94m4" id="3juagqJy5Rg" role="lGtFl" />
  </node>
  <node concept="312cEu" id="3juagqJydcT">
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
      <node concept="3uibUv" id="3juagqJ$enL" role="1tU5fm">
        <ref role="3uigEE" node="1Vo$Sn9Oek7" resolve="RandomLaw" />
      </node>
    </node>
    <node concept="2tJIrI" id="3juagqJydf4" role="jymVt" />
    <node concept="3Tm1VV" id="3juagqJydcU" role="1B3o_S" />
    <node concept="n94m4" id="3juagqJydcV" role="lGtFl" />
    <node concept="3clFbW" id="3juagqJydfX" role="jymVt">
      <node concept="3cqZAl" id="3juagqJydfY" role="3clF45" />
      <node concept="3Tm1VV" id="3juagqJydfZ" role="1B3o_S" />
      <node concept="3clFbS" id="3juagqJydg1" role="3clF47">
        <node concept="3clFbF" id="3juagqJydg5" role="3cqZAp">
          <node concept="37vLTI" id="3juagqJydg7" role="3clFbG">
            <node concept="37vLTw" id="3juagqJydgb" role="37vLTJ">
              <ref role="3cqZAo" node="3juagqJydeO" resolve="sensorID" />
            </node>
            <node concept="37vLTw" id="3juagqJydgc" role="37vLTx">
              <ref role="3cqZAo" node="3juagqJydg4" resolve="sensorID1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3juagqJydgf" role="3cqZAp">
          <node concept="37vLTI" id="3juagqJydgh" role="3clFbG">
            <node concept="37vLTw" id="3juagqJydgl" role="37vLTJ">
              <ref role="3cqZAo" node="3juagqJyddW" resolve="dataSource" />
            </node>
            <node concept="37vLTw" id="3juagqJydgm" role="37vLTx">
              <ref role="3cqZAo" node="3juagqJydge" resolve="dataSource1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3juagqJydg4" role="3clF46">
        <property role="TrG5h" value="sensorID1" />
        <node concept="17QB3L" id="3juagqJydg3" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3juagqJydge" role="3clF46">
        <property role="TrG5h" value="dataSource1" />
        <node concept="3uibUv" id="3juagqJ$e$P" role="1tU5fm">
          <ref role="3uigEE" node="1Vo$Sn9Oek7" resolve="RandomLaw" />
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
        <node concept="3clFbF" id="3juagqJydyJ" role="3cqZAp">
          <node concept="2OqwBi" id="3juagqJyd_7" role="3clFbG">
            <node concept="10M0yZ" id="3juagqJyd_8" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="3juagqJyd_9" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="3juagqJykqD" role="37wK5m">
                <node concept="37vLTw" id="3juagqJykPf" role="3uHU7w">
                  <ref role="3cqZAo" node="3juagqJyd_V" resolve="timestamp" />
                </node>
                <node concept="3cpWs3" id="3juagqJyiJI" role="3uHU7B">
                  <node concept="3cpWs3" id="3juagqJ$xpy" role="3uHU7B">
                    <node concept="3cmrfG" id="3juagqJ$xvI" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cpWs3" id="3juagqJye_E" role="3uHU7B">
                      <node concept="37vLTw" id="3juagqJydDb" role="3uHU7B">
                        <ref role="3cqZAo" node="3juagqJydeO" resolve="sensorID" />
                      </node>
                      <node concept="Xl_RD" id="3juagqJye_Y" role="3uHU7w">
                        <property role="Xl_RC" value=" value=" />
                      </node>
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
      </node>
      <node concept="3Tm1VV" id="3juagqJydqZ" role="1B3o_S" />
      <node concept="3cqZAl" id="3juagqJydrs" role="3clF45" />
      <node concept="37vLTG" id="3juagqJyd_V" role="3clF46">
        <property role="TrG5h" value="timestamp" />
        <node concept="17QB3L" id="3juagqJyd_U" role="1tU5fm" />
      </node>
    </node>
  </node>
</model>

