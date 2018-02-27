<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:469c8022-2855-4385-95a1-6ef580332e36(DSL.build)">
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
  <node concept="1l3spW" id="3zhZ_DuRILF">
    <property role="TrG5h" value="DSL" />
    <property role="2DA0ip" value="../../" />
    <node concept="10PD9b" id="3zhZ_DuRILG" role="10PD9s" />
    <node concept="3b7kt6" id="3zhZ_DuRILH" role="10PD9s" />
    <node concept="1zClus" id="3zhZ_DuRILU" role="3989C9">
      <property role="2OjLBK" value="0" />
      <property role="TrG5h" value="MPS" />
      <property role="2OjLBL" value="1" />
      <node concept="55IIr" id="3zhZ_DuRILV" role="3vi$VU">
        <node concept="2Ry0Ak" id="3zhZ_DuRILW" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="3zhZ_DuRILX" role="2Ry0An">
            <property role="2Ry0Am" value="logo.png" />
          </node>
        </node>
      </node>
      <node concept="3_J27D" id="3zhZ_DuRILY" role="2EteIg">
        <node concept="3Mxwey" id="3zhZ_DuRILZ" role="3MwsjC">
          <ref role="3Mxwex" node="3zhZ_DuRILK" resolve="build.number" />
        </node>
      </node>
      <node concept="55IIr" id="3zhZ_DuRIM0" role="2EteIi">
        <node concept="2Ry0Ak" id="3zhZ_DuRIM1" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="3zhZ_DuRIM2" role="2Ry0An">
            <property role="2Ry0Am" value="MPS16.png" />
          </node>
        </node>
      </node>
      <node concept="3_J27D" id="3zhZ_DuRIM3" role="2EtHGA">
        <node concept="3Mxwew" id="3zhZ_DuRIM4" role="3MwsjC">
          <property role="3MwjfP" value="DSL" />
        </node>
      </node>
      <node concept="3_J27D" id="3zhZ_DuRIM5" role="2EtHGT">
        <node concept="3Mxwew" id="3zhZ_DuRIM6" role="3MwsjC">
          <property role="3MwjfP" value="DSL" />
        </node>
      </node>
      <node concept="NbPM2" id="3zhZ_DuRIM7" role="2OjNyQ">
        <node concept="3Mxwew" id="3zhZ_DuRIM8" role="3MwsjC">
          <property role="3MwjfP" value="DSL" />
        </node>
      </node>
      <node concept="3_J27D" id="3zhZ_DuRIM9" role="HFo83">
        <node concept="3Mxwew" id="3zhZ_DuRIMa" role="3MwsjC">
          <property role="3MwjfP" value="002387" />
        </node>
      </node>
      <node concept="55IIr" id="3zhZ_DuRIMb" role="2EteIj">
        <node concept="2Ry0Ak" id="3zhZ_DuRIMc" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="3zhZ_DuRIMd" role="2Ry0An">
            <property role="2Ry0Am" value="MPS32.png" />
          </node>
        </node>
      </node>
      <node concept="3_J27D" id="3zhZ_DuRIMe" role="R$TG_">
        <node concept="3Mxwey" id="3zhZ_DuRIMf" role="3MwsjC">
          <ref role="3Mxwex" node="3zhZ_DuRILI" resolve="date" />
        </node>
      </node>
      <node concept="55IIr" id="3zhZ_DuRIMg" role="2EteIl">
        <node concept="2Ry0Ak" id="3zhZ_DuRIMh" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="3zhZ_DuRIMi" role="2Ry0An">
            <property role="2Ry0Am" value="MPS32.png" />
          </node>
        </node>
      </node>
      <node concept="55IIr" id="3zhZ_DuRIMj" role="2EqU2t">
        <node concept="2Ry0Ak" id="3zhZ_DuRIMk" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="3zhZ_DuRIMl" role="2Ry0An">
            <property role="2Ry0Am" value="splash.png" />
          </node>
        </node>
      </node>
      <node concept="55IIr" id="3zhZ_DuRIMm" role="2EqU2s">
        <node concept="2Ry0Ak" id="3zhZ_DuRIMn" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="3zhZ_DuRIMo" role="2Ry0An">
            <property role="2Ry0Am" value="about.png" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="3zhZ_DuRILI" role="1l3spd">
      <property role="TrG5h" value="date" />
      <node concept="hHN3E" id="3zhZ_DuRILJ" role="aVJcv">
        <property role="hHN3Y" value="yyyyMMdd" />
      </node>
    </node>
    <node concept="2kB4xC" id="3zhZ_DuRILK" role="1l3spd">
      <property role="TrG5h" value="build.number" />
      <node concept="aVJcg" id="3zhZ_DuRILL" role="aVJcv">
        <node concept="NbPM2" id="3zhZ_DuRILM" role="aVJcq">
          <node concept="3Mxwew" id="3zhZ_DuRILN" role="3MwsjC">
            <property role="3MwjfP" value="DSL-173.SNAPSHOT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="3zhZ_DuRILO" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="2sgV4H" id="3zhZ_DuRILP" role="1l3spa">
      <ref role="1l3spb" to="ffeo:1diLdO26mQ6" resolve="mpsStandalone" />
      <node concept="398BVA" id="3zhZ_DuRILQ" role="2JcizS">
        <ref role="398BVh" node="3zhZ_DuRILO" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="3zhZ_DuRILR" role="1l3spa">
      <ref role="1l3spb" to="ffeo:5rNMDvYzelV" resolve="mpsMakePlugin" />
      <node concept="398BVA" id="3zhZ_DuRILS" role="2JcizS">
        <ref role="398BVh" node="3zhZ_DuRILO" resolve="mps_home" />
        <node concept="2Ry0Ak" id="3zhZ_DuRILT" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="3zhZ_DuRIN2" role="1l3spN">
      <node concept="3_I8Xc" id="3zhZ_DuRINa" role="39821P">
        <ref role="3_I8Xa" to="ffeo:1diLdO26H79" resolve="languages" />
      </node>
      <node concept="3_I8Xc" id="3zhZ_DuRINb" role="39821P">
        <ref role="3_I8Xa" to="ffeo:1aRUp2KiMC$" resolve="license" />
      </node>
      <node concept="398223" id="3zhZ_DuRINc" role="39821P">
        <node concept="3_J27D" id="3zhZ_DuRINd" role="Nbhlr">
          <node concept="3Mxwew" id="3zhZ_DuRINe" role="3MwsjC">
            <property role="3MwjfP" value="bin" />
          </node>
        </node>
        <node concept="3ygNvl" id="3zhZ_DuRINf" role="39821P">
          <ref role="3ygNvj" to="ffeo:3cxBkkDa4_O" resolve="bin" />
          <node concept="3LWZYx" id="3zhZ_DuRINg" role="1juEy9">
            <property role="3LWZYw" value="log.xml" />
          </node>
          <node concept="3LWZYx" id="3zhZ_DuRINh" role="1juEy9">
            <property role="3LWZYw" value="log4j.dtd" />
          </node>
        </node>
        <node concept="28jJK3" id="3zhZ_DuRINi" role="39821P">
          <node concept="1688n2" id="3zhZ_DuRINj" role="28jJR8">
            <property role="1688n6" value="g" />
            <property role="1688n3" value="\.MPS(\w+)" />
            <node concept="NbPM2" id="3zhZ_DuRINk" role="1688n0">
              <node concept="3Mxwew" id="3zhZ_DuRINl" role="3MwsjC">
                <property role="3MwjfP" value="\." />
              </node>
              <node concept="3Mxwey" id="3zhZ_DuRINm" role="3MwsjC">
                <ref role="3Mxwex" node="3zhZ_DuRILK" resolve="build.number" />
              </node>
            </node>
          </node>
          <node concept="398BVA" id="3zhZ_DuRIN6" role="28jJRO">
            <ref role="398BVh" node="3zhZ_DuRILO" resolve="mps_home" />
            <node concept="2Ry0Ak" id="3zhZ_DuRIN7" role="iGT6I">
              <property role="2Ry0Am" value="bin" />
              <node concept="2Ry0Ak" id="3zhZ_DuRIN8" role="2Ry0An">
                <property role="2Ry0Am" value="idea.properties" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="398223" id="3zhZ_DuRINn" role="39821P">
        <node concept="3_J27D" id="3zhZ_DuRINo" role="Nbhlr">
          <node concept="3Mxwew" id="3zhZ_DuRINp" role="3MwsjC">
            <property role="3MwjfP" value="lib" />
          </node>
        </node>
        <node concept="3ygNvl" id="3zhZ_DuRINq" role="39821P">
          <ref role="3ygNvj" to="ffeo:1diLdO26H7f" resolve="lib" />
          <node concept="3LWZYq" id="3zhZ_DuRINr" role="1juEy9">
            <property role="3LWZYl" value="MPS-src.zip" />
          </node>
          <node concept="3LWZYq" id="3zhZ_DuRINs" role="1juEy9">
            <property role="3LWZYl" value="branding.jar" />
          </node>
        </node>
        <node concept="3981dx" id="3zhZ_DuRINt" role="39821P">
          <node concept="3_J27D" id="3zhZ_DuRINu" role="Nbhlr">
            <node concept="3Mxwew" id="3zhZ_DuRINv" role="3MwsjC">
              <property role="3MwjfP" value="branding.jar" />
            </node>
          </node>
          <node concept="1zDrgl" id="3zhZ_DuRINw" role="39821P">
            <ref role="1zDrgn" node="3zhZ_DuRILU" resolve="DSL 1.0" />
          </node>
        </node>
      </node>
      <node concept="398223" id="3zhZ_DuRINx" role="39821P">
        <node concept="3_I8Xc" id="3zhZ_DuRINy" role="39821P">
          <ref role="3_I8Xa" to="ffeo:1diLdO26H7T" resolve="cvsIntegration" />
        </node>
        <node concept="3_I8Xc" id="3zhZ_DuRINz" role="39821P">
          <ref role="3_I8Xa" to="ffeo:3nGzrDEfcNJ" resolve="svn4idea" />
        </node>
        <node concept="3_I8Xc" id="3zhZ_DuRIN$" role="39821P">
          <ref role="3_I8Xa" to="ffeo:I6XuqH2zYV" resolve="git4idea" />
        </node>
        <node concept="3_I8Xc" id="3zhZ_DuRIN_" role="39821P">
          <ref role="3_I8Xa" to="ffeo:ymnOULBdbM" resolve="mps-core" />
        </node>
        <node concept="m$_wl" id="3zhZ_DuRINA" role="39821P">
          <ref role="m_rDy" node="3zhZ_DuRIMT" resolve="DSL" />
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
        </node>
        <node concept="3_J27D" id="3zhZ_DuRINB" role="Nbhlr">
          <node concept="3Mxwew" id="3zhZ_DuRINC" role="3MwsjC">
            <property role="3MwjfP" value="plugins" />
          </node>
        </node>
      </node>
      <node concept="1TblL5" id="3zhZ_DuRIND" role="39821P">
        <node concept="3_J27D" id="3zhZ_DuRINE" role="1TblL3">
          <node concept="3Mxwew" id="3zhZ_DuRINF" role="3MwsjC">
            <property role="3MwjfP" value="build.number" />
          </node>
        </node>
        <node concept="1TblLo" id="3zhZ_DuRING" role="1TblLl">
          <property role="1TblLn" value="build.number" />
          <node concept="NbPM2" id="3zhZ_DuRINH" role="1TblLm">
            <node concept="3Mxwey" id="3zhZ_DuRINI" role="3MwsjC">
              <ref role="3Mxwex" node="3zhZ_DuRILK" resolve="build.number" />
            </node>
          </node>
        </node>
        <node concept="1TblLo" id="3zhZ_DuRINJ" role="1TblLl">
          <property role="1TblLn" value="date" />
          <node concept="NbPM2" id="3zhZ_DuRINK" role="1TblLm">
            <node concept="3Mxwey" id="3zhZ_DuRINL" role="3MwsjC">
              <ref role="3Mxwex" node="3zhZ_DuRILI" resolve="date" />
            </node>
          </node>
        </node>
        <node concept="1TblLo" id="3zhZ_DuRINM" role="1TblLl">
          <property role="1TblLn" value="version" />
          <node concept="NbPM2" id="3zhZ_DuRINN" role="1TblLm">
            <node concept="3Mxwew" id="3zhZ_DuRINO" role="3MwsjC">
              <property role="3MwjfP" value="1.0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="3zhZ_DuRIMT" role="3989C9">
      <property role="m$_wk" value="DSL" />
      <node concept="3_J27D" id="3zhZ_DuRIMU" role="m$_yQ">
        <node concept="3Mxwew" id="3zhZ_DuRIMV" role="3MwsjC">
          <property role="3MwjfP" value="DSL" />
        </node>
      </node>
      <node concept="3_J27D" id="3zhZ_DuRIMW" role="m$_w8">
        <node concept="3Mxwew" id="3zhZ_DuRIMX" role="3MwsjC">
          <property role="3MwjfP" value="1.0" />
        </node>
      </node>
      <node concept="m$f5U" id="3zhZ_DuRIMY" role="m$_yh">
        <ref role="m$f5T" node="3zhZ_DuRIMS" resolve="DSL" />
      </node>
      <node concept="m$_yC" id="3zhZ_DuRIMZ" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="3_J27D" id="3zhZ_DuRIN0" role="m_cZH">
        <node concept="3Mxwew" id="3zhZ_DuRIN1" role="3MwsjC">
          <property role="3MwjfP" value="DSL" />
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="3zhZ_DuRIMS" role="3989C9">
      <property role="TrG5h" value="DSL" />
      <node concept="1E1JtA" id="3zhZ_DuRIMu" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="InfluxDB" />
        <property role="3LESm3" value="cc7fb470-7d0c-4aea-af2a-5d870ff3092f" />
        <property role="2GAjPV" value="true" />
        <node concept="55IIr" id="3zhZ_DuRIMp" role="3LF7KH">
          <node concept="2Ry0Ak" id="3zhZ_DuRIMq" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="3zhZ_DuRIMr" role="2Ry0An">
              <property role="2Ry0Am" value="InfluxDB" />
              <node concept="2Ry0Ak" id="3zhZ_DuRIMs" role="2Ry0An">
                <property role="2Ry0Am" value="InfluxDB.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRINP" role="3bR37C">
          <node concept="3bR9La" id="3zhZ_DuRINQ" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRINR" role="3bR37C">
          <node concept="3bR9La" id="3zhZ_DuRINS" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRINX" role="3bR37C">
          <node concept="1BurEX" id="3zhZ_DuRINY" role="1SiIV1">
            <node concept="55IIr" id="3zhZ_DuRINT" role="1BurEY">
              <node concept="2Ry0Ak" id="3zhZ_DuRINU" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRINV" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRINW" role="2Ry0An">
                    <property role="2Ry0Am" value="logging-interceptor-3.9.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRIO3" role="3bR37C">
          <node concept="1BurEX" id="3zhZ_DuRIO4" role="1SiIV1">
            <node concept="55IIr" id="3zhZ_DuRINZ" role="1BurEY">
              <node concept="2Ry0Ak" id="3zhZ_DuRIO0" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIO1" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIO2" role="2Ry0An">
                    <property role="2Ry0Am" value="moshi-1.4.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRIO9" role="3bR37C">
          <node concept="1BurEX" id="3zhZ_DuRIOa" role="1SiIV1">
            <node concept="55IIr" id="3zhZ_DuRIO5" role="1BurEY">
              <node concept="2Ry0Ak" id="3zhZ_DuRIO6" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIO7" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIO8" role="2Ry0An">
                    <property role="2Ry0Am" value="okio-1.13.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRIOf" role="3bR37C">
          <node concept="1BurEX" id="3zhZ_DuRIOg" role="1SiIV1">
            <node concept="55IIr" id="3zhZ_DuRIOb" role="1BurEY">
              <node concept="2Ry0Ak" id="3zhZ_DuRIOc" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIOd" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIOe" role="2Ry0An">
                    <property role="2Ry0Am" value="okhttp-3.9.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRIOl" role="3bR37C">
          <node concept="1BurEX" id="3zhZ_DuRIOm" role="1SiIV1">
            <node concept="55IIr" id="3zhZ_DuRIOh" role="1BurEY">
              <node concept="2Ry0Ak" id="3zhZ_DuRIOi" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIOj" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIOk" role="2Ry0An">
                    <property role="2Ry0Am" value="retrofit-2.3.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRIOr" role="3bR37C">
          <node concept="1BurEX" id="3zhZ_DuRIOs" role="1SiIV1">
            <node concept="55IIr" id="3zhZ_DuRIOn" role="1BurEY">
              <node concept="2Ry0Ak" id="3zhZ_DuRIOo" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIOp" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIOq" role="2Ry0An">
                    <property role="2Ry0Am" value="influxdb-java-2.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRIOx" role="3bR37C">
          <node concept="1BurEX" id="3zhZ_DuRIOy" role="1SiIV1">
            <node concept="55IIr" id="3zhZ_DuRIOt" role="1BurEY">
              <node concept="2Ry0Ak" id="3zhZ_DuRIOu" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIOv" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIOw" role="2Ry0An">
                    <property role="2Ry0Am" value="converter-moshi-2.3.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="3zhZ_DuRIM$" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="exp4j" />
        <property role="3LESm3" value="f94783b1-6c83-46e2-a40e-86c1cdf7b0d4" />
        <property role="2GAjPV" value="true" />
        <node concept="55IIr" id="3zhZ_DuRIMv" role="3LF7KH">
          <node concept="2Ry0Ak" id="3zhZ_DuRIMw" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="3zhZ_DuRIMx" role="2Ry0An">
              <property role="2Ry0Am" value="exp4j" />
              <node concept="2Ry0Ak" id="3zhZ_DuRIMy" role="2Ry0An">
                <property role="2Ry0Am" value="exp4j.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRIOz" role="3bR37C">
          <node concept="3bR9La" id="3zhZ_DuRIO$" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRIO_" role="3bR37C">
          <node concept="3bR9La" id="3zhZ_DuRIOA" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRIOF" role="3bR37C">
          <node concept="1BurEX" id="3zhZ_DuRIOG" role="1SiIV1">
            <node concept="55IIr" id="3zhZ_DuRIOB" role="1BurEY">
              <node concept="2Ry0Ak" id="3zhZ_DuRIOC" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIOD" role="2Ry0An">
                  <property role="2Ry0Am" value="exp4j" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIOE" role="2Ry0An">
                    <property role="2Ry0Am" value="exp4j-0.4.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="3zhZ_DuRIMF" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="SensorSimulationLanguage.runtime" />
        <property role="3LESm3" value="7b38f0f5-2f16-4dc5-9809-d131d36eb0bf" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="3zhZ_DuRIM_" role="3LF7KH">
          <node concept="2Ry0Ak" id="3zhZ_DuRIMA" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="3zhZ_DuRIMB" role="2Ry0An">
              <property role="2Ry0Am" value="SensorSimulationLanguage" />
              <node concept="2Ry0Ak" id="3zhZ_DuRIMC" role="2Ry0An">
                <property role="2Ry0Am" value="runtime" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIMD" role="2Ry0An">
                  <property role="2Ry0Am" value="SensorSimulationLanguage.runtime.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRIOH" role="3bR37C">
          <node concept="3bR9La" id="3zhZ_DuRIOI" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRIOJ" role="3bR37C">
          <node concept="3bR9La" id="3zhZ_DuRIOK" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L0C" resolve="collections.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRIOL" role="3bR37C">
          <node concept="3bR9La" id="3zhZ_DuRIOM" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L0h" resolve="jetbrains.mps.baseLanguage.collections" />
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRJ0Q" role="3bR37C">
          <node concept="3bR9La" id="3zhZ_DuRJ0R" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="3zhZ_DuRIMu" resolve="InfluxDB" />
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRJ0S" role="3bR37C">
          <node concept="3bR9La" id="3zhZ_DuRJ0T" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="3zhZ_DuRIM$" resolve="exp4j" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="3zhZ_DuRIML" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="Grafana" />
        <property role="3LESm3" value="d102dc8e-32ba-4d10-8f95-be5a142b6537" />
        <property role="2GAjPV" value="true" />
        <node concept="55IIr" id="3zhZ_DuRIMG" role="3LF7KH">
          <node concept="2Ry0Ak" id="3zhZ_DuRIMH" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="3zhZ_DuRIMI" role="2Ry0An">
              <property role="2Ry0Am" value="Grafana" />
              <node concept="2Ry0Ak" id="3zhZ_DuRIMJ" role="2Ry0An">
                <property role="2Ry0Am" value="Grafana.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRIOS" role="3bR37C">
          <node concept="3bR9La" id="3zhZ_DuRIOT" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRIOU" role="3bR37C">
          <node concept="3bR9La" id="3zhZ_DuRIOV" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRIP0" role="3bR37C">
          <node concept="1BurEX" id="3zhZ_DuRIP1" role="1SiIV1">
            <node concept="55IIr" id="3zhZ_DuRIOW" role="1BurEY">
              <node concept="2Ry0Ak" id="3zhZ_DuRIOX" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIOY" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIOZ" role="2Ry0An">
                    <property role="2Ry0Am" value="jackson-annotations-2.8.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRIP6" role="3bR37C">
          <node concept="1BurEX" id="3zhZ_DuRIP7" role="1SiIV1">
            <node concept="55IIr" id="3zhZ_DuRIP2" role="1BurEY">
              <node concept="2Ry0Ak" id="3zhZ_DuRIP3" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIP4" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIP5" role="2Ry0An">
                    <property role="2Ry0Am" value="grafana-api-java-client-1.0.3.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRIPc" role="3bR37C">
          <node concept="1BurEX" id="3zhZ_DuRIPd" role="1SiIV1">
            <node concept="55IIr" id="3zhZ_DuRIP8" role="1BurEY">
              <node concept="2Ry0Ak" id="3zhZ_DuRIP9" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIPa" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIPb" role="2Ry0An">
                    <property role="2Ry0Am" value="converter-jackson-2.2.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRIPi" role="3bR37C">
          <node concept="1BurEX" id="3zhZ_DuRIPj" role="1SiIV1">
            <node concept="55IIr" id="3zhZ_DuRIPe" role="1BurEY">
              <node concept="2Ry0Ak" id="3zhZ_DuRIPf" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIPg" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIPh" role="2Ry0An">
                    <property role="2Ry0Am" value="jackson-core-2.8.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRIPo" role="3bR37C">
          <node concept="1BurEX" id="3zhZ_DuRIPp" role="1SiIV1">
            <node concept="55IIr" id="3zhZ_DuRIPk" role="1BurEY">
              <node concept="2Ry0Ak" id="3zhZ_DuRIPl" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIPm" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIPn" role="2Ry0An">
                    <property role="2Ry0Am" value="jackson-databind-2.8.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRIPu" role="3bR37C">
          <node concept="1BurEX" id="3zhZ_DuRIPv" role="1SiIV1">
            <node concept="55IIr" id="3zhZ_DuRIPq" role="1BurEY">
              <node concept="2Ry0Ak" id="3zhZ_DuRIPr" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIPs" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIPt" role="2Ry0An">
                    <property role="2Ry0Am" value="retrofit-2.2.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="3zhZ_DuRIMR" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="SensorSimulationLanguage" />
        <property role="3LESm3" value="bc16fd15-bfa2-47e7-b9c2-9f80e5b399e0" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="3zhZ_DuRIMM" role="3LF7KH">
          <node concept="2Ry0Ak" id="3zhZ_DuRIMN" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="3zhZ_DuRIMO" role="2Ry0An">
              <property role="2Ry0Am" value="SensorSimulationLanguage" />
              <node concept="2Ry0Ak" id="3zhZ_DuRIMP" role="2Ry0An">
                <property role="2Ry0Am" value="SensorSimulationLanguage.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1E0d5M" id="3zhZ_DuRIPw" role="1E1XAP">
          <ref role="1E0d5P" to="ffeo:7Kfy9QB6L0C" resolve="collections.runtime" />
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRIPx" role="3bR37C">
          <node concept="1Busua" id="3zhZ_DuRIPy" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:sx8XDLCp97" resolve="jetbrains.mps.execution.util" />
          </node>
        </node>
        <node concept="1yeLz9" id="3zhZ_DuRIPz" role="1TViLv">
          <property role="TrG5h" value="SensorSimulationLanguage#3665899325104188727" />
          <property role="3LESm3" value="41cd7ff1-0417-4274-921d-f51f242fcb12" />
          <property role="2GAjPV" value="false" />
          <node concept="1SiIV0" id="3zhZ_DuRIP$" role="3bR37C">
            <node concept="3bR9La" id="3zhZ_DuRIP_" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
            </node>
          </node>
          <node concept="1SiIV0" id="3zhZ_DuRJ1q" role="3bR37C">
            <node concept="3bR9La" id="3zhZ_DuRJ1r" role="1SiIV1">
              <property role="3bR36h" value="true" />
              <ref role="3bR37D" node="3zhZ_DuRIMF" resolve="SensorSimulationLanguage.runtime" />
            </node>
          </node>
          <node concept="1SiIV0" id="3zhZ_DuRJ1s" role="3bR37C">
            <node concept="3bR9La" id="3zhZ_DuRJ1t" role="1SiIV1">
              <property role="3bR36h" value="true" />
              <ref role="3bR37D" node="3zhZ_DuRIMu" resolve="InfluxDB" />
            </node>
          </node>
          <node concept="1SiIV0" id="3zhZ_DuRJ1u" role="3bR37C">
            <node concept="3bR9La" id="3zhZ_DuRJ1v" role="1SiIV1">
              <property role="3bR36h" value="true" />
              <ref role="3bR37D" node="3zhZ_DuRIML" resolve="Grafana" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3zhZ_DuRJ1n" role="3bR37C">
          <node concept="3bR9La" id="3zhZ_DuRJ1o" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="3zhZ_DuRIM$" resolve="exp4j" />
          </node>
        </node>
        <node concept="1E0d5M" id="3zhZ_DuRJ1p" role="1E1XAP">
          <ref role="1E0d5P" node="3zhZ_DuRIMF" resolve="SensorSimulationLanguage.runtime" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="3zhZ_DuRIPJ">
    <property role="TrG5h" value="DSLDistribution" />
    <property role="turDy" value="buildDistribution.xml" />
    <property role="2DA0ip" value="../../" />
    <node concept="2sgV4H" id="3zhZ_DuRIPK" role="1l3spa">
      <ref role="1l3spb" node="3zhZ_DuRILF" resolve="DSL" />
    </node>
    <node concept="1l3spV" id="3zhZ_DuRIPL" role="1l3spN">
      <node concept="1tmT9g" id="3zhZ_DuRIQv" role="39821P">
        <property role="AB_bT" value="gzip" />
        <node concept="398223" id="3zhZ_DuRIQw" role="39821P">
          <node concept="3ygNvl" id="3zhZ_DuRIQx" role="39821P">
            <ref role="3ygNvj" node="3zhZ_DuRIN2" />
          </node>
          <node concept="398223" id="3zhZ_DuRIQy" role="39821P">
            <node concept="28jJK3" id="3zhZ_DuRIQz" role="39821P">
              <property role="28jJZ5" value="755" />
              <node concept="398BVA" id="3zhZ_DuRIPX" role="28jJRO">
                <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIPY" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIPZ" role="2Ry0An">
                    <property role="2Ry0Am" value="linux" />
                    <node concept="2Ry0Ak" id="3zhZ_DuRIQ0" role="2Ry0An">
                      <property role="2Ry0Am" value="fsnotifier" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="3zhZ_DuRIQ$" role="39821P">
              <property role="28jJZ5" value="755" />
              <node concept="398BVA" id="3zhZ_DuRIQ5" role="28jJRO">
                <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIQ6" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIQ7" role="2Ry0An">
                    <property role="2Ry0Am" value="linux" />
                    <node concept="2Ry0Ak" id="3zhZ_DuRIQ8" role="2Ry0An">
                      <property role="2Ry0Am" value="fsnotifier64" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="3zhZ_DuRIQ_" role="39821P">
              <node concept="3co7Ac" id="3zhZ_DuRIQA" role="28jJR8">
                <property role="3co7Am" value="lf" />
                <property role="3cpA_W" value="true" />
              </node>
              <node concept="398BVA" id="3zhZ_DuRIQc" role="28jJRO">
                <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIQd" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIQe" role="2Ry0An">
                    <property role="2Ry0Am" value="mps.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="3zhZ_DuRIQB" role="39821P">
              <node concept="3co7Ac" id="3zhZ_DuRIQC" role="28jJR8">
                <property role="3co7Am" value="lf" />
                <property role="3cpA_W" value="true" />
              </node>
              <node concept="398BVA" id="3zhZ_DuRIQi" role="28jJRO">
                <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIQj" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIQk" role="2Ry0An">
                    <property role="2Ry0Am" value="mps64.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2HvfSZ" id="3zhZ_DuRIQD" role="39821P">
              <node concept="3LWZYq" id="3zhZ_DuRIQE" role="2HvfZ1">
                <property role="3LWZYl" value="**/fsnotifier" />
              </node>
              <node concept="3LWZYq" id="3zhZ_DuRIQF" role="2HvfZ1">
                <property role="3LWZYl" value="**/fsnotifier64" />
              </node>
              <node concept="398BVA" id="3zhZ_DuRIQo" role="2HvfZ0">
                <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIQp" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIQq" role="2Ry0An">
                    <property role="2Ry0Am" value="linux" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3_J27D" id="3zhZ_DuRIQG" role="Nbhlr">
              <node concept="3Mxwew" id="3zhZ_DuRIQH" role="3MwsjC">
                <property role="3MwjfP" value="bin" />
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="3zhZ_DuRIQI" role="39821P">
            <property role="28jJZ5" value="755" />
            <node concept="3co7Ac" id="3zhZ_DuRIQJ" role="28jJR8">
              <property role="3co7Am" value="lf" />
              <property role="3cpA_W" value="true" />
            </node>
            <node concept="398BVA" id="3zhZ_DuRIQt" role="28jJRO">
              <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
              <node concept="2Ry0Ak" id="3zhZ_DuRIQu" role="iGT6I">
                <property role="2Ry0Am" value="mps.sh" />
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="3zhZ_DuRIQK" role="Nbhlr">
            <node concept="3Mxwew" id="3zhZ_DuRIQL" role="3MwsjC">
              <property role="3MwjfP" value="DSL " />
            </node>
            <node concept="3Mxwey" id="3zhZ_DuRIQM" role="3MwsjC">
              <ref role="3Mxwex" node="3zhZ_DuRIPN" resolve="version" />
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="3zhZ_DuRIQN" role="Nbhlr">
          <node concept="3Mxwey" id="3zhZ_DuRIQO" role="3MwsjC">
            <ref role="3Mxwex" node="3zhZ_DuRILK" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="3zhZ_DuRIQP" role="3MwsjC">
            <property role="3MwjfP" value="-linux.tar.gz" />
          </node>
        </node>
      </node>
      <node concept="3981dG" id="3zhZ_DuRITk" role="39821P">
        <node concept="398223" id="3zhZ_DuRITl" role="39821P">
          <node concept="3ygNvl" id="3zhZ_DuRITm" role="39821P">
            <ref role="3ygNvj" node="3zhZ_DuRIN2" />
          </node>
          <node concept="398223" id="3zhZ_DuRITn" role="39821P">
            <node concept="3_J27D" id="3zhZ_DuRITo" role="Nbhlr">
              <node concept="3Mxwew" id="3zhZ_DuRITp" role="3MwsjC">
                <property role="3MwjfP" value="bin" />
              </node>
            </node>
            <node concept="28jJK3" id="3zhZ_DuRITq" role="39821P">
              <node concept="398BVA" id="3zhZ_DuRIQT" role="28jJRO">
                <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIQU" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIQV" role="2Ry0An">
                    <property role="2Ry0Am" value="mps.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="3zhZ_DuRITr" role="39821P">
              <node concept="398BVA" id="3zhZ_DuRIQZ" role="28jJRO">
                <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIR0" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIR1" role="2Ry0An">
                    <property role="2Ry0Am" value="mps.exe.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="3zhZ_DuRITs" role="39821P">
              <node concept="398BVA" id="3zhZ_DuRIR5" role="28jJRO">
                <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIR6" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIR7" role="2Ry0An">
                    <property role="2Ry0Am" value="mps64.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="3zhZ_DuRITt" role="39821P">
              <node concept="398BVA" id="3zhZ_DuRIRb" role="28jJRO">
                <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIRc" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIRd" role="2Ry0An">
                    <property role="2Ry0Am" value="mps64.exe.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="398223" id="3zhZ_DuRITu" role="39821P">
              <node concept="3_J27D" id="3zhZ_DuRITv" role="Nbhlr">
                <node concept="3Mxwew" id="3zhZ_DuRITw" role="3MwsjC">
                  <property role="3MwjfP" value="win" />
                </node>
              </node>
              <node concept="2HvfSZ" id="3zhZ_DuRITx" role="39821P">
                <node concept="3LWZYq" id="3zhZ_DuRITy" role="2HvfZ1">
                  <property role="3LWZYl" value="**/*.exe" />
                </node>
                <node concept="398BVA" id="3zhZ_DuRIRh" role="2HvfZ0">
                  <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIRi" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="3zhZ_DuRIRj" role="2Ry0An">
                      <property role="2Ry0Am" value="win" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="yKbIv" id="3zhZ_DuRITz" role="39821P">
                <property role="yKbIr" value="755" />
                <node concept="2HvfSZ" id="3zhZ_DuRIT$" role="39821P">
                  <node concept="3LWZYx" id="3zhZ_DuRIT_" role="2HvfZ1">
                    <property role="3LWZYw" value="**/*.exe" />
                  </node>
                  <node concept="398BVA" id="3zhZ_DuRIRn" role="2HvfZ0">
                    <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                    <node concept="2Ry0Ak" id="3zhZ_DuRIRo" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="3zhZ_DuRIRp" role="2Ry0An">
                        <property role="2Ry0Am" value="win" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="398223" id="3zhZ_DuRITA" role="39821P">
              <node concept="2HvfSZ" id="3zhZ_DuRITB" role="39821P">
                <node concept="3LWZYq" id="3zhZ_DuRITC" role="2HvfZ1">
                  <property role="3LWZYl" value="**/fsnotifier" />
                </node>
                <node concept="3LWZYq" id="3zhZ_DuRITD" role="2HvfZ1">
                  <property role="3LWZYl" value="**/fsnotifier64" />
                </node>
                <node concept="398BVA" id="3zhZ_DuRIRt" role="2HvfZ0">
                  <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIRu" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="3zhZ_DuRIRv" role="2Ry0An">
                      <property role="2Ry0Am" value="linux" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="3zhZ_DuRITE" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="3zhZ_DuRIR$" role="28jJRO">
                  <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIR_" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="3zhZ_DuRIRA" role="2Ry0An">
                      <property role="2Ry0Am" value="linux" />
                      <node concept="2Ry0Ak" id="3zhZ_DuRIRB" role="2Ry0An">
                        <property role="2Ry0Am" value="fsnotifier" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="3zhZ_DuRITF" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="3zhZ_DuRIRG" role="28jJRO">
                  <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIRH" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="3zhZ_DuRIRI" role="2Ry0An">
                      <property role="2Ry0Am" value="linux" />
                      <node concept="2Ry0Ak" id="3zhZ_DuRIRJ" role="2Ry0An">
                        <property role="2Ry0Am" value="fsnotifier64" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3_J27D" id="3zhZ_DuRITG" role="Nbhlr">
                <node concept="3Mxwew" id="3zhZ_DuRITH" role="3MwsjC">
                  <property role="3MwjfP" value="linux" />
                </node>
              </node>
            </node>
            <node concept="398223" id="3zhZ_DuRITN" role="39821P">
              <node concept="28jJK3" id="3zhZ_DuRITO" role="39821P">
                <node concept="398BVA" id="3zhZ_DuRIRU" role="28jJRO">
                  <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIRV" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="3zhZ_DuRIRW" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="3zhZ_DuRIRX" role="2Ry0An">
                        <property role="2Ry0Am" value="libbreakgen.jnilib" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="3zhZ_DuRITP" role="39821P">
                <node concept="398BVA" id="3zhZ_DuRIS2" role="28jJRO">
                  <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIS3" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="3zhZ_DuRIS4" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="3zhZ_DuRIS5" role="2Ry0An">
                        <property role="2Ry0Am" value="libbreakgen64.jnilib" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="3zhZ_DuRITQ" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="3zhZ_DuRISa" role="28jJRO">
                  <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRISb" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="3zhZ_DuRISc" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="3zhZ_DuRISd" role="2Ry0An">
                        <property role="2Ry0Am" value="restarter" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="3zhZ_DuRITR" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="3zhZ_DuRISi" role="28jJRO">
                  <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRISj" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="3zhZ_DuRISk" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="3zhZ_DuRISl" role="2Ry0An">
                        <property role="2Ry0Am" value="fsnotifier" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="3zhZ_DuRITS" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="3zhZ_DuRISq" role="28jJRO">
                  <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRISr" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="3zhZ_DuRISs" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="3zhZ_DuRISt" role="2Ry0An">
                        <property role="2Ry0Am" value="printenv.py" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="398223" id="3zhZ_DuRITT" role="39821P">
                <node concept="3_J27D" id="3zhZ_DuRITU" role="Nbhlr">
                  <node concept="3Mxwew" id="3zhZ_DuRITV" role="3MwsjC">
                    <property role="3MwjfP" value="Contents" />
                  </node>
                </node>
                <node concept="398223" id="3zhZ_DuRITW" role="39821P">
                  <node concept="3_J27D" id="3zhZ_DuRITX" role="Nbhlr">
                    <node concept="3Mxwew" id="3zhZ_DuRITY" role="3MwsjC">
                      <property role="3MwjfP" value="Resources" />
                    </node>
                  </node>
                  <node concept="28jJK3" id="3zhZ_DuRITZ" role="39821P">
                    <node concept="398BVA" id="3zhZ_DuRIS$" role="28jJRO">
                      <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                      <node concept="2Ry0Ak" id="3zhZ_DuRIS_" role="iGT6I">
                        <property role="2Ry0Am" value="bin" />
                        <node concept="2Ry0Ak" id="3zhZ_DuRISA" role="2Ry0An">
                          <property role="2Ry0Am" value="mac" />
                          <node concept="2Ry0Ak" id="3zhZ_DuRISB" role="2Ry0An">
                            <property role="2Ry0Am" value="Contents" />
                            <node concept="2Ry0Ak" id="3zhZ_DuRISC" role="2Ry0An">
                              <property role="2Ry0Am" value="Resources" />
                              <node concept="2Ry0Ak" id="3zhZ_DuRISD" role="2Ry0An">
                                <property role="2Ry0Am" value="mps.icns" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="398223" id="3zhZ_DuRIU0" role="39821P">
                  <node concept="3_J27D" id="3zhZ_DuRIU1" role="Nbhlr">
                    <node concept="3Mxwew" id="3zhZ_DuRIU2" role="3MwsjC">
                      <property role="3MwjfP" value="MacOS" />
                    </node>
                  </node>
                  <node concept="28jJK3" id="3zhZ_DuRIU3" role="39821P">
                    <property role="28jJZ5" value="755" />
                    <node concept="398BVA" id="3zhZ_DuRISK" role="28jJRO">
                      <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                      <node concept="2Ry0Ak" id="3zhZ_DuRISL" role="iGT6I">
                        <property role="2Ry0Am" value="bin" />
                        <node concept="2Ry0Ak" id="3zhZ_DuRISM" role="2Ry0An">
                          <property role="2Ry0Am" value="mac" />
                          <node concept="2Ry0Ak" id="3zhZ_DuRISN" role="2Ry0An">
                            <property role="2Ry0Am" value="Contents" />
                            <node concept="2Ry0Ak" id="3zhZ_DuRISO" role="2Ry0An">
                              <property role="2Ry0Am" value="MacOS" />
                              <node concept="2Ry0Ak" id="3zhZ_DuRISP" role="2Ry0An">
                                <property role="2Ry0Am" value="mps" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="28jJK3" id="3zhZ_DuRIU4" role="39821P">
                    <property role="28jJZ5" value="644" />
                    <node concept="398BVA" id="3zhZ_DuRISW" role="28jJRO">
                      <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                      <node concept="2Ry0Ak" id="3zhZ_DuRISX" role="iGT6I">
                        <property role="2Ry0Am" value="bin" />
                        <node concept="2Ry0Ak" id="3zhZ_DuRISY" role="2Ry0An">
                          <property role="2Ry0Am" value="mac" />
                          <node concept="2Ry0Ak" id="3zhZ_DuRISZ" role="2Ry0An">
                            <property role="2Ry0Am" value="Contents" />
                            <node concept="2Ry0Ak" id="3zhZ_DuRIT0" role="2Ry0An">
                              <property role="2Ry0Am" value="MacOS" />
                              <node concept="2Ry0Ak" id="3zhZ_DuRIT1" role="2Ry0An">
                                <property role="2Ry0Am" value="idea_appLauncher" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="28jJK3" id="3zhZ_DuRIU5" role="39821P">
                  <node concept="398BVA" id="3zhZ_DuRIT7" role="28jJRO">
                    <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                    <node concept="2Ry0Ak" id="3zhZ_DuRIT8" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="3zhZ_DuRIT9" role="2Ry0An">
                        <property role="2Ry0Am" value="mac" />
                        <node concept="2Ry0Ak" id="3zhZ_DuRITa" role="2Ry0An">
                          <property role="2Ry0Am" value="Contents" />
                          <node concept="2Ry0Ak" id="3zhZ_DuRITb" role="2Ry0An">
                            <property role="2Ry0Am" value="Info.plist" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3_J27D" id="3zhZ_DuRIU6" role="Nbhlr">
                <node concept="3Mxwew" id="3zhZ_DuRIU7" role="3MwsjC">
                  <property role="3MwjfP" value="mac" />
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="3zhZ_DuRIU8" role="39821P">
            <property role="28jJZ5" value="755" />
            <node concept="398BVA" id="3zhZ_DuRITe" role="28jJRO">
              <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
              <node concept="2Ry0Ak" id="3zhZ_DuRITf" role="iGT6I">
                <property role="2Ry0Am" value="mps.sh" />
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="3zhZ_DuRIU9" role="39821P">
            <property role="28jJZ5" value="755" />
            <node concept="398BVA" id="3zhZ_DuRITi" role="28jJRO">
              <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
              <node concept="2Ry0Ak" id="3zhZ_DuRITj" role="iGT6I">
                <property role="2Ry0Am" value="mps.bat" />
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="3zhZ_DuRIUa" role="Nbhlr">
            <node concept="3Mxwew" id="3zhZ_DuRIUb" role="3MwsjC">
              <property role="3MwjfP" value="DSL " />
            </node>
            <node concept="3Mxwey" id="3zhZ_DuRIUc" role="3MwsjC">
              <ref role="3Mxwex" node="3zhZ_DuRIPN" resolve="version" />
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="3zhZ_DuRIUd" role="Nbhlr">
          <node concept="3Mxwey" id="3zhZ_DuRIUe" role="3MwsjC">
            <ref role="3Mxwex" node="3zhZ_DuRILK" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="3zhZ_DuRIUf" role="3MwsjC">
            <property role="3MwjfP" value=".zip" />
          </node>
        </node>
      </node>
      <node concept="3981dG" id="3zhZ_DuRIVQ" role="39821P">
        <node concept="3_J27D" id="3zhZ_DuRIVR" role="Nbhlr">
          <node concept="3Mxwey" id="3zhZ_DuRIVS" role="3MwsjC">
            <ref role="3Mxwex" node="3zhZ_DuRILK" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="3zhZ_DuRIVT" role="3MwsjC">
            <property role="3MwjfP" value="-macos.zip" />
          </node>
        </node>
        <node concept="398223" id="3zhZ_DuRIVU" role="39821P">
          <node concept="398223" id="3zhZ_DuRIVV" role="39821P">
            <node concept="3ygNvl" id="3zhZ_DuRIVW" role="39821P">
              <ref role="3ygNvj" node="3zhZ_DuRIN2" />
            </node>
            <node concept="3_J27D" id="3zhZ_DuRIVX" role="Nbhlr">
              <node concept="3Mxwew" id="3zhZ_DuRIVY" role="3MwsjC">
                <property role="3MwjfP" value="Contents" />
              </node>
            </node>
            <node concept="398223" id="3zhZ_DuRIVZ" role="39821P">
              <node concept="3_J27D" id="3zhZ_DuRIW0" role="Nbhlr">
                <node concept="3Mxwew" id="3zhZ_DuRIW1" role="3MwsjC">
                  <property role="3MwjfP" value="Resources" />
                </node>
              </node>
              <node concept="28jJK3" id="3zhZ_DuRIW2" role="39821P">
                <node concept="398BVA" id="3zhZ_DuRIUm" role="28jJRO">
                  <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIUn" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="3zhZ_DuRIUo" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="3zhZ_DuRIUp" role="2Ry0An">
                        <property role="2Ry0Am" value="Contents" />
                        <node concept="2Ry0Ak" id="3zhZ_DuRIUq" role="2Ry0An">
                          <property role="2Ry0Am" value="Resources" />
                          <node concept="2Ry0Ak" id="3zhZ_DuRIUr" role="2Ry0An">
                            <property role="2Ry0Am" value="mps.icns" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="398223" id="3zhZ_DuRIW3" role="39821P">
              <node concept="28jJK3" id="3zhZ_DuRIW4" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="3zhZ_DuRIUy" role="28jJRO">
                  <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIUz" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="3zhZ_DuRIU$" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="3zhZ_DuRIU_" role="2Ry0An">
                        <property role="2Ry0Am" value="Contents" />
                        <node concept="2Ry0Ak" id="3zhZ_DuRIUA" role="2Ry0An">
                          <property role="2Ry0Am" value="MacOS" />
                          <node concept="2Ry0Ak" id="3zhZ_DuRIUB" role="2Ry0An">
                            <property role="2Ry0Am" value="mps" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3_J27D" id="3zhZ_DuRIW5" role="Nbhlr">
                <node concept="3Mxwew" id="3zhZ_DuRIW6" role="3MwsjC">
                  <property role="3MwjfP" value="MacOS" />
                </node>
              </node>
              <node concept="28jJK3" id="3zhZ_DuRIW7" role="39821P">
                <property role="28jJZ5" value="644" />
                <node concept="398BVA" id="3zhZ_DuRIUI" role="28jJRO">
                  <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIUJ" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="3zhZ_DuRIUK" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="3zhZ_DuRIUL" role="2Ry0An">
                        <property role="2Ry0Am" value="Contents" />
                        <node concept="2Ry0Ak" id="3zhZ_DuRIUM" role="2Ry0An">
                          <property role="2Ry0Am" value="MacOS" />
                          <node concept="2Ry0Ak" id="3zhZ_DuRIUN" role="2Ry0An">
                            <property role="2Ry0Am" value="idea_appLauncher" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="3zhZ_DuRIW8" role="39821P">
              <node concept="398BVA" id="3zhZ_DuRIUT" role="28jJRO">
                <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIUU" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIUV" role="2Ry0An">
                    <property role="2Ry0Am" value="mac" />
                    <node concept="2Ry0Ak" id="3zhZ_DuRIUW" role="2Ry0An">
                      <property role="2Ry0Am" value="Contents" />
                      <node concept="2Ry0Ak" id="3zhZ_DuRIUX" role="2Ry0An">
                        <property role="2Ry0Am" value="Info.plist" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="398223" id="3zhZ_DuRIW9" role="39821P">
              <node concept="3_J27D" id="3zhZ_DuRIWa" role="Nbhlr">
                <node concept="3Mxwew" id="3zhZ_DuRIWb" role="3MwsjC">
                  <property role="3MwjfP" value="bin" />
                </node>
              </node>
              <node concept="28jJK3" id="3zhZ_DuRIWc" role="39821P">
                <node concept="398BVA" id="3zhZ_DuRIV2" role="28jJRO">
                  <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIV3" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="3zhZ_DuRIV4" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="3zhZ_DuRIV5" role="2Ry0An">
                        <property role="2Ry0Am" value="libbreakgen.jnilib" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="3zhZ_DuRIWd" role="39821P">
                <node concept="398BVA" id="3zhZ_DuRIVa" role="28jJRO">
                  <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIVb" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="3zhZ_DuRIVc" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="3zhZ_DuRIVd" role="2Ry0An">
                        <property role="2Ry0Am" value="libbreakgen64.jnilib" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="3zhZ_DuRIWe" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="3zhZ_DuRIVi" role="28jJRO">
                  <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIVj" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="3zhZ_DuRIVk" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="3zhZ_DuRIVl" role="2Ry0An">
                        <property role="2Ry0Am" value="restarter" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="3zhZ_DuRIWf" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="3zhZ_DuRIVq" role="28jJRO">
                  <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIVr" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="3zhZ_DuRIVs" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="3zhZ_DuRIVt" role="2Ry0An">
                        <property role="2Ry0Am" value="fsnotifier" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="3zhZ_DuRIWg" role="39821P">
                <node concept="3co7Ac" id="3zhZ_DuRIWh" role="28jJR8">
                  <property role="3co7Am" value="lf" />
                  <property role="3cpA_W" value="true" />
                </node>
                <node concept="398BVA" id="3zhZ_DuRIVx" role="28jJRO">
                  <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIVy" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="3zhZ_DuRIVz" role="2Ry0An">
                      <property role="2Ry0Am" value="mps.vmoptions" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="3zhZ_DuRIWi" role="39821P">
                <node concept="3co7Ac" id="3zhZ_DuRIWj" role="28jJR8">
                  <property role="3co7Am" value="lf" />
                  <property role="3cpA_W" value="true" />
                </node>
                <node concept="398BVA" id="3zhZ_DuRIVB" role="28jJRO">
                  <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIVC" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="3zhZ_DuRIVD" role="2Ry0An">
                      <property role="2Ry0Am" value="mps64.vmoptions" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="3zhZ_DuRIWk" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="3co7Ac" id="3zhZ_DuRIWl" role="28jJR8">
                  <property role="3co7Am" value="lf" />
                  <property role="3cpA_W" value="true" />
                </node>
                <node concept="398BVA" id="3zhZ_DuRIVI" role="28jJRO">
                  <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="3zhZ_DuRIVJ" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="3zhZ_DuRIVK" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="3zhZ_DuRIVL" role="2Ry0An">
                        <property role="2Ry0Am" value="printenv.py" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="3zhZ_DuRIWm" role="39821P">
              <property role="28jJZ5" value="755" />
              <node concept="3co7Ac" id="3zhZ_DuRIWn" role="28jJR8">
                <property role="3co7Am" value="lf" />
                <property role="3cpA_W" value="true" />
              </node>
              <node concept="398BVA" id="3zhZ_DuRIVO" role="28jJRO">
                <ref role="398BVh" node="3zhZ_DuRIPM" resolve="mps_home" />
                <node concept="2Ry0Ak" id="3zhZ_DuRIVP" role="iGT6I">
                  <property role="2Ry0Am" value="mps.sh" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="3zhZ_DuRIWo" role="Nbhlr">
            <node concept="3Mxwew" id="3zhZ_DuRIWp" role="3MwsjC">
              <property role="3MwjfP" value="DSL " />
            </node>
            <node concept="3Mxwey" id="3zhZ_DuRIWq" role="3MwsjC">
              <ref role="3Mxwex" node="3zhZ_DuRIPN" resolve="version" />
            </node>
            <node concept="3Mxwew" id="3zhZ_DuRIWr" role="3MwsjC">
              <property role="3MwjfP" value=".app" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="3zhZ_DuRIPM" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="3zhZ_DuRQoA" role="398pKh">
        <node concept="2Ry0Ak" id="3zhZ_DuRQoF" role="iGT6I">
          <property role="2Ry0Am" value="generic_MPS" />
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="3zhZ_DuRIPN" role="1l3spd">
      <property role="TrG5h" value="version" />
      <node concept="aVJcg" id="3zhZ_DuRIPO" role="aVJcv">
        <node concept="NbPM2" id="3zhZ_DuRIPP" role="aVJcq">
          <node concept="3Mxwew" id="3zhZ_DuRIPQ" role="3MwsjC">
            <property role="3MwjfP" value="2017.3" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

