<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cca50f0d-e1ee-4131-89ff-86e36e72d6d3(SensorSimulationLanguage.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
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
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
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
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
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
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="75cVuPqSa77" role="3EZMnx">
        <property role="3F0ifm" value="collection has" />
      </node>
      <node concept="3F0A7n" id="75cVuPqSa7i" role="3EZMnx">
        <ref role="1NtTu8" to="7ew6:75cVuPqSa61" resolve="quantity" />
      </node>
      <node concept="3F0ifn" id="75cVuPqSa7s" role="3EZMnx">
        <property role="3F0ifm" value="sensors with data source" />
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
    <ref role="1XX52x" to="7ew6:3PPzdvo2Egx" resolve="Random" />
    <node concept="3EZMnI" id="75cVuPqSads" role="2wV5jI">
      <node concept="3EZMnI" id="75cVuPqSaaf" role="3EZMnx">
        <node concept="3F0ifn" id="75cVuPqSaah" role="3EZMnx">
          <property role="3F0ifm" value="random data source named" />
        </node>
        <node concept="3F0A7n" id="75cVuPqSaau" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="75cVuPqSaaF" role="3EZMnx">
          <property role="3F0ifm" value="with the following configuration :" />
        </node>
        <node concept="l2Vlx" id="75cVuPqSaai" role="2iSdaV" />
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
          <property role="3F0ifm" value="period   :" />
        </node>
        <node concept="3F0A7n" id="75cVuPqSaix" role="3EZMnx">
          <ref role="1NtTu8" to="7ew6:75cVuPqSa98" resolve="period" />
        </node>
        <node concept="l2Vlx" id="75cVuPqSaiy" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="75cVuPqSajl" role="3EZMnx">
        <node concept="VPM3Z" id="75cVuPqSajm" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="75cVuPqSajn" role="3EZMnx" />
        <node concept="3F0ifn" id="75cVuPqSajo" role="3EZMnx">
          <property role="3F0ifm" value="sampling :" />
        </node>
        <node concept="3F0A7n" id="75cVuPqSajp" role="3EZMnx">
          <ref role="1NtTu8" to="7ew6:75cVuPqSa9b" resolve="sampling" />
        </node>
        <node concept="l2Vlx" id="75cVuPqSajq" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="75cVuPqSadt" role="2iSdaV" />
    </node>
  </node>
</model>

