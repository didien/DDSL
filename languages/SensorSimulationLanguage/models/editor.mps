<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cca50f0d-e1ee-4131-89ff-86e36e72d6d3(SensorSimulationLanguage.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <use id="f3347d8a-0e79-4f35-8ac9-1574f25c986f" name="jetbrains.mps.execution.commands" version="0" />
    <use id="73c1a490-99fa-4d0d-8292-b8985697c74b" name="jetbrains.mps.execution.common" version="0" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="7ew6" ref="r:e465baf8-de2e-4ffc-b433-5fde6234c8fc(SensorSimulationLanguage.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450556" name="usesBraces" index="2czwfP" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
        <child id="928328222691832421" name="separatorTextQuery" index="2gpyvW" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="709996738298806197" name="jetbrains.mps.lang.editor.structure.QueryFunction_SeparatorText" flags="in" index="2o9xnK" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="8313721352726366579" name="jetbrains.mps.lang.editor.structure.CellModel_Empty" flags="ng" index="35HoNQ" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <property id="1160590353935" name="usesFolding" index="S$Qs1" />
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="7723470090030138869" name="foldedCellModel" index="AHCbl" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="3PPzdvo2E9C">
    <ref role="1XX52x" to="7ew6:3PPzdvo2E7B" resolve="Simulation" />
    <node concept="3EZMnI" id="75cVuPqSamM" role="2wV5jI">
      <node concept="3EZMnI" id="75cVuPqSamW" role="3EZMnx">
        <node concept="VPM3Z" id="75cVuPqSamY" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="75cVuPqSanb" role="3EZMnx">
          <property role="3F0ifm" value="simulation" />
        </node>
        <node concept="3F0A7n" id="75cVuPqSank" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="l2Vlx" id="75cVuPqSan1" role="2iSdaV" />
      </node>
      <node concept="35HoNQ" id="3juagqJxE68" role="3EZMnx" />
      <node concept="3EZMnI" id="3juagqJxlBz" role="3EZMnx">
        <node concept="VPM3Z" id="3juagqJxlB_" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="3juagqJxlBB" role="3EZMnx">
          <property role="3F0ifm" value="starts the" />
        </node>
        <node concept="3F0A7n" id="3juagqJxlCe" role="3EZMnx">
          <property role="1$x2rV" value="dd-mm-yy hh:mm" />
          <ref role="1NtTu8" to="7ew6:3juagqJxhEC" resolve="startDate" />
        </node>
        <node concept="l2Vlx" id="3juagqJxlBC" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3juagqJxlCS" role="3EZMnx">
        <node concept="VPM3Z" id="3juagqJxlCU" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="3juagqJxlCW" role="3EZMnx">
          <property role="3F0ifm" value="ends the" />
        </node>
        <node concept="3F0A7n" id="3juagqJxlDC" role="3EZMnx">
          <property role="1$x2rV" value="dd-mm-yy hh:mm" />
          <ref role="1NtTu8" to="7ew6:3juagqJxhEE" resolve="endDate" />
        </node>
        <node concept="l2Vlx" id="3juagqJxlCX" role="2iSdaV" />
      </node>
      <node concept="35HoNQ" id="75cVuPqSanB" role="3EZMnx" />
      <node concept="3F0ifn" id="75cVuPqSanP" role="3EZMnx">
        <property role="3F0ifm" value="data sources:" />
      </node>
      <node concept="3EZMnI" id="75cVuPqSf9w" role="3EZMnx">
        <node concept="3XFhqQ" id="75cVuPqSfbo" role="3EZMnx" />
        <node concept="VPM3Z" id="75cVuPqSf9y" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F2HdR" id="75cVuPqSaol" role="3EZMnx">
          <ref role="1NtTu8" to="7ew6:3PPzdvo2E7E" resolve="dataSources" />
          <node concept="2iRkQZ" id="75cVuPqSaoo" role="2czzBx" />
          <node concept="VPM3Z" id="75cVuPqSaop" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="75cVuPqSaoI" role="2czzBI">
            <property role="3F0ifm" value="no data source defined !" />
          </node>
        </node>
        <node concept="l2Vlx" id="75cVuPqSf9_" role="2iSdaV" />
      </node>
      <node concept="35HoNQ" id="75cVuPqScV6" role="3EZMnx" />
      <node concept="3F0ifn" id="75cVuPqSapa" role="3EZMnx">
        <property role="3F0ifm" value="sensor collections:" />
      </node>
      <node concept="3EZMnI" id="75cVuPqSfdK" role="3EZMnx">
        <node concept="3XFhqQ" id="75cVuPqSfhx" role="3EZMnx" />
        <node concept="VPM3Z" id="75cVuPqSfdM" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F2HdR" id="75cVuPqSaq2" role="3EZMnx">
          <ref role="1NtTu8" to="7ew6:3PPzdvo2E7G" resolve="sensors" />
          <node concept="2iRkQZ" id="75cVuPqSaq5" role="2czzBx" />
          <node concept="VPM3Z" id="75cVuPqSaq6" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="75cVuPqSaqB" role="2czzBI">
            <property role="3F0ifm" value="no collection defined !" />
          </node>
        </node>
        <node concept="l2Vlx" id="75cVuPqSfdP" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="75cVuPqSamP" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="75cVuPqSa6s">
    <ref role="1XX52x" to="7ew6:3PPzdvo2E7J" resolve="SensorCollection" />
    <node concept="3EZMnI" id="75cVuPqSa6_" role="2wV5jI">
      <node concept="l2Vlx" id="75cVuPqSa6C" role="2iSdaV" />
      <node concept="3F0A7n" id="75cVuPqSa6Z" role="3EZMnx">
        <ref role="1NtTu8" to="7ew6:75cVuPqSa61" resolve="quantity" />
      </node>
      <node concept="3F0ifn" id="75cVuPqSa77" role="3EZMnx">
        <property role="3F0ifm" value="sensors" />
      </node>
      <node concept="3F0A7n" id="75cVuPqSa7i" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="75cVuPqSa7s" role="3EZMnx">
        <property role="3F0ifm" value="following" />
      </node>
      <node concept="1iCGBv" id="75cVuPqSa7Z" role="3EZMnx">
        <ref role="1NtTu8" to="7ew6:3PPzdvo2Eg_" resolve="dataSource" />
        <node concept="1sVBvm" id="75cVuPqSa81" role="1sWHZn">
          <node concept="3F0A7n" id="75cVuPqSa8W" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="75cVuPqSaa9">
    <property role="3GE5qa" value="laws" />
    <ref role="1XX52x" to="7ew6:3PPzdvo2Egx" resolve="Random" />
    <node concept="3EZMnI" id="75cVuPqSads" role="2wV5jI">
      <property role="S$Qs1" value="true" />
      <node concept="3EZMnI" id="46K65BnkiFS" role="3EZMnx">
        <node concept="3F0ifn" id="46K65BnkiFZ" role="3EZMnx">
          <property role="3F0ifm" value="data source" />
        </node>
        <node concept="3F0A7n" id="46K65BnkiG5" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="46K65BnkiGd" role="3EZMnx">
          <property role="3F0ifm" value="is random_law" />
        </node>
        <node concept="l2Vlx" id="46K65BnkiFV" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="75cVuPqSafH" role="3EZMnx">
        <node concept="VPM3Z" id="75cVuPqSafJ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="75cVuPqSag6" role="3EZMnx" />
        <node concept="3F0ifn" id="75cVuPqSagf" role="3EZMnx">
          <property role="3F0ifm" value="min      :" />
        </node>
        <node concept="3F0A7n" id="75cVuPqSags" role="3EZMnx">
          <ref role="1NtTu8" to="7ew6:3PPzdvo2EgG" resolve="min" />
        </node>
        <node concept="l2Vlx" id="75cVuPqSafM" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="75cVuPqSahc" role="3EZMnx">
        <node concept="VPM3Z" id="75cVuPqSahd" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="75cVuPqSahe" role="3EZMnx" />
        <node concept="3F0ifn" id="75cVuPqSahf" role="3EZMnx">
          <property role="3F0ifm" value="max      :" />
        </node>
        <node concept="3F0A7n" id="75cVuPqSahg" role="3EZMnx">
          <ref role="1NtTu8" to="7ew6:3PPzdvo2EgI" resolve="max" />
        </node>
        <node concept="l2Vlx" id="75cVuPqSahh" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="75cVuPqSait" role="3EZMnx">
        <node concept="VPM3Z" id="75cVuPqSaiu" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="75cVuPqSaiv" role="3EZMnx" />
        <node concept="3F0ifn" id="75cVuPqSaiw" role="3EZMnx">
          <property role="3F0ifm" value="update period   :" />
        </node>
        <node concept="3F0A7n" id="75cVuPqSaix" role="3EZMnx">
          <ref role="1NtTu8" to="7ew6:75cVuPqSa98" resolve="updatePeriod" />
        </node>
        <node concept="l2Vlx" id="75cVuPqSaiy" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="75cVuPqSajl" role="3EZMnx">
        <node concept="VPM3Z" id="75cVuPqSajm" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="75cVuPqSajn" role="3EZMnx" />
        <node concept="3F0ifn" id="75cVuPqSajo" role="3EZMnx">
          <property role="3F0ifm" value="sampling period :" />
        </node>
        <node concept="3F0A7n" id="75cVuPqSajp" role="3EZMnx">
          <ref role="1NtTu8" to="7ew6:75cVuPqSa9b" resolve="samplingPeriod" />
        </node>
        <node concept="l2Vlx" id="75cVuPqSajq" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3juagqJxLQs" role="3EZMnx">
        <node concept="VPM3Z" id="3juagqJxLQu" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="3juagqJxLR4" role="3EZMnx" />
        <node concept="3F0ifn" id="3juagqJxLRa" role="3EZMnx">
          <property role="3F0ifm" value="reset period    :" />
        </node>
        <node concept="3F0A7n" id="3juagqJxLRi" role="3EZMnx">
          <ref role="1NtTu8" to="7ew6:3juagqJxLPu" resolve="resetPeriod" />
        </node>
        <node concept="l2Vlx" id="3juagqJxLQx" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="75cVuPqSadt" role="2iSdaV" />
      <node concept="3EZMnI" id="46K65BnkthO" role="AHCbl">
        <node concept="l2Vlx" id="46K65BnkthP" role="2iSdaV" />
        <node concept="VPM3Z" id="46K65BnkthQ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0A7n" id="46K65BnkthU" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="46K65BnkthZ" role="3EZMnx">
          <property role="3F0ifm" value="-&gt; random_law(" />
        </node>
        <node concept="3F0A7n" id="46K65Bnkti7" role="3EZMnx">
          <ref role="1NtTu8" to="7ew6:3PPzdvo2EgG" resolve="min" />
        </node>
        <node concept="3F0ifn" id="46K65Bnktih" role="3EZMnx">
          <property role="3F0ifm" value="," />
        </node>
        <node concept="3F0A7n" id="46K65Bnktit" role="3EZMnx">
          <ref role="1NtTu8" to="7ew6:3PPzdvo2EgI" resolve="max" />
        </node>
        <node concept="3F0ifn" id="46K65BnktiN" role="3EZMnx">
          <property role="3F0ifm" value="," />
        </node>
        <node concept="3F0A7n" id="46K65Bnktj3" role="3EZMnx">
          <ref role="1NtTu8" to="7ew6:75cVuPqSa98" resolve="updatePeriod" />
        </node>
        <node concept="3F0ifn" id="46K65Bnktjl" role="3EZMnx">
          <property role="3F0ifm" value="," />
        </node>
        <node concept="3F0A7n" id="46K65BnktjD" role="3EZMnx">
          <ref role="1NtTu8" to="7ew6:75cVuPqSa9b" resolve="samplingPeriod" />
        </node>
        <node concept="3F0ifn" id="3juagqJxNie" role="3EZMnx">
          <property role="3F0ifm" value="," />
        </node>
        <node concept="3F0A7n" id="3juagqJxNhO" role="3EZMnx">
          <ref role="1NtTu8" to="7ew6:3juagqJxLPu" resolve="resetPeriod" />
        </node>
        <node concept="3F0ifn" id="46K65Bnkunz" role="3EZMnx">
          <property role="3F0ifm" value=")" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7dKB6cHP$2f">
    <property role="3GE5qa" value="laws" />
    <ref role="1XX52x" to="7ew6:7dKB6cHPzZ_" resolve="Markov" />
    <node concept="3EZMnI" id="7dKB6cHPDcP" role="2wV5jI">
      <node concept="2iRkQZ" id="7dKB6cHPDcQ" role="2iSdaV" />
      <node concept="3EZMnI" id="7dKB6cHPDd$" role="3EZMnx">
        <node concept="VPM3Z" id="7dKB6cHPDdA" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="7dKB6cHPDdC" role="3EZMnx">
          <property role="3F0ifm" value="data source" />
        </node>
        <node concept="3F0A7n" id="7dKB6cHPDdO" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="7dKB6cHPDe2" role="3EZMnx">
          <property role="3F0ifm" value="follows markov's chain" />
        </node>
        <node concept="2iRfu4" id="7dKB6cHPDdD" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="7dKB6cHPDei" role="3EZMnx">
        <node concept="3XFhqQ" id="7dKB6cHQk$m" role="3EZMnx" />
        <node concept="3F0ifn" id="7dKB6cHPDeN" role="3EZMnx">
          <property role="3F0ifm" value="transitions :" />
        </node>
        <node concept="2iRfu4" id="7dKB6cHPDej" role="2iSdaV" />
        <node concept="3F2HdR" id="7dKB6cHPCHO" role="3EZMnx">
          <property role="2czwfP" value="true" />
          <ref role="1NtTu8" to="7ew6:7dKB6cHP$0u" resolve="states" />
          <node concept="2iRkQZ" id="7dKB6cHPCHP" role="2czzBx" />
          <node concept="3F0ifn" id="7dKB6cHPDbz" role="2czzBI">
            <property role="3F0ifm" value="[0]" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="7dKB6cHQygp" role="3EZMnx">
        <node concept="VPM3Z" id="7dKB6cHQygq" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="7dKB6cHQygr" role="3EZMnx" />
        <node concept="3F0ifn" id="7dKB6cHQygs" role="3EZMnx">
          <property role="3F0ifm" value="update period   :" />
        </node>
        <node concept="3F0A7n" id="7dKB6cHQygt" role="3EZMnx">
          <ref role="1NtTu8" to="7ew6:75cVuPqSa98" resolve="updatePeriod" />
        </node>
        <node concept="l2Vlx" id="7dKB6cHQygu" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="7dKB6cHQygv" role="3EZMnx">
        <node concept="VPM3Z" id="7dKB6cHQygw" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="7dKB6cHQygx" role="3EZMnx" />
        <node concept="3F0ifn" id="7dKB6cHQygy" role="3EZMnx">
          <property role="3F0ifm" value="sampling period :" />
        </node>
        <node concept="3F0A7n" id="7dKB6cHQygz" role="3EZMnx">
          <ref role="1NtTu8" to="7ew6:75cVuPqSa9b" resolve="samplingPeriod" />
        </node>
        <node concept="l2Vlx" id="7dKB6cHQyg$" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="7dKB6cHQyg_" role="3EZMnx">
        <node concept="VPM3Z" id="7dKB6cHQygA" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="7dKB6cHQygB" role="3EZMnx" />
        <node concept="3F0ifn" id="7dKB6cHQygC" role="3EZMnx">
          <property role="3F0ifm" value="reset period    :" />
        </node>
        <node concept="3F0A7n" id="7dKB6cHQygD" role="3EZMnx">
          <ref role="1NtTu8" to="7ew6:3juagqJxLPu" resolve="resetPeriod" />
        </node>
        <node concept="l2Vlx" id="7dKB6cHQygE" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7dKB6cHPDbY">
    <property role="3GE5qa" value="laws" />
    <ref role="1XX52x" to="7ew6:7dKB6cHP$0X" resolve="MarkovStates" />
    <node concept="3EZMnI" id="7dKB6cHPHsu" role="2wV5jI">
      <node concept="3F0A7n" id="7dKB6cHQndr" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="7dKB6cHQndN" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0ifn" id="7dKB6cHPHsH" role="3EZMnx">
        <property role="3F0ifm" value="[" />
      </node>
      <node concept="2iRfu4" id="7dKB6cHPHsv" role="2iSdaV" />
      <node concept="3F2HdR" id="7dKB6cHPDc0" role="3EZMnx">
        <ref role="1NtTu8" to="7ew6:7dKB6cHPCXV" resolve="transitions" />
        <node concept="2iRfu4" id="7dKB6cHPDc2" role="2czzBx" />
        <node concept="3F0ifn" id="7dKB6cHPDc5" role="2czzBI">
          <property role="3F0ifm" value="?" />
        </node>
        <node concept="2o9xnK" id="7dKB6cHQ5sm" role="2gpyvW">
          <node concept="3clFbS" id="7dKB6cHQ5sn" role="2VODD2">
            <node concept="3clFbF" id="7dKB6cHQ5$K" role="3cqZAp">
              <node concept="Xl_RD" id="7dKB6cHQfWN" role="3clFbG">
                <property role="Xl_RC" value=" |" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7dKB6cHPHsT" role="3EZMnx">
        <property role="3F0ifm" value="]" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7dKB6cHPDcw">
    <property role="3GE5qa" value="laws" />
    <ref role="1XX52x" to="7ew6:7dKB6cHPCI6" resolve="MarkovTransition" />
    <node concept="3EZMnI" id="7dKB6cHPMiu" role="2wV5jI">
      <node concept="2iRfu4" id="7dKB6cHPMiv" role="2iSdaV" />
      <node concept="3F0A7n" id="7dKB6cHPDcy" role="3EZMnx">
        <ref role="1NtTu8" to="7ew6:7dKB6cHPCIy" resolve="probability" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5u9gdSXmgGe">
    <ref role="1XX52x" to="7ew6:3PPzdvo2Egy" resolve="CSV" />
    <node concept="3EZMnI" id="5u9gdSXmgGg" role="2wV5jI">
      <node concept="3EZMnI" id="5u9gdSXmgGn" role="3EZMnx">
        <node concept="VPM3Z" id="5u9gdSXmgGp" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="5u9gdSXmgGx" role="3EZMnx">
          <property role="3F0ifm" value="data source" />
        </node>
        <node concept="3F0A7n" id="5u9gdSXmgGB" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="5u9gdSXmgGJ" role="3EZMnx">
          <property role="3F0ifm" value="is CSV file" />
        </node>
        <node concept="2iRfu4" id="5u9gdSXmgGs" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5u9gdSXmgI6" role="3EZMnx">
        <node concept="VPM3Z" id="5u9gdSXmgI8" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="5u9gdSXmgIa" role="3EZMnx" />
        <node concept="3F0ifn" id="5u9gdSXmgIs" role="3EZMnx">
          <property role="3F0ifm" value="path :" />
        </node>
        <node concept="3F0A7n" id="5u9gdSXmgID" role="3EZMnx">
          <ref role="1NtTu8" to="7ew6:3PPzdvo2EgC" resolve="filepath" />
        </node>
        <node concept="l2Vlx" id="5u9gdSXmgIb" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5u9gdSXmgJ$" role="3EZMnx">
        <node concept="VPM3Z" id="5u9gdSXmgJA" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="5u9gdSXmgJW" role="3EZMnx" />
        <node concept="3F0ifn" id="5u9gdSXmgK2" role="3EZMnx">
          <property role="3F0ifm" value="read sensors :" />
        </node>
        <node concept="3F0A7n" id="5u9gdSXmgKf" role="3EZMnx">
          <ref role="1NtTu8" to="7ew6:75cVuPqSa9j" resolve="sensorFilter" />
        </node>
        <node concept="l2Vlx" id="5u9gdSXmgJD" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5u9gdSXmgKD" role="3EZMnx">
        <node concept="VPM3Z" id="5u9gdSXmgKF" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="5u9gdSXmgLa" role="3EZMnx" />
        <node concept="3F0ifn" id="5u9gdSXmgLe" role="3EZMnx">
          <property role="3F0ifm" value="sensor name column :" />
        </node>
        <node concept="3F0A7n" id="5u9gdSXmgLm" role="3EZMnx">
          <ref role="1NtTu8" to="7ew6:5u9gdSXmfKE" resolve="nameColumn" />
        </node>
        <node concept="l2Vlx" id="5u9gdSXmgKI" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5u9gdSXmgLY" role="3EZMnx">
        <node concept="VPM3Z" id="5u9gdSXmgM0" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="5u9gdSXmgMy" role="3EZMnx" />
        <node concept="3F0ifn" id="5u9gdSXmgMC" role="3EZMnx">
          <property role="3F0ifm" value="time column        :" />
        </node>
        <node concept="3F0A7n" id="5u9gdSXmgMK" role="3EZMnx">
          <ref role="1NtTu8" to="7ew6:5u9gdSXmaGX" resolve="timeColumn" />
        </node>
        <node concept="l2Vlx" id="5u9gdSXmgM3" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5u9gdSXmgNm" role="3EZMnx">
        <node concept="VPM3Z" id="5u9gdSXmgNo" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="5u9gdSXmgOa" role="3EZMnx" />
        <node concept="3F0ifn" id="5u9gdSXmgOg" role="3EZMnx">
          <property role="3F0ifm" value="value column       :" />
        </node>
        <node concept="3F0A7n" id="5u9gdSXmgOo" role="3EZMnx">
          <ref role="1NtTu8" to="7ew6:5u9gdSXmfKJ" resolve="valueColumn" />
        </node>
        <node concept="l2Vlx" id="5u9gdSXmgNr" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="5u9gdSXmgJ7" role="3EZMnx" />
      <node concept="2iRkQZ" id="5u9gdSXmgGj" role="2iSdaV" />
    </node>
  </node>
</model>

