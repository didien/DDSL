<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7801847a-7f0a-41eb-bdd8-c43541cee8b3(DSL.build)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="5" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
  </imports>
  <registry>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="9126048691955220717" name="jetbrains.mps.build.structure.BuildLayout_File" flags="ng" index="28jJK3">
        <property id="9126048691955221291" name="filemode" index="28jJZ5" />
        <child id="9126048691955220774" name="parameters" index="28jJR8" />
        <child id="9126048691955220762" name="path" index="28jJRO" />
      </concept>
      <concept id="2755237150521975431" name="jetbrains.mps.build.structure.BuildVariableMacroInitWithString" flags="ng" index="aVJcg">
        <child id="2755237150521975437" name="value" index="aVJcq" />
      </concept>
      <concept id="244868996532454372" name="jetbrains.mps.build.structure.BuildVariableMacroInitWithDate" flags="ng" index="hHN3E">
        <property id="244868996532454384" name="pattern" index="hHN3Y" />
      </concept>
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="3767587139141066978" name="jetbrains.mps.build.structure.BuildVariableMacro" flags="ng" index="2kB4xC">
        <child id="2755237150521975432" name="initialValue" index="aVJcv" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="7801138212747054656" name="jetbrains.mps.build.structure.BuildLayout_Filemode" flags="ng" index="yKbIv">
        <property id="7801138212747054660" name="filemode" index="yKbIr" />
      </concept>
      <concept id="2750015747481074431" name="jetbrains.mps.build.structure.BuildLayout_Files" flags="ng" index="2HvfSZ">
        <child id="2750015747481074432" name="path" index="2HvfZ0" />
        <child id="2750015747481074433" name="parameters" index="2HvfZ1" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="9184644532457106504" name="jetbrains.mps.build.structure.BuildLayout_CopyFilterReplaceRegex" flags="ng" index="1688n2">
        <property id="9184644532457106505" name="pattern" index="1688n3" />
        <property id="9184644532457106508" name="flags" index="1688n6" />
        <child id="9184644532457106506" name="value" index="1688n0" />
      </concept>
      <concept id="7389400916848050074" name="jetbrains.mps.build.structure.BuildLayout_Jar" flags="ng" index="3981dx" />
      <concept id="7389400916848050071" name="jetbrains.mps.build.structure.BuildLayout_Zip" flags="ng" index="3981dG" />
      <concept id="7389400916848050060" name="jetbrains.mps.build.structure.BuildLayout_NamedContainer" flags="ng" index="3981dR">
        <child id="4380385936562148502" name="containerName" index="Nbhlr" />
      </concept>
      <concept id="7389400916848036984" name="jetbrains.mps.build.structure.BuildLayout_Folder" flags="ng" index="398223" />
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT">
        <child id="7389400916848144618" name="defaultPath" index="398pKh" />
      </concept>
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="4198392933254416812" name="jetbrains.mps.build.structure.BuildLayout_CopyFilterFixCRLF" flags="ng" index="3co7Ac">
        <property id="4198392933254416822" name="eol" index="3co7Am" />
        <property id="4198392933254551900" name="removeEOF" index="3cpA_W" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="4915877860348071612" name="fileName" index="turDy" />
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="8577651205286814211" name="jetbrains.mps.build.structure.BuildLayout_Tar" flags="ng" index="1tmT9g">
        <property id="1979010778009209128" name="compression" index="AB_bT" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="5610619299013057363" name="jetbrains.mps.build.structure.BuildLayout_ImportContent" flags="ng" index="3ygNvl">
        <reference id="5610619299013057365" name="target" index="3ygNvj" />
        <child id="6789562173791401562" name="selectors" index="1juEy9" />
      </concept>
      <concept id="7753544965996647428" name="jetbrains.mps.build.structure.BuildLayout_FilesOf" flags="ng" index="1zDrgl">
        <reference id="7753544965996647430" name="element" index="1zDrgn" />
      </concept>
      <concept id="841011766565753074" name="jetbrains.mps.build.structure.BuildLayout_Import" flags="ng" index="3_I8Xc">
        <reference id="841011766565753076" name="target" index="3_I8Xa" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="5248329904288051111" name="jetbrains.mps.build.structure.BuildFileExcludeSelector" flags="ng" index="3LWZYq">
        <property id="5248329904288051112" name="pattern" index="3LWZYl" />
      </concept>
      <concept id="5248329904288051100" name="jetbrains.mps.build.structure.BuildFileIncludeSelector" flags="ng" index="3LWZYx">
        <property id="5248329904288051101" name="pattern" index="3LWZYw" />
      </concept>
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
      </concept>
      <concept id="4903714810883702017" name="jetbrains.mps.build.structure.BuildVarRefStringPart" flags="ng" index="3Mxwey">
        <reference id="4903714810883702018" name="macro" index="3Mxwex" />
      </concept>
      <concept id="202934866059043946" name="jetbrains.mps.build.structure.BuildLayout_EchoProperties" flags="ng" index="1TblL5">
        <child id="202934866059043948" name="fileName" index="1TblL3" />
        <child id="202934866059043962" name="entries" index="1TblLl" />
      </concept>
      <concept id="202934866059043959" name="jetbrains.mps.build.structure.BuildLayout_EchoPropertyEntry" flags="ng" index="1TblLo">
        <property id="202934866059043960" name="key" index="1TblLn" />
        <child id="202934866059043961" name="value" index="1TblLm" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="6592112598314586625" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginGroup" flags="ng" index="m$f5U">
        <reference id="6592112598314586626" name="group" index="m$f5T" />
      </concept>
      <concept id="6592112598314498932" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin" flags="ng" index="m$_wf">
        <property id="6592112598314498927" name="id" index="m$_wk" />
        <child id="6592112598314498931" name="version" index="m$_w8" />
        <child id="6592112598314499050" name="content" index="m$_yh" />
        <child id="6592112598314499028" name="dependencies" index="m$_yJ" />
        <child id="6592112598314499021" name="name" index="m$_yQ" />
        <child id="6592112598314855574" name="containerName" index="m_cZH" />
      </concept>
      <concept id="6592112598314498926" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_Plugin" flags="ng" index="m$_wl">
        <reference id="6592112598314801433" name="plugin" index="m_rDy" />
      </concept>
      <concept id="6592112598314499027" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginDependency" flags="ng" index="m$_yC">
        <reference id="6592112598314499066" name="target" index="m$_y1" />
      </concept>
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <property id="1500819558096356884" name="doNotCompile" index="2GAjPV" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <property id="5253498789149547713" name="reexport" index="3bR36h" />
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="5507251971038816436" name="jetbrains.mps.build.mps.structure.BuildMps_Generator" flags="ng" index="1yeLz9" />
      <concept id="7753544965996377997" name="jetbrains.mps.build.mps.structure.BuildMps_Branding" flags="ng" index="1zClus">
        <property id="3497141547781541445" name="minor" index="2OjLBK" />
        <property id="3497141547781541444" name="major" index="2OjLBL" />
        <child id="6108265972537182997" name="aboutScreen" index="2EqU2s" />
        <child id="6108265972537182996" name="splashScreen" index="2EqU2t" />
        <child id="6108265972537229337" name="buildNumber" index="2EteIg" />
        <child id="6108265972537229339" name="icon16" index="2EteIi" />
        <child id="6108265972537229338" name="icon32" index="2EteIj" />
        <child id="6108265972537229340" name="icon32opaque" index="2EteIl" />
        <child id="6108265972537372847" name="shortName" index="2EtHGA" />
        <child id="6108265972537372848" name="fullName" index="2EtHGT" />
        <child id="8795525031433238889" name="textColor" index="HFo83" />
        <child id="3497141547781549827" name="codename" index="2OjNyQ" />
        <child id="1462305029084462472" name="buildDate" index="R$TG_" />
        <child id="772379520210716142" name="welcomeLogo" index="3vi$VU" />
      </concept>
      <concept id="4278635856200826393" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyJar" flags="ng" index="1BurEX">
        <child id="4278635856200826394" name="path" index="1BurEY" />
      </concept>
      <concept id="4278635856200794926" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyExtendLanguage" flags="ng" index="1Busua">
        <reference id="4278635856200794928" name="language" index="1Busuk" />
      </concept>
      <concept id="3189788309731981027" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleSolutionRuntime" flags="ng" index="1E0d5M">
        <reference id="3189788309731981028" name="solution" index="1E0d5P" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="3189788309731840248" name="jetbrains.mps.build.mps.structure.BuildMps_Language" flags="ng" index="1E1JtD">
        <child id="3189788309731917348" name="runtime" index="1E1XAP" />
        <child id="9200313594498201639" name="generator" index="1TViLv" />
      </concept>
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="5qdpREsKV_M">
    <property role="TrG5h" value="DSL" />
    <property role="2DA0ip" value="../../" />
    <node concept="10PD9b" id="5qdpREsKV_N" role="10PD9s" />
    <node concept="3b7kt6" id="5qdpREsKV_O" role="10PD9s" />
    <node concept="1zClus" id="5qdpREsKVA1" role="3989C9">
      <property role="2OjLBK" value="0" />
      <property role="TrG5h" value="MPS" />
      <property role="2OjLBL" value="1" />
      <node concept="55IIr" id="5qdpREsKVA2" role="3vi$VU">
        <node concept="2Ry0Ak" id="5qdpREsKVA3" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="5qdpREsKVA4" role="2Ry0An">
            <property role="2Ry0Am" value="logo.png" />
          </node>
        </node>
      </node>
      <node concept="3_J27D" id="5qdpREsKVA5" role="2EteIg">
        <node concept="3Mxwey" id="5qdpREsKVA6" role="3MwsjC">
          <ref role="3Mxwex" node="5qdpREsKV_R" resolve="build.number" />
        </node>
      </node>
      <node concept="55IIr" id="5qdpREsKVA7" role="2EteIi">
        <node concept="2Ry0Ak" id="5qdpREsKVA8" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="5qdpREsKVA9" role="2Ry0An">
            <property role="2Ry0Am" value="MPS16.png" />
          </node>
        </node>
      </node>
      <node concept="3_J27D" id="5qdpREsKVAa" role="2EtHGA">
        <node concept="3Mxwew" id="5qdpREsKVAb" role="3MwsjC">
          <property role="3MwjfP" value="DSL" />
        </node>
      </node>
      <node concept="3_J27D" id="5qdpREsKVAc" role="2EtHGT">
        <node concept="3Mxwew" id="5qdpREsKVAd" role="3MwsjC">
          <property role="3MwjfP" value="DSL" />
        </node>
      </node>
      <node concept="NbPM2" id="5qdpREsKVAe" role="2OjNyQ">
        <node concept="3Mxwew" id="5qdpREsKVAf" role="3MwsjC">
          <property role="3MwjfP" value="DSL" />
        </node>
      </node>
      <node concept="3_J27D" id="5qdpREsKVAg" role="HFo83">
        <node concept="3Mxwew" id="5qdpREsKVAh" role="3MwsjC">
          <property role="3MwjfP" value="002387" />
        </node>
      </node>
      <node concept="55IIr" id="5qdpREsKVAi" role="2EteIj">
        <node concept="2Ry0Ak" id="5qdpREsKVAj" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="5qdpREsKVAk" role="2Ry0An">
            <property role="2Ry0Am" value="MPS32.png" />
          </node>
        </node>
      </node>
      <node concept="3_J27D" id="5qdpREsKVAl" role="R$TG_">
        <node concept="3Mxwey" id="5qdpREsKVAm" role="3MwsjC">
          <ref role="3Mxwex" node="5qdpREsKV_P" resolve="date" />
        </node>
      </node>
      <node concept="55IIr" id="5qdpREsKVAn" role="2EteIl">
        <node concept="2Ry0Ak" id="5qdpREsKVAo" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="5qdpREsKVAp" role="2Ry0An">
            <property role="2Ry0Am" value="MPS32.png" />
          </node>
        </node>
      </node>
      <node concept="55IIr" id="5qdpREsKVAq" role="2EqU2t">
        <node concept="2Ry0Ak" id="5qdpREsKVAr" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="5qdpREsKVAs" role="2Ry0An">
            <property role="2Ry0Am" value="splash.png" />
          </node>
        </node>
      </node>
      <node concept="55IIr" id="5qdpREsKVAt" role="2EqU2s">
        <node concept="2Ry0Ak" id="5qdpREsKVAu" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="5qdpREsKVAv" role="2Ry0An">
            <property role="2Ry0Am" value="about.png" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="5qdpREsKV_P" role="1l3spd">
      <property role="TrG5h" value="date" />
      <node concept="hHN3E" id="5qdpREsKV_Q" role="aVJcv">
        <property role="hHN3Y" value="20180227" />
      </node>
    </node>
    <node concept="2kB4xC" id="5qdpREsKV_R" role="1l3spd">
      <property role="TrG5h" value="build.number" />
      <node concept="aVJcg" id="5qdpREsKV_S" role="aVJcv">
        <node concept="NbPM2" id="5qdpREsKV_T" role="aVJcq">
          <node concept="3Mxwew" id="5qdpREsKV_U" role="3MwsjC">
            <property role="3MwjfP" value="DSL-1.RELEASE" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="5qdpREsKV_V" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="2sgV4H" id="5qdpREsKV_W" role="1l3spa">
      <ref role="1l3spb" to="ffeo:1diLdO26mQ6" resolve="mpsStandalone" />
      <node concept="398BVA" id="5qdpREsKV_X" role="2JcizS">
        <ref role="398BVh" node="5qdpREsKV_V" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="5qdpREsKV_Y" role="1l3spa">
      <ref role="1l3spb" to="ffeo:5rNMDvYzelV" resolve="mpsMakePlugin" />
      <node concept="398BVA" id="5qdpREsKV_Z" role="2JcizS">
        <ref role="398BVh" node="5qdpREsKV_V" resolve="mps_home" />
        <node concept="2Ry0Ak" id="5qdpREsKVA0" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="5qdpREsKVBm" role="1l3spN">
      <node concept="3_I8Xc" id="5qdpREsKVBu" role="39821P">
        <ref role="3_I8Xa" to="ffeo:1diLdO26H79" resolve="languages" />
      </node>
      <node concept="3_I8Xc" id="5qdpREsKVBv" role="39821P">
        <ref role="3_I8Xa" to="ffeo:1aRUp2KiMC$" resolve="license" />
      </node>
      <node concept="398223" id="5qdpREsKVBw" role="39821P">
        <node concept="3_J27D" id="5qdpREsKVBx" role="Nbhlr">
          <node concept="3Mxwew" id="5qdpREsKVBy" role="3MwsjC">
            <property role="3MwjfP" value="bin" />
          </node>
        </node>
        <node concept="3ygNvl" id="5qdpREsKVBz" role="39821P">
          <ref role="3ygNvj" to="ffeo:3cxBkkDa4_O" resolve="bin" />
          <node concept="3LWZYx" id="5qdpREsKVB$" role="1juEy9">
            <property role="3LWZYw" value="log.xml" />
          </node>
          <node concept="3LWZYx" id="5qdpREsKVB_" role="1juEy9">
            <property role="3LWZYw" value="log4j.dtd" />
          </node>
        </node>
        <node concept="28jJK3" id="5qdpREsKVBA" role="39821P">
          <node concept="1688n2" id="5qdpREsKVBB" role="28jJR8">
            <property role="1688n6" value="g" />
            <property role="1688n3" value="\.MPS(\w+)" />
            <node concept="NbPM2" id="5qdpREsKVBC" role="1688n0">
              <node concept="3Mxwew" id="5qdpREsKVBD" role="3MwsjC">
                <property role="3MwjfP" value="\." />
              </node>
              <node concept="3Mxwey" id="5qdpREsKVBE" role="3MwsjC">
                <ref role="3Mxwex" node="5qdpREsKV_R" resolve="build.number" />
              </node>
            </node>
          </node>
          <node concept="398BVA" id="5qdpREsKVBq" role="28jJRO">
            <ref role="398BVh" node="5qdpREsKV_V" resolve="mps_home" />
            <node concept="2Ry0Ak" id="5qdpREsKVBr" role="iGT6I">
              <property role="2Ry0Am" value="bin" />
              <node concept="2Ry0Ak" id="5qdpREsKVBs" role="2Ry0An">
                <property role="2Ry0Am" value="idea.properties" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="398223" id="5qdpREsKVBF" role="39821P">
        <node concept="3_J27D" id="5qdpREsKVBG" role="Nbhlr">
          <node concept="3Mxwew" id="5qdpREsKVBH" role="3MwsjC">
            <property role="3MwjfP" value="lib" />
          </node>
        </node>
        <node concept="3ygNvl" id="5qdpREsKVBI" role="39821P">
          <ref role="3ygNvj" to="ffeo:1diLdO26H7f" resolve="lib" />
          <node concept="3LWZYq" id="5qdpREsKVBJ" role="1juEy9">
            <property role="3LWZYl" value="MPS-src.zip" />
          </node>
          <node concept="3LWZYq" id="5qdpREsKVBK" role="1juEy9">
            <property role="3LWZYl" value="branding.jar" />
          </node>
        </node>
        <node concept="3981dx" id="5qdpREsKVBL" role="39821P">
          <node concept="3_J27D" id="5qdpREsKVBM" role="Nbhlr">
            <node concept="3Mxwew" id="5qdpREsKVBN" role="3MwsjC">
              <property role="3MwjfP" value="branding.jar" />
            </node>
          </node>
          <node concept="1zDrgl" id="5qdpREsKVBO" role="39821P">
            <ref role="1zDrgn" node="5qdpREsKVA1" resolve="DSL 1.0" />
          </node>
        </node>
      </node>
      <node concept="398223" id="5qdpREsKVBP" role="39821P">
        <node concept="3_I8Xc" id="5qdpREsKVBQ" role="39821P">
          <ref role="3_I8Xa" to="ffeo:1diLdO26H7T" resolve="cvsIntegration" />
        </node>
        <node concept="3_I8Xc" id="5qdpREsKVBR" role="39821P">
          <ref role="3_I8Xa" to="ffeo:3nGzrDEfcNJ" resolve="svn4idea" />
        </node>
        <node concept="3_I8Xc" id="5qdpREsKVBS" role="39821P">
          <ref role="3_I8Xa" to="ffeo:I6XuqH2zYV" resolve="git4idea" />
        </node>
        <node concept="3_I8Xc" id="5qdpREsKVBT" role="39821P">
          <ref role="3_I8Xa" to="ffeo:ymnOULBdbM" resolve="mps-core" />
        </node>
        <node concept="m$_wl" id="5qdpREsKVBU" role="39821P">
          <ref role="m_rDy" node="5qdpREsKVBd" resolve="DSL" />
          <node concept="28jJK3" id="3zhZ_DuRJ37" role="39821P">
            <node concept="55IIr" id="3zhZ_DuRJ38" role="28jJRO">
              <node concept="2Ry0Ak" id="3zhZ_DuRJ4k" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRJ4p" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRJVj" role="2Ry0An">
                    <property role="2Ry0Am" value="converter-jackson-2.2.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="3zhZ_DuRJ_h" role="39821P">
            <node concept="55IIr" id="3zhZ_DuRJ_i" role="28jJRO">
              <node concept="2Ry0Ak" id="3zhZ_DuRJ_j" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRJ_k" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRK6x" role="2Ry0An">
                    <property role="2Ry0Am" value="jackson-databind-2.8.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="3zhZ_DuRJAK" role="39821P">
            <node concept="55IIr" id="3zhZ_DuRJAL" role="28jJRO">
              <node concept="2Ry0Ak" id="3zhZ_DuRJAM" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRJAN" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRJZM" role="2Ry0An">
                    <property role="2Ry0Am" value="grafana-api-java-client-1.0.3.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="3zhZ_DuRJCk" role="39821P">
            <node concept="55IIr" id="3zhZ_DuRJCl" role="28jJRO">
              <node concept="2Ry0Ak" id="3zhZ_DuRJCm" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRJCn" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRK0U" role="2Ry0An">
                    <property role="2Ry0Am" value="jackson-annotations-2.8.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="3zhZ_DuRJDX" role="39821P">
            <node concept="55IIr" id="3zhZ_DuRJDY" role="28jJRO">
              <node concept="2Ry0Ak" id="3zhZ_DuRJDZ" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRJE0" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRK22" role="2Ry0An">
                    <property role="2Ry0Am" value="jackson-core-2.8.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="3zhZ_DuRJFF" role="39821P">
            <node concept="55IIr" id="3zhZ_DuRJFG" role="28jJRO">
              <node concept="2Ry0Ak" id="3zhZ_DuRJFH" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRJFI" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRKD6" role="2Ry0An">
                    <property role="2Ry0Am" value="retrofit-2.2.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="3zhZ_DuRJ5F" role="39821P">
            <node concept="55IIr" id="3zhZ_DuRJ5H" role="28jJRO">
              <node concept="2Ry0Ak" id="3zhZ_DuRJ6Z" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRJ74" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRK7D" role="2Ry0An">
                    <property role="2Ry0Am" value="converter-moshi-2.3.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="3zhZ_DuRJL4" role="39821P">
            <node concept="55IIr" id="3zhZ_DuRJL5" role="28jJRO">
              <node concept="2Ry0Ak" id="3zhZ_DuRJL6" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRJL7" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRK8L" role="2Ry0An">
                    <property role="2Ry0Am" value="influxdb-java-2.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="3zhZ_DuRJMW" role="39821P">
            <node concept="55IIr" id="3zhZ_DuRJMX" role="28jJRO">
              <node concept="2Ry0Ak" id="3zhZ_DuRJMY" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRJMZ" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRK9T" role="2Ry0An">
                    <property role="2Ry0Am" value="logging-interceptor-3.9.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="3zhZ_DuRJNN" role="39821P">
            <node concept="55IIr" id="3zhZ_DuRJNO" role="28jJRO">
              <node concept="2Ry0Ak" id="3zhZ_DuRJNP" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRJNQ" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRKb1" role="2Ry0An">
                    <property role="2Ry0Am" value="moshi-1.4.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="3zhZ_DuRJPP" role="39821P">
            <node concept="55IIr" id="3zhZ_DuRJPQ" role="28jJRO">
              <node concept="2Ry0Ak" id="3zhZ_DuRJPR" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRJPS" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRKc9" role="2Ry0An">
                    <property role="2Ry0Am" value="okhttp-3.9.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="3zhZ_DuRJRW" role="39821P">
            <node concept="55IIr" id="3zhZ_DuRJRX" role="28jJRO">
              <node concept="2Ry0Ak" id="3zhZ_DuRJRY" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRJRZ" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRKdh" role="2Ry0An">
                    <property role="2Ry0Am" value="okio-1.13.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="3zhZ_DuRJT2" role="39821P">
            <node concept="55IIr" id="3zhZ_DuRJT3" role="28jJRO">
              <node concept="2Ry0Ak" id="3zhZ_DuRJT4" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRJT5" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRKep" role="2Ry0An">
                    <property role="2Ry0Am" value="retrofit-2.3.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="3zhZ_DuRJ8r" role="39821P">
            <node concept="55IIr" id="3zhZ_DuRJ8t" role="28jJRO">
              <node concept="2Ry0Ak" id="3zhZ_DuRJ9O" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRJ9T" role="2Ry0An">
                  <property role="2Ry0Am" value="exp4j" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRJ9Y" role="2Ry0An">
                    <property role="2Ry0Am" value="exp4j-0.4.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="5qdpREsD$9e" role="39821P">
            <node concept="55IIr" id="5qdpREsD$9f" role="28jJRO">
              <node concept="2Ry0Ak" id="5qdpREsD$9g" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5qdpREsD$cE" role="2Ry0An">
                  <property role="2Ry0Am" value="Gson" />
                  <node concept="2Ry0Ak" id="5qdpREsD$dP" role="2Ry0An">
                    <property role="2Ry0Am" value="gson-2.8.2.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="5qdpREsKVBV" role="Nbhlr">
          <node concept="3Mxwew" id="5qdpREsKVBW" role="3MwsjC">
            <property role="3MwjfP" value="plugins" />
          </node>
        </node>
      </node>
      <node concept="1TblL5" id="5qdpREsKVBX" role="39821P">
        <node concept="3_J27D" id="5qdpREsKVBY" role="1TblL3">
          <node concept="3Mxwew" id="5qdpREsKVBZ" role="3MwsjC">
            <property role="3MwjfP" value="build.number" />
          </node>
        </node>
        <node concept="1TblLo" id="5qdpREsKVC0" role="1TblLl">
          <property role="1TblLn" value="build.number" />
          <node concept="NbPM2" id="5qdpREsKVC1" role="1TblLm">
            <node concept="3Mxwey" id="5qdpREsKVC2" role="3MwsjC">
              <ref role="3Mxwex" node="5qdpREsKV_R" resolve="build.number" />
            </node>
          </node>
        </node>
        <node concept="1TblLo" id="5qdpREsKVC3" role="1TblLl">
          <property role="1TblLn" value="date" />
          <node concept="NbPM2" id="5qdpREsKVC4" role="1TblLm">
            <node concept="3Mxwey" id="5qdpREsKVC5" role="3MwsjC">
              <ref role="3Mxwex" node="5qdpREsKV_P" resolve="date" />
            </node>
          </node>
        </node>
        <node concept="1TblLo" id="5qdpREsKVC6" role="1TblLl">
          <property role="1TblLn" value="version" />
          <node concept="NbPM2" id="5qdpREsKVC7" role="1TblLm">
            <node concept="3Mxwew" id="5qdpREsKVC8" role="3MwsjC">
              <property role="3MwjfP" value="1.0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="5qdpREsKVBd" role="3989C9">
      <property role="m$_wk" value="DSL" />
      <node concept="3_J27D" id="5qdpREsKVBe" role="m$_yQ">
        <node concept="3Mxwew" id="5qdpREsKVBf" role="3MwsjC">
          <property role="3MwjfP" value="DSL" />
        </node>
      </node>
      <node concept="3_J27D" id="5qdpREsKVBg" role="m$_w8">
        <node concept="3Mxwew" id="5qdpREsKVBh" role="3MwsjC">
          <property role="3MwjfP" value="1.0" />
        </node>
      </node>
      <node concept="m$f5U" id="5qdpREsKVBi" role="m$_yh">
        <ref role="m$f5T" node="5qdpREsKVBc" resolve="DSL" />
      </node>
      <node concept="m$_yC" id="5qdpREsKVBj" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="3_J27D" id="5qdpREsKVBk" role="m_cZH">
        <node concept="3Mxwew" id="5qdpREsKVBl" role="3MwsjC">
          <property role="3MwjfP" value="DSL" />
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="5qdpREsKVBc" role="3989C9">
      <property role="TrG5h" value="DSL" />
      <node concept="1E1JtA" id="5qdpREsKVAA" role="2G$12L">
        <property role="BnDLt" value="false" />
        <property role="TrG5h" value="SensorSimulationLanguage.sandbox" />
        <property role="3LESm3" value="5689de53-c468-4bbb-994e-0b3852d431ea" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="5qdpREsKVAw" role="3LF7KH">
          <node concept="2Ry0Ak" id="5qdpREsKVAx" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="5qdpREsKVAy" role="2Ry0An">
              <property role="2Ry0Am" value="SensorSimulationLanguage" />
              <node concept="2Ry0Ak" id="5qdpREsKVAz" role="2Ry0An">
                <property role="2Ry0Am" value="sandbox" />
                <node concept="2Ry0Ak" id="5qdpREsKVA$" role="2Ry0An">
                  <property role="2Ry0Am" value="SensorSimulationLanguage.sandbox.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsKVC9" role="3bR37C">
          <node concept="3bR9La" id="5qdpREsKVCa" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsKVCb" role="3bR37C">
          <node concept="3bR9La" id="5qdpREsKVCc" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsKVCd" role="3bR37C">
          <node concept="3bR9La" id="5qdpREsKVCe" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L0h" resolve="jetbrains.mps.baseLanguage.collections" />
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsKVUe" role="3bR37C">
          <node concept="3bR9La" id="5qdpREsKVUf" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="5qdpREsKVB5" resolve="InfluxDB" />
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsKVUg" role="3bR37C">
          <node concept="3bR9La" id="5qdpREsKVUh" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="5qdpREsKVAH" resolve="SensorSimulationLanguage.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsKVUi" role="3bR37C">
          <node concept="3bR9La" id="5qdpREsKVUj" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="5qdpREsKVAT" resolve="Grafana" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5qdpREsKVAH" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="SensorSimulationLanguage.runtime" />
        <property role="3LESm3" value="7b38f0f5-2f16-4dc5-9809-d131d36eb0bf" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="5qdpREsKVAB" role="3LF7KH">
          <node concept="2Ry0Ak" id="5qdpREsKVAC" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="5qdpREsKVAD" role="2Ry0An">
              <property role="2Ry0Am" value="SensorSimulationLanguage" />
              <node concept="2Ry0Ak" id="5qdpREsKVAE" role="2Ry0An">
                <property role="2Ry0Am" value="runtime" />
                <node concept="2Ry0Ak" id="5qdpREsKVAF" role="2Ry0An">
                  <property role="2Ry0Am" value="SensorSimulationLanguage.runtime.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsKVCk" role="3bR37C">
          <node concept="3bR9La" id="5qdpREsKVCl" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsKVCm" role="3bR37C">
          <node concept="3bR9La" id="5qdpREsKVCn" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L0C" resolve="collections.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsKVCo" role="3bR37C">
          <node concept="3bR9La" id="5qdpREsKVCp" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L0h" resolve="jetbrains.mps.baseLanguage.collections" />
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsKVUp" role="3bR37C">
          <node concept="3bR9La" id="5qdpREsKVUq" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="5qdpREsKVB5" resolve="InfluxDB" />
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsKVUr" role="3bR37C">
          <node concept="3bR9La" id="5qdpREsKVUs" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="5qdpREsKVAZ" resolve="exp4j" />
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsKVUt" role="3bR37C">
          <node concept="3bR9La" id="5qdpREsKVUu" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="5qdpREsKVAN" resolve="Gson" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5qdpREsKVAN" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="Gson" />
        <property role="3LESm3" value="ab012b2a-d7fa-40ca-817f-fa9ddb7cfb35" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="5qdpREsKVAI" role="3LF7KH">
          <node concept="2Ry0Ak" id="5qdpREsKVAJ" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="5qdpREsKVAK" role="2Ry0An">
              <property role="2Ry0Am" value="Gson" />
              <node concept="2Ry0Ak" id="5qdpREsKVAL" role="2Ry0An">
                <property role="2Ry0Am" value="Gson.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsKVCv" role="3bR37C">
          <node concept="3bR9La" id="5qdpREsKVCw" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsLzSO" role="3bR37C">
          <node concept="1BurEX" id="5qdpREsLzSP" role="1SiIV1">
            <node concept="55IIr" id="5qdpREsLzSK" role="1BurEY">
              <node concept="2Ry0Ak" id="5qdpREsLzSL" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5qdpREsLzSM" role="2Ry0An">
                  <property role="2Ry0Am" value="Gson" />
                  <node concept="2Ry0Ak" id="5qdpREsLzSN" role="2Ry0An">
                    <property role="2Ry0Am" value="gson-2.8.2.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5qdpREsKVAT" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="Grafana" />
        <property role="3LESm3" value="d102dc8e-32ba-4d10-8f95-be5a142b6537" />
        <property role="2GAjPV" value="true" />
        <node concept="55IIr" id="5qdpREsKVAO" role="3LF7KH">
          <node concept="2Ry0Ak" id="5qdpREsKVAP" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="5qdpREsKVAQ" role="2Ry0An">
              <property role="2Ry0Am" value="Grafana" />
              <node concept="2Ry0Ak" id="5qdpREsKVAR" role="2Ry0An">
                <property role="2Ry0Am" value="Grafana.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsKVCF" role="3bR37C">
          <node concept="3bR9La" id="5qdpREsKVCG" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsKVCH" role="3bR37C">
          <node concept="3bR9La" id="5qdpREsKVCI" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsLzSY" role="3bR37C">
          <node concept="1BurEX" id="5qdpREsLzSZ" role="1SiIV1">
            <node concept="55IIr" id="5qdpREsLzSU" role="1BurEY">
              <node concept="2Ry0Ak" id="5qdpREsLzSV" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5qdpREsLzSW" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="5qdpREsLzSX" role="2Ry0An">
                    <property role="2Ry0Am" value="jackson-annotations-2.8.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsLzT4" role="3bR37C">
          <node concept="1BurEX" id="5qdpREsLzT5" role="1SiIV1">
            <node concept="55IIr" id="5qdpREsLzT0" role="1BurEY">
              <node concept="2Ry0Ak" id="5qdpREsLzT1" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5qdpREsLzT2" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="5qdpREsLzT3" role="2Ry0An">
                    <property role="2Ry0Am" value="grafana-api-java-client-1.0.3.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsLzTa" role="3bR37C">
          <node concept="1BurEX" id="5qdpREsLzTb" role="1SiIV1">
            <node concept="55IIr" id="5qdpREsLzT6" role="1BurEY">
              <node concept="2Ry0Ak" id="5qdpREsLzT7" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5qdpREsLzT8" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="5qdpREsLzT9" role="2Ry0An">
                    <property role="2Ry0Am" value="converter-jackson-2.2.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsLzTg" role="3bR37C">
          <node concept="1BurEX" id="5qdpREsLzTh" role="1SiIV1">
            <node concept="55IIr" id="5qdpREsLzTc" role="1BurEY">
              <node concept="2Ry0Ak" id="5qdpREsLzTd" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5qdpREsLzTe" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="5qdpREsLzTf" role="2Ry0An">
                    <property role="2Ry0Am" value="jackson-core-2.8.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsLzTm" role="3bR37C">
          <node concept="1BurEX" id="5qdpREsLzTn" role="1SiIV1">
            <node concept="55IIr" id="5qdpREsLzTi" role="1BurEY">
              <node concept="2Ry0Ak" id="5qdpREsLzTj" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5qdpREsLzTk" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="5qdpREsLzTl" role="2Ry0An">
                    <property role="2Ry0Am" value="jackson-databind-2.8.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsLzTs" role="3bR37C">
          <node concept="1BurEX" id="5qdpREsLzTt" role="1SiIV1">
            <node concept="55IIr" id="5qdpREsLzTo" role="1BurEY">
              <node concept="2Ry0Ak" id="5qdpREsLzTp" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5qdpREsLzTq" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="5qdpREsLzTr" role="2Ry0An">
                    <property role="2Ry0Am" value="retrofit-2.2.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5qdpREsKVAZ" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="exp4j" />
        <property role="3LESm3" value="f94783b1-6c83-46e2-a40e-86c1cdf7b0d4" />
        <property role="2GAjPV" value="true" />
        <node concept="55IIr" id="5qdpREsKVAU" role="3LF7KH">
          <node concept="2Ry0Ak" id="5qdpREsKVAV" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="5qdpREsKVAW" role="2Ry0An">
              <property role="2Ry0Am" value="exp4j" />
              <node concept="2Ry0Ak" id="5qdpREsKVAX" role="2Ry0An">
                <property role="2Ry0Am" value="exp4j.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsKVDj" role="3bR37C">
          <node concept="3bR9La" id="5qdpREsKVDk" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsKVDl" role="3bR37C">
          <node concept="3bR9La" id="5qdpREsKVDm" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsLzTy" role="3bR37C">
          <node concept="1BurEX" id="5qdpREsLzTz" role="1SiIV1">
            <node concept="55IIr" id="5qdpREsLzTu" role="1BurEY">
              <node concept="2Ry0Ak" id="5qdpREsLzTv" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5qdpREsLzTw" role="2Ry0An">
                  <property role="2Ry0Am" value="exp4j" />
                  <node concept="2Ry0Ak" id="5qdpREsLzTx" role="2Ry0An">
                    <property role="2Ry0Am" value="exp4j-0.4.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5qdpREsKVB5" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="InfluxDB" />
        <property role="3LESm3" value="cc7fb470-7d0c-4aea-af2a-5d870ff3092f" />
        <property role="2GAjPV" value="true" />
        <node concept="55IIr" id="5qdpREsKVB0" role="3LF7KH">
          <node concept="2Ry0Ak" id="5qdpREsKVB1" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="5qdpREsKVB2" role="2Ry0An">
              <property role="2Ry0Am" value="InfluxDB" />
              <node concept="2Ry0Ak" id="5qdpREsKVB3" role="2Ry0An">
                <property role="2Ry0Am" value="InfluxDB.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsKVDt" role="3bR37C">
          <node concept="3bR9La" id="5qdpREsKVDu" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsKVDv" role="3bR37C">
          <node concept="3bR9La" id="5qdpREsKVDw" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsLzTC" role="3bR37C">
          <node concept="1BurEX" id="5qdpREsLzTD" role="1SiIV1">
            <node concept="55IIr" id="5qdpREsLzT$" role="1BurEY">
              <node concept="2Ry0Ak" id="5qdpREsLzT_" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5qdpREsLzTA" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="5qdpREsLzTB" role="2Ry0An">
                    <property role="2Ry0Am" value="logging-interceptor-3.9.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsLzTI" role="3bR37C">
          <node concept="1BurEX" id="5qdpREsLzTJ" role="1SiIV1">
            <node concept="55IIr" id="5qdpREsLzTE" role="1BurEY">
              <node concept="2Ry0Ak" id="5qdpREsLzTF" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5qdpREsLzTG" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="5qdpREsLzTH" role="2Ry0An">
                    <property role="2Ry0Am" value="moshi-1.4.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsLzTO" role="3bR37C">
          <node concept="1BurEX" id="5qdpREsLzTP" role="1SiIV1">
            <node concept="55IIr" id="5qdpREsLzTK" role="1BurEY">
              <node concept="2Ry0Ak" id="5qdpREsLzTL" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5qdpREsLzTM" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="5qdpREsLzTN" role="2Ry0An">
                    <property role="2Ry0Am" value="okio-1.13.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsLzTU" role="3bR37C">
          <node concept="1BurEX" id="5qdpREsLzTV" role="1SiIV1">
            <node concept="55IIr" id="5qdpREsLzTQ" role="1BurEY">
              <node concept="2Ry0Ak" id="5qdpREsLzTR" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5qdpREsLzTS" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="5qdpREsLzTT" role="2Ry0An">
                    <property role="2Ry0Am" value="okhttp-3.9.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsLzU0" role="3bR37C">
          <node concept="1BurEX" id="5qdpREsLzU1" role="1SiIV1">
            <node concept="55IIr" id="5qdpREsLzTW" role="1BurEY">
              <node concept="2Ry0Ak" id="5qdpREsLzTX" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5qdpREsLzTY" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="5qdpREsLzTZ" role="2Ry0An">
                    <property role="2Ry0Am" value="retrofit-2.3.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsLzU6" role="3bR37C">
          <node concept="1BurEX" id="5qdpREsLzU7" role="1SiIV1">
            <node concept="55IIr" id="5qdpREsLzU2" role="1BurEY">
              <node concept="2Ry0Ak" id="5qdpREsLzU3" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5qdpREsLzU4" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="5qdpREsLzU5" role="2Ry0An">
                    <property role="2Ry0Am" value="influxdb-java-2.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsLzUc" role="3bR37C">
          <node concept="1BurEX" id="5qdpREsLzUd" role="1SiIV1">
            <node concept="55IIr" id="5qdpREsLzU8" role="1BurEY">
              <node concept="2Ry0Ak" id="5qdpREsLzU9" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5qdpREsLzUa" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="5qdpREsLzUb" role="2Ry0An">
                    <property role="2Ry0Am" value="converter-moshi-2.3.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="5qdpREsKVBb" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="SensorSimulationLanguage" />
        <property role="3LESm3" value="bc16fd15-bfa2-47e7-b9c2-9f80e5b399e0" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="5qdpREsKVB6" role="3LF7KH">
          <node concept="2Ry0Ak" id="5qdpREsKVB7" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="5qdpREsKVB8" role="2Ry0An">
              <property role="2Ry0Am" value="SensorSimulationLanguage" />
              <node concept="2Ry0Ak" id="5qdpREsKVB9" role="2Ry0An">
                <property role="2Ry0Am" value="SensorSimulationLanguage.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1E0d5M" id="5qdpREsKVEb" role="1E1XAP">
          <ref role="1E0d5P" to="ffeo:7Kfy9QB6L0C" resolve="collections.runtime" />
        </node>
        <node concept="1SiIV0" id="5qdpREsKVEc" role="3bR37C">
          <node concept="1Busua" id="5qdpREsKVEd" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:sx8XDLCp97" resolve="jetbrains.mps.execution.util" />
          </node>
        </node>
        <node concept="1yeLz9" id="5qdpREsKVEe" role="1TViLv">
          <property role="TrG5h" value="SensorSimulationLanguage#3665899325104188727" />
          <property role="3LESm3" value="41cd7ff1-0417-4274-921d-f51f242fcb12" />
          <property role="2GAjPV" value="false" />
          <node concept="1SiIV0" id="5qdpREsKVEf" role="3bR37C">
            <node concept="3bR9La" id="5qdpREsKVEg" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
            </node>
          </node>
          <node concept="1SiIV0" id="5qdpREsKVVB" role="3bR37C">
            <node concept="3bR9La" id="5qdpREsKVVC" role="1SiIV1">
              <property role="3bR36h" value="true" />
              <ref role="3bR37D" node="5qdpREsKVAH" resolve="SensorSimulationLanguage.runtime" />
            </node>
          </node>
          <node concept="1SiIV0" id="5qdpREsKVVD" role="3bR37C">
            <node concept="3bR9La" id="5qdpREsKVVE" role="1SiIV1">
              <property role="3bR36h" value="true" />
              <ref role="3bR37D" node="5qdpREsKVB5" resolve="InfluxDB" />
            </node>
          </node>
          <node concept="1SiIV0" id="5qdpREsKVVF" role="3bR37C">
            <node concept="3bR9La" id="5qdpREsKVVG" role="1SiIV1">
              <property role="3bR36h" value="true" />
              <ref role="3bR37D" node="5qdpREsKVAT" resolve="Grafana" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5qdpREsKVV$" role="3bR37C">
          <node concept="3bR9La" id="5qdpREsKVV_" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="5qdpREsKVAZ" resolve="exp4j" />
          </node>
        </node>
        <node concept="1E0d5M" id="5qdpREsKVVA" role="1E1XAP">
          <ref role="1E0d5P" node="5qdpREsKVAH" resolve="SensorSimulationLanguage.runtime" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="5qdpREsKVEq">
    <property role="TrG5h" value="DSLDistribution" />
    <property role="turDy" value="buildDistribution.xml" />
    <property role="2DA0ip" value="../../" />
    <node concept="2sgV4H" id="5qdpREsKVEr" role="1l3spa">
      <ref role="1l3spb" node="5qdpREsKV_M" resolve="DSL" />
    </node>
    <node concept="1l3spV" id="5qdpREsKVEs" role="1l3spN">
      <node concept="1tmT9g" id="5qdpREsKVFa" role="39821P">
        <property role="AB_bT" value="gzip" />
        <node concept="398223" id="5qdpREsKVFb" role="39821P">
          <node concept="3ygNvl" id="5qdpREsKVFc" role="39821P">
            <ref role="3ygNvj" node="5qdpREsKVBm" />
          </node>
          <node concept="398223" id="5qdpREsKVFd" role="39821P">
            <node concept="28jJK3" id="5qdpREsKVFe" role="39821P">
              <property role="28jJZ5" value="755" />
              <node concept="398BVA" id="5qdpREsKVEC" role="28jJRO">
                <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                <node concept="2Ry0Ak" id="5qdpREsKVED" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="5qdpREsKVEE" role="2Ry0An">
                    <property role="2Ry0Am" value="linux" />
                    <node concept="2Ry0Ak" id="5qdpREsKVEF" role="2Ry0An">
                      <property role="2Ry0Am" value="fsnotifier" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="5qdpREsKVFf" role="39821P">
              <property role="28jJZ5" value="755" />
              <node concept="398BVA" id="5qdpREsKVEK" role="28jJRO">
                <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                <node concept="2Ry0Ak" id="5qdpREsKVEL" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="5qdpREsKVEM" role="2Ry0An">
                    <property role="2Ry0Am" value="linux" />
                    <node concept="2Ry0Ak" id="5qdpREsKVEN" role="2Ry0An">
                      <property role="2Ry0Am" value="fsnotifier64" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="5qdpREsKVFg" role="39821P">
              <node concept="3co7Ac" id="5qdpREsKVFh" role="28jJR8">
                <property role="3co7Am" value="lf" />
                <property role="3cpA_W" value="true" />
              </node>
              <node concept="398BVA" id="5qdpREsKVER" role="28jJRO">
                <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                <node concept="2Ry0Ak" id="5qdpREsKVES" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="5qdpREsKVET" role="2Ry0An">
                    <property role="2Ry0Am" value="mps.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="5qdpREsKVFi" role="39821P">
              <node concept="3co7Ac" id="5qdpREsKVFj" role="28jJR8">
                <property role="3co7Am" value="lf" />
                <property role="3cpA_W" value="true" />
              </node>
              <node concept="398BVA" id="5qdpREsKVEX" role="28jJRO">
                <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                <node concept="2Ry0Ak" id="5qdpREsKVEY" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="5qdpREsKVEZ" role="2Ry0An">
                    <property role="2Ry0Am" value="mps64.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2HvfSZ" id="5qdpREsKVFk" role="39821P">
              <node concept="3LWZYq" id="5qdpREsKVFl" role="2HvfZ1">
                <property role="3LWZYl" value="**/fsnotifier" />
              </node>
              <node concept="3LWZYq" id="5qdpREsKVFm" role="2HvfZ1">
                <property role="3LWZYl" value="**/fsnotifier64" />
              </node>
              <node concept="398BVA" id="5qdpREsKVF3" role="2HvfZ0">
                <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                <node concept="2Ry0Ak" id="5qdpREsKVF4" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="5qdpREsKVF5" role="2Ry0An">
                    <property role="2Ry0Am" value="linux" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3_J27D" id="5qdpREsKVFn" role="Nbhlr">
              <node concept="3Mxwew" id="5qdpREsKVFo" role="3MwsjC">
                <property role="3MwjfP" value="bin" />
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="5qdpREsKVFp" role="39821P">
            <property role="28jJZ5" value="755" />
            <node concept="3co7Ac" id="5qdpREsKVFq" role="28jJR8">
              <property role="3co7Am" value="lf" />
              <property role="3cpA_W" value="true" />
            </node>
            <node concept="398BVA" id="5qdpREsKVF8" role="28jJRO">
              <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
              <node concept="2Ry0Ak" id="5qdpREsKVF9" role="iGT6I">
                <property role="2Ry0Am" value="bin" />
                <node concept="2Ry0Ak" id="5qdpREsLEZ9" role="2Ry0An">
                  <property role="2Ry0Am" value="mps.sh" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="5qdpREsKVFr" role="Nbhlr">
            <node concept="3Mxwew" id="5qdpREsKVFs" role="3MwsjC">
              <property role="3MwjfP" value="DSL " />
            </node>
            <node concept="3Mxwey" id="5qdpREsKVFt" role="3MwsjC">
              <ref role="3Mxwex" node="5qdpREsKVEu" resolve="version" />
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="5qdpREsKVFu" role="Nbhlr">
          <node concept="3Mxwey" id="5qdpREsKVFv" role="3MwsjC">
            <ref role="3Mxwex" node="5qdpREsKV_R" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="5qdpREsKVFw" role="3MwsjC">
            <property role="3MwjfP" value="-linux.tar.gz" />
          </node>
        </node>
      </node>
      <node concept="3981dG" id="5qdpREsKVHZ" role="39821P">
        <node concept="398223" id="5qdpREsKVI0" role="39821P">
          <node concept="3ygNvl" id="5qdpREsKVI1" role="39821P">
            <ref role="3ygNvj" node="5qdpREsKVBm" />
          </node>
          <node concept="398223" id="5qdpREsKVI2" role="39821P">
            <node concept="3_J27D" id="5qdpREsKVI3" role="Nbhlr">
              <node concept="3Mxwew" id="5qdpREsKVI4" role="3MwsjC">
                <property role="3MwjfP" value="bin" />
              </node>
            </node>
            <node concept="28jJK3" id="5qdpREsKVI5" role="39821P">
              <node concept="398BVA" id="5qdpREsKVF$" role="28jJRO">
                <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                <node concept="2Ry0Ak" id="5qdpREsKVF_" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="5qdpREsKVFA" role="2Ry0An">
                    <property role="2Ry0Am" value="mps.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="5qdpREsKVI6" role="39821P">
              <node concept="398BVA" id="5qdpREsKVFE" role="28jJRO">
                <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                <node concept="2Ry0Ak" id="5qdpREsKVFF" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="5qdpREsKVFG" role="2Ry0An">
                    <property role="2Ry0Am" value="mps.exe.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="5qdpREsKVI7" role="39821P">
              <node concept="398BVA" id="5qdpREsKVFK" role="28jJRO">
                <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                <node concept="2Ry0Ak" id="5qdpREsKVFL" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="5qdpREsKVFM" role="2Ry0An">
                    <property role="2Ry0Am" value="mps64.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="5qdpREsKVI8" role="39821P">
              <node concept="398BVA" id="5qdpREsKVFQ" role="28jJRO">
                <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                <node concept="2Ry0Ak" id="5qdpREsKVFR" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="5qdpREsKVFS" role="2Ry0An">
                    <property role="2Ry0Am" value="mps64.exe.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="398223" id="5qdpREsKVI9" role="39821P">
              <node concept="3_J27D" id="5qdpREsKVIa" role="Nbhlr">
                <node concept="3Mxwew" id="5qdpREsKVIb" role="3MwsjC">
                  <property role="3MwjfP" value="win" />
                </node>
              </node>
              <node concept="2HvfSZ" id="5qdpREsKVIc" role="39821P">
                <node concept="3LWZYq" id="5qdpREsKVId" role="2HvfZ1">
                  <property role="3LWZYl" value="**/*.exe" />
                </node>
                <node concept="398BVA" id="5qdpREsKVFW" role="2HvfZ0">
                  <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="5qdpREsKVFX" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="5qdpREsKVFY" role="2Ry0An">
                      <property role="2Ry0Am" value="win" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="yKbIv" id="5qdpREsKVIe" role="39821P">
                <property role="yKbIr" value="755" />
                <node concept="2HvfSZ" id="5qdpREsKVIf" role="39821P">
                  <node concept="3LWZYx" id="5qdpREsKVIg" role="2HvfZ1">
                    <property role="3LWZYw" value="**/*.exe" />
                  </node>
                  <node concept="398BVA" id="5qdpREsKVG2" role="2HvfZ0">
                    <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                    <node concept="2Ry0Ak" id="5qdpREsKVG3" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="5qdpREsKVG4" role="2Ry0An">
                        <property role="2Ry0Am" value="win" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="398223" id="5qdpREsKVIh" role="39821P">
              <node concept="2HvfSZ" id="5qdpREsKVIi" role="39821P">
                <node concept="3LWZYq" id="5qdpREsKVIj" role="2HvfZ1">
                  <property role="3LWZYl" value="**/fsnotifier" />
                </node>
                <node concept="3LWZYq" id="5qdpREsKVIk" role="2HvfZ1">
                  <property role="3LWZYl" value="**/fsnotifier64" />
                </node>
                <node concept="398BVA" id="5qdpREsKVG8" role="2HvfZ0">
                  <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="5qdpREsKVG9" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="5qdpREsKVGa" role="2Ry0An">
                      <property role="2Ry0Am" value="linux" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="5qdpREsKVIl" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="5qdpREsKVGf" role="28jJRO">
                  <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="5qdpREsKVGg" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="5qdpREsKVGh" role="2Ry0An">
                      <property role="2Ry0Am" value="linux" />
                      <node concept="2Ry0Ak" id="5qdpREsKVGi" role="2Ry0An">
                        <property role="2Ry0Am" value="fsnotifier" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="5qdpREsKVIm" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="5qdpREsKVGn" role="28jJRO">
                  <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="5qdpREsKVGo" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="5qdpREsKVGp" role="2Ry0An">
                      <property role="2Ry0Am" value="linux" />
                      <node concept="2Ry0Ak" id="5qdpREsKVGq" role="2Ry0An">
                        <property role="2Ry0Am" value="fsnotifier64" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3_J27D" id="5qdpREsKVIn" role="Nbhlr">
                <node concept="3Mxwew" id="5qdpREsKVIo" role="3MwsjC">
                  <property role="3MwjfP" value="linux" />
                </node>
              </node>
            </node>
            <node concept="398223" id="5qdpREsKVIu" role="39821P">
              <node concept="28jJK3" id="5qdpREsKVIv" role="39821P">
                <node concept="398BVA" id="5qdpREsKVG_" role="28jJRO">
                  <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="5qdpREsKVGA" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="5qdpREsKVGB" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="5qdpREsKVGC" role="2Ry0An">
                        <property role="2Ry0Am" value="libbreakgen.jnilib" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="5qdpREsKVIw" role="39821P">
                <node concept="398BVA" id="5qdpREsKVGH" role="28jJRO">
                  <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="5qdpREsKVGI" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="5qdpREsKVGJ" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="5qdpREsKVGK" role="2Ry0An">
                        <property role="2Ry0Am" value="libbreakgen64.jnilib" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="5qdpREsKVIx" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="5qdpREsKVGP" role="28jJRO">
                  <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="5qdpREsKVGQ" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="5qdpREsKVGR" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="5qdpREsKVGS" role="2Ry0An">
                        <property role="2Ry0Am" value="restarter" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="5qdpREsKVIy" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="5qdpREsKVGX" role="28jJRO">
                  <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="5qdpREsKVGY" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="5qdpREsKVGZ" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="5qdpREsKVH0" role="2Ry0An">
                        <property role="2Ry0Am" value="fsnotifier" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="5qdpREsKVIz" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="5qdpREsKVH5" role="28jJRO">
                  <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="5qdpREsKVH6" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="5qdpREsKVH7" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="5qdpREsKVH8" role="2Ry0An">
                        <property role="2Ry0Am" value="printenv.py" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="398223" id="5qdpREsKVI$" role="39821P">
                <node concept="3_J27D" id="5qdpREsKVI_" role="Nbhlr">
                  <node concept="3Mxwew" id="5qdpREsKVIA" role="3MwsjC">
                    <property role="3MwjfP" value="Contents" />
                  </node>
                </node>
                <node concept="398223" id="5qdpREsKVIB" role="39821P">
                  <node concept="3_J27D" id="5qdpREsKVIC" role="Nbhlr">
                    <node concept="3Mxwew" id="5qdpREsKVID" role="3MwsjC">
                      <property role="3MwjfP" value="Resources" />
                    </node>
                  </node>
                  <node concept="28jJK3" id="5qdpREsKVIE" role="39821P">
                    <node concept="398BVA" id="5qdpREsKVHf" role="28jJRO">
                      <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                      <node concept="2Ry0Ak" id="5qdpREsKVHg" role="iGT6I">
                        <property role="2Ry0Am" value="bin" />
                        <node concept="2Ry0Ak" id="5qdpREsKVHh" role="2Ry0An">
                          <property role="2Ry0Am" value="mac" />
                          <node concept="2Ry0Ak" id="5qdpREsKVHi" role="2Ry0An">
                            <property role="2Ry0Am" value="Contents" />
                            <node concept="2Ry0Ak" id="5qdpREsKVHj" role="2Ry0An">
                              <property role="2Ry0Am" value="Resources" />
                              <node concept="2Ry0Ak" id="5qdpREsKVHk" role="2Ry0An">
                                <property role="2Ry0Am" value="mps.icns" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="398223" id="5qdpREsKVIF" role="39821P">
                  <node concept="3_J27D" id="5qdpREsKVIG" role="Nbhlr">
                    <node concept="3Mxwew" id="5qdpREsKVIH" role="3MwsjC">
                      <property role="3MwjfP" value="MacOS" />
                    </node>
                  </node>
                  <node concept="28jJK3" id="5qdpREsKVII" role="39821P">
                    <property role="28jJZ5" value="755" />
                    <node concept="398BVA" id="5qdpREsKVHr" role="28jJRO">
                      <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                      <node concept="2Ry0Ak" id="5qdpREsKVHs" role="iGT6I">
                        <property role="2Ry0Am" value="bin" />
                        <node concept="2Ry0Ak" id="5qdpREsKVHt" role="2Ry0An">
                          <property role="2Ry0Am" value="mac" />
                          <node concept="2Ry0Ak" id="5qdpREsKVHu" role="2Ry0An">
                            <property role="2Ry0Am" value="Contents" />
                            <node concept="2Ry0Ak" id="5qdpREsKVHv" role="2Ry0An">
                              <property role="2Ry0Am" value="MacOS" />
                              <node concept="2Ry0Ak" id="5qdpREsKVHw" role="2Ry0An">
                                <property role="2Ry0Am" value="mps" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="28jJK3" id="5qdpREsKVIJ" role="39821P">
                    <property role="28jJZ5" value="644" />
                    <node concept="398BVA" id="5qdpREsKVHB" role="28jJRO">
                      <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                      <node concept="2Ry0Ak" id="5qdpREsKVHC" role="iGT6I">
                        <property role="2Ry0Am" value="bin" />
                        <node concept="2Ry0Ak" id="5qdpREsKVHD" role="2Ry0An">
                          <property role="2Ry0Am" value="mac" />
                          <node concept="2Ry0Ak" id="5qdpREsKVHE" role="2Ry0An">
                            <property role="2Ry0Am" value="Contents" />
                            <node concept="2Ry0Ak" id="5qdpREsKVHF" role="2Ry0An">
                              <property role="2Ry0Am" value="MacOS" />
                              <node concept="2Ry0Ak" id="5qdpREsKVHG" role="2Ry0An">
                                <property role="2Ry0Am" value="idea_appLauncher" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="28jJK3" id="5qdpREsKVIK" role="39821P">
                  <node concept="398BVA" id="5qdpREsKVHM" role="28jJRO">
                    <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                    <node concept="2Ry0Ak" id="5qdpREsKVHN" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="5qdpREsKVHO" role="2Ry0An">
                        <property role="2Ry0Am" value="mac" />
                        <node concept="2Ry0Ak" id="5qdpREsKVHP" role="2Ry0An">
                          <property role="2Ry0Am" value="Contents" />
                          <node concept="2Ry0Ak" id="5qdpREsKVHQ" role="2Ry0An">
                            <property role="2Ry0Am" value="Info.plist" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3_J27D" id="5qdpREsKVIL" role="Nbhlr">
                <node concept="3Mxwew" id="5qdpREsKVIM" role="3MwsjC">
                  <property role="3MwjfP" value="mac" />
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="5qdpREsKVIN" role="39821P">
            <property role="28jJZ5" value="755" />
            <node concept="398BVA" id="5qdpREsKVHT" role="28jJRO">
              <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
              <node concept="2Ry0Ak" id="5qdpREsKVHU" role="iGT6I">
                <property role="2Ry0Am" value="bin" />
                <node concept="2Ry0Ak" id="5qdpREsLyr6" role="2Ry0An">
                  <property role="2Ry0Am" value="mps.sh" />
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="5qdpREsKVIO" role="39821P">
            <property role="28jJZ5" value="755" />
            <node concept="398BVA" id="5qdpREsKVHX" role="28jJRO">
              <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
              <node concept="2Ry0Ak" id="5qdpREsKVHY" role="iGT6I">
                <property role="2Ry0Am" value="mps.bat" />
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="5qdpREsKVIP" role="Nbhlr">
            <node concept="3Mxwew" id="5qdpREsKVIQ" role="3MwsjC">
              <property role="3MwjfP" value="DSL " />
            </node>
            <node concept="3Mxwey" id="5qdpREsKVIR" role="3MwsjC">
              <ref role="3Mxwex" node="5qdpREsKVEu" resolve="version" />
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="5qdpREsKVIS" role="Nbhlr">
          <node concept="3Mxwey" id="5qdpREsKVIT" role="3MwsjC">
            <ref role="3Mxwex" node="5qdpREsKV_R" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="5qdpREsKVIU" role="3MwsjC">
            <property role="3MwjfP" value=".zip" />
          </node>
        </node>
      </node>
      <node concept="3981dG" id="5qdpREsKVKx" role="39821P">
        <node concept="3_J27D" id="5qdpREsKVKy" role="Nbhlr">
          <node concept="3Mxwey" id="5qdpREsKVKz" role="3MwsjC">
            <ref role="3Mxwex" node="5qdpREsKV_R" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="5qdpREsKVK$" role="3MwsjC">
            <property role="3MwjfP" value="-macos.zip" />
          </node>
        </node>
        <node concept="398223" id="5qdpREsKVK_" role="39821P">
          <node concept="398223" id="5qdpREsKVKA" role="39821P">
            <node concept="3ygNvl" id="5qdpREsKVKB" role="39821P">
              <ref role="3ygNvj" node="5qdpREsKVBm" />
            </node>
            <node concept="3_J27D" id="5qdpREsKVKC" role="Nbhlr">
              <node concept="3Mxwew" id="5qdpREsKVKD" role="3MwsjC">
                <property role="3MwjfP" value="Contents" />
              </node>
            </node>
            <node concept="398223" id="5qdpREsKVKE" role="39821P">
              <node concept="3_J27D" id="5qdpREsKVKF" role="Nbhlr">
                <node concept="3Mxwew" id="5qdpREsKVKG" role="3MwsjC">
                  <property role="3MwjfP" value="Resources" />
                </node>
              </node>
              <node concept="28jJK3" id="5qdpREsKVKH" role="39821P">
                <node concept="398BVA" id="5qdpREsKVJ1" role="28jJRO">
                  <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="5qdpREsKVJ2" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="5qdpREsKVJ3" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="5qdpREsKVJ4" role="2Ry0An">
                        <property role="2Ry0Am" value="Contents" />
                        <node concept="2Ry0Ak" id="5qdpREsKVJ5" role="2Ry0An">
                          <property role="2Ry0Am" value="Resources" />
                          <node concept="2Ry0Ak" id="5qdpREsKVJ6" role="2Ry0An">
                            <property role="2Ry0Am" value="mps.icns" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="398223" id="5qdpREsKVKI" role="39821P">
              <node concept="28jJK3" id="5qdpREsKVKJ" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="5qdpREsKVJd" role="28jJRO">
                  <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="5qdpREsKVJe" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="5qdpREsKVJf" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="5qdpREsKVJg" role="2Ry0An">
                        <property role="2Ry0Am" value="Contents" />
                        <node concept="2Ry0Ak" id="5qdpREsKVJh" role="2Ry0An">
                          <property role="2Ry0Am" value="MacOS" />
                          <node concept="2Ry0Ak" id="5qdpREsKVJi" role="2Ry0An">
                            <property role="2Ry0Am" value="mps" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3_J27D" id="5qdpREsKVKK" role="Nbhlr">
                <node concept="3Mxwew" id="5qdpREsKVKL" role="3MwsjC">
                  <property role="3MwjfP" value="MacOS" />
                </node>
              </node>
              <node concept="28jJK3" id="5qdpREsKVKM" role="39821P">
                <property role="28jJZ5" value="644" />
                <node concept="398BVA" id="5qdpREsKVJp" role="28jJRO">
                  <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="5qdpREsKVJq" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="5qdpREsKVJr" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="5qdpREsKVJs" role="2Ry0An">
                        <property role="2Ry0Am" value="Contents" />
                        <node concept="2Ry0Ak" id="5qdpREsKVJt" role="2Ry0An">
                          <property role="2Ry0Am" value="MacOS" />
                          <node concept="2Ry0Ak" id="5qdpREsKVJu" role="2Ry0An">
                            <property role="2Ry0Am" value="idea_appLauncher" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="5qdpREsKVKN" role="39821P">
              <node concept="398BVA" id="5qdpREsKVJ$" role="28jJRO">
                <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                <node concept="2Ry0Ak" id="5qdpREsKVJ_" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="5qdpREsKVJA" role="2Ry0An">
                    <property role="2Ry0Am" value="mac" />
                    <node concept="2Ry0Ak" id="5qdpREsKVJB" role="2Ry0An">
                      <property role="2Ry0Am" value="Contents" />
                      <node concept="2Ry0Ak" id="5qdpREsKVJC" role="2Ry0An">
                        <property role="2Ry0Am" value="Info.plist" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="398223" id="5qdpREsKVKO" role="39821P">
              <node concept="3_J27D" id="5qdpREsKVKP" role="Nbhlr">
                <node concept="3Mxwew" id="5qdpREsKVKQ" role="3MwsjC">
                  <property role="3MwjfP" value="bin" />
                </node>
              </node>
              <node concept="28jJK3" id="5qdpREsKVKR" role="39821P">
                <node concept="398BVA" id="5qdpREsKVJH" role="28jJRO">
                  <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="5qdpREsKVJI" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="5qdpREsKVJJ" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="5qdpREsKVJK" role="2Ry0An">
                        <property role="2Ry0Am" value="libbreakgen.jnilib" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="5qdpREsKVKS" role="39821P">
                <node concept="398BVA" id="5qdpREsKVJP" role="28jJRO">
                  <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="5qdpREsKVJQ" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="5qdpREsKVJR" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="5qdpREsKVJS" role="2Ry0An">
                        <property role="2Ry0Am" value="libbreakgen64.jnilib" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="5qdpREsKVKT" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="5qdpREsKVJX" role="28jJRO">
                  <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="5qdpREsKVJY" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="5qdpREsKVJZ" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="5qdpREsKVK0" role="2Ry0An">
                        <property role="2Ry0Am" value="restarter" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="5qdpREsKVKU" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="5qdpREsKVK5" role="28jJRO">
                  <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="5qdpREsKVK6" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="5qdpREsKVK7" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="5qdpREsKVK8" role="2Ry0An">
                        <property role="2Ry0Am" value="fsnotifier" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="5qdpREsKVKV" role="39821P">
                <node concept="3co7Ac" id="5qdpREsKVKW" role="28jJR8">
                  <property role="3co7Am" value="lf" />
                  <property role="3cpA_W" value="true" />
                </node>
                <node concept="398BVA" id="5qdpREsKVKc" role="28jJRO">
                  <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="5qdpREsKVKd" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="5qdpREsKVKe" role="2Ry0An">
                      <property role="2Ry0Am" value="mps.vmoptions" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="5qdpREsKVKX" role="39821P">
                <node concept="3co7Ac" id="5qdpREsKVKY" role="28jJR8">
                  <property role="3co7Am" value="lf" />
                  <property role="3cpA_W" value="true" />
                </node>
                <node concept="398BVA" id="5qdpREsKVKi" role="28jJRO">
                  <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="5qdpREsKVKj" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="5qdpREsKVKk" role="2Ry0An">
                      <property role="2Ry0Am" value="mps64.vmoptions" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="5qdpREsKVKZ" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="3co7Ac" id="5qdpREsKVL0" role="28jJR8">
                  <property role="3co7Am" value="lf" />
                  <property role="3cpA_W" value="true" />
                </node>
                <node concept="398BVA" id="5qdpREsKVKp" role="28jJRO">
                  <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="5qdpREsKVKq" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="5qdpREsKVKr" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="5qdpREsKVKs" role="2Ry0An">
                        <property role="2Ry0Am" value="printenv.py" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="5qdpREsKVL1" role="39821P">
              <property role="28jJZ5" value="755" />
              <node concept="3co7Ac" id="5qdpREsKVL2" role="28jJR8">
                <property role="3co7Am" value="lf" />
                <property role="3cpA_W" value="true" />
              </node>
              <node concept="398BVA" id="5qdpREsKVKv" role="28jJRO">
                <ref role="398BVh" node="5qdpREsKVEt" resolve="mps_home" />
                <node concept="2Ry0Ak" id="5qdpREsKVKw" role="iGT6I">
                  <property role="2Ry0Am" value="mps.sh" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="5qdpREsKVL3" role="Nbhlr">
            <node concept="3Mxwew" id="5qdpREsKVL4" role="3MwsjC">
              <property role="3MwjfP" value="DSL " />
            </node>
            <node concept="3Mxwey" id="5qdpREsKVL5" role="3MwsjC">
              <ref role="3Mxwex" node="5qdpREsKVEu" resolve="version" />
            </node>
            <node concept="3Mxwew" id="5qdpREsKVL6" role="3MwsjC">
              <property role="3MwjfP" value=".app" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="5qdpREsKVEt" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="5qdpREsLypb" role="398pKh">
        <node concept="2Ry0Ak" id="5qdpREsLypg" role="iGT6I">
          <property role="2Ry0Am" value="generic_MPS" />
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="5qdpREsKVEu" role="1l3spd">
      <property role="TrG5h" value="version" />
      <node concept="aVJcg" id="5qdpREsKVEv" role="aVJcv">
        <node concept="NbPM2" id="5qdpREsKVEw" role="aVJcq">
          <node concept="3Mxwew" id="5qdpREsKVEx" role="3MwsjC">
            <property role="3MwjfP" value="2017.3" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

