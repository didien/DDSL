<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:996c6b7b-3791-40af-aae2-84dfc153ac81(main@generator)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
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
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
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
  </registry>
  <node concept="bUwia" id="3bvT0dJbuOS">
    <property role="TrG5h" value="main" />
    <node concept="3lhOvk" id="1Vo$Sn9Lv_v" role="3lj3bC">
      <ref role="30HIoZ" to="7ew6:3PPzdvo2E7B" resolve="Simulation" />
      <ref role="3lhOvi" node="1Vo$Sn9MHKj" resolve="reduce_Simulation" />
    </node>
    <node concept="3lhOvk" id="1Vo$Sn9PBSW" role="3lj3bC">
      <ref role="30HIoZ" to="7ew6:3PPzdvo2Egx" resolve="Random" />
      <ref role="3lhOvi" node="1Vo$Sn9Oek7" resolve="RandomLaw" />
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
                  <ref role="37wK5l" node="1Vo$Sn9O0n0" resolve="RandomLaw" />
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
                                <ref role="3TsBF5" to="7ew6:75cVuPqSa9b" resolve="sampling" />
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
                              <node concept="3TrcHB" id="1Vo$Sn9OMth" role="2OqNvi">
                                <ref role="3TsBF5" to="7ew6:75cVuPqSa98" resolve="period" />
                              </node>
                              <node concept="30H73N" id="1Vo$Sn9OMti" role="2Oq$k0" />
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
          <node concept="3clFbF" id="1Vo$Sn9PJhi" role="3cqZAp">
            <node concept="2OqwBi" id="1Vo$Sn9PJhf" role="3clFbG">
              <node concept="10M0yZ" id="1Vo$Sn9PJhg" role="2Oq$k0">
                <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              </node>
              <node concept="liA8E" id="1Vo$Sn9PJhh" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~PrintStream.println(int):void" resolve="println" />
                <node concept="2OqwBi" id="1Vo$Sn9PJS7" role="37wK5m">
                  <node concept="37vLTw" id="1Vo$Sn9PJKG" role="2Oq$k0">
                    <ref role="3cqZAo" node="1Vo$Sn9PHoj" resolve="random" />
                  </node>
                  <node concept="liA8E" id="1Vo$Sn9PJYl" role="2OqNvi">
                    <ref role="37wK5l" node="1Vo$Sn9O13d" resolve="getNext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
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
        <node concept="3clFbH" id="1Vo$Sn9O$Le" role="3cqZAp">
          <node concept="2b32R4" id="1Vo$Sn9O$Lt" role="lGtFl">
            <node concept="3JmXsc" id="1Vo$Sn9O$Lw" role="2P8S$">
              <node concept="3clFbS" id="1Vo$Sn9O$Lx" role="2VODD2">
                <node concept="3clFbF" id="1Vo$Sn9O$LB" role="3cqZAp">
                  <node concept="2OqwBi" id="1Vo$Sn9O$Ly" role="3clFbG">
                    <node concept="3Tsc0h" id="1Vo$Sn9O$L_" role="2OqNvi">
                      <ref role="3TtcxE" to="7ew6:3PPzdvo2E7E" resolve="dataSources" />
                    </node>
                    <node concept="30H73N" id="1Vo$Sn9O$LA" role="2Oq$k0" />
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
    <node concept="312cEg" id="1Vo$Sn9NYM9" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="samplingFrequency" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="1Vo$Sn9NYLJ" role="1B3o_S" />
      <node concept="10Oyi0" id="1Vo$Sn9NYM2" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1Vo$Sn9NYN9" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="period" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="1Vo$Sn9NYML" role="1B3o_S" />
      <node concept="10Oyi0" id="1Vo$Sn9NYN2" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="1Vo$Sn9O0I9" role="jymVt" />
    <node concept="2tJIrI" id="1Vo$Sn9O0IY" role="jymVt" />
    <node concept="3clFbW" id="1Vo$Sn9O0n0" role="jymVt">
      <node concept="3cqZAl" id="1Vo$Sn9O0n1" role="3clF45" />
      <node concept="3Tm1VV" id="1Vo$Sn9O0n2" role="1B3o_S" />
      <node concept="3clFbS" id="1Vo$Sn9O0n4" role="3clF47">
        <node concept="3clFbF" id="1Vo$Sn9O0n8" role="3cqZAp">
          <node concept="37vLTI" id="1Vo$Sn9O0na" role="3clFbG">
            <node concept="37vLTw" id="1Vo$Sn9O0ne" role="37vLTJ">
              <ref role="3cqZAo" node="1Vo$Sn9NYJk" resolve="lawName" />
            </node>
            <node concept="37vLTw" id="1Vo$Sn9O0nf" role="37vLTx">
              <ref role="3cqZAo" node="1Vo$Sn9O0n7" resolve="lawName1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Vo$Sn9O0ni" role="3cqZAp">
          <node concept="37vLTI" id="1Vo$Sn9O0nk" role="3clFbG">
            <node concept="37vLTw" id="1Vo$Sn9O0no" role="37vLTJ">
              <ref role="3cqZAo" node="1Vo$Sn9NYK$" resolve="min" />
            </node>
            <node concept="37vLTw" id="1Vo$Sn9O0np" role="37vLTx">
              <ref role="3cqZAo" node="1Vo$Sn9O0nh" resolve="min1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Vo$Sn9O0ns" role="3cqZAp">
          <node concept="37vLTI" id="1Vo$Sn9O0nu" role="3clFbG">
            <node concept="37vLTw" id="1Vo$Sn9O0ny" role="37vLTJ">
              <ref role="3cqZAo" node="1Vo$Sn9NYLi" resolve="max" />
            </node>
            <node concept="37vLTw" id="1Vo$Sn9O0nz" role="37vLTx">
              <ref role="3cqZAo" node="1Vo$Sn9O0nr" resolve="max1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Vo$Sn9O0nA" role="3cqZAp">
          <node concept="37vLTI" id="1Vo$Sn9O0nC" role="3clFbG">
            <node concept="37vLTw" id="1Vo$Sn9O0nG" role="37vLTJ">
              <ref role="3cqZAo" node="1Vo$Sn9NYM9" resolve="samplingFrequency" />
            </node>
            <node concept="37vLTw" id="1Vo$Sn9O0nH" role="37vLTx">
              <ref role="3cqZAo" node="1Vo$Sn9O0n_" resolve="samplingFrequency1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Vo$Sn9O0nK" role="3cqZAp">
          <node concept="37vLTI" id="1Vo$Sn9O0nM" role="3clFbG">
            <node concept="37vLTw" id="1Vo$Sn9O0nQ" role="37vLTJ">
              <ref role="3cqZAo" node="1Vo$Sn9NYN9" resolve="period" />
            </node>
            <node concept="37vLTw" id="1Vo$Sn9O0nR" role="37vLTx">
              <ref role="3cqZAo" node="1Vo$Sn9O0nJ" resolve="period1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1Vo$Sn9O0n7" role="3clF46">
        <property role="TrG5h" value="lawName1" />
        <node concept="17QB3L" id="1Vo$Sn9O0n6" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1Vo$Sn9O0nh" role="3clF46">
        <property role="TrG5h" value="min1" />
        <node concept="10Oyi0" id="1Vo$Sn9O5nT" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1Vo$Sn9O0nr" role="3clF46">
        <property role="TrG5h" value="max1" />
        <node concept="10Oyi0" id="1Vo$Sn9O5ti" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1Vo$Sn9O0n_" role="3clF46">
        <property role="TrG5h" value="samplingFrequency1" />
        <node concept="10Oyi0" id="1Vo$Sn9O0n$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1Vo$Sn9O0nJ" role="3clF46">
        <property role="TrG5h" value="period1" />
        <node concept="10Oyi0" id="1Vo$Sn9O0nI" role="1tU5fm" />
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
        <node concept="3clFbF" id="1Vo$Sn9O6zO" role="3cqZAp">
          <node concept="37vLTw" id="1Vo$Sn9O6zJ" role="3clFbG">
            <ref role="3cqZAo" node="1Vo$Sn9NYM9" resolve="samplingFrequency" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1Vo$Sn9O6Ho" role="jymVt" />
    <node concept="3clFb_" id="1Vo$Sn9O6zQ" role="jymVt">
      <property role="TrG5h" value="getPeriod" />
      <node concept="10Oyi0" id="1Vo$Sn9O6zR" role="3clF45" />
      <node concept="3Tm1VV" id="1Vo$Sn9O6zS" role="1B3o_S" />
      <node concept="3clFbS" id="1Vo$Sn9O6zT" role="3clF47">
        <node concept="3clFbF" id="1Vo$Sn9O6zU" role="3cqZAp">
          <node concept="37vLTw" id="1Vo$Sn9O6zP" role="3clFbG">
            <ref role="3cqZAo" node="1Vo$Sn9NYN9" resolve="period" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1Vo$Sn9Oek8" role="1B3o_S" />
    <node concept="n94m4" id="1Vo$Sn9Oek9" role="lGtFl" />
  </node>
</model>

