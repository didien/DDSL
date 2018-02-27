<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7c0cb74c-fc18-48ae-a7cb-a42e57cfe00e(DSL.build)">
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
  <node concept="1l3spW" id="55vGwhCTz74">
    <property role="TrG5h" value="DSL" />
    <property role="2DA0ip" value="../../" />
    <node concept="10PD9b" id="55vGwhCTz75" role="10PD9s" />
    <node concept="3b7kt6" id="55vGwhCTz76" role="10PD9s" />
    <node concept="1zClus" id="55vGwhCTz7j" role="3989C9">
      <property role="2OjLBK" value="0" />
      <property role="TrG5h" value="MPS" />
      <property role="2OjLBL" value="1" />
      <node concept="55IIr" id="55vGwhCTz7k" role="3vi$VU">
        <node concept="2Ry0Ak" id="55vGwhCTz7l" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="55vGwhCTz7m" role="2Ry0An">
            <property role="2Ry0Am" value="logo.png" />
          </node>
        </node>
      </node>
      <node concept="3_J27D" id="55vGwhCTz7n" role="2EteIg">
        <node concept="3Mxwey" id="55vGwhCTz7o" role="3MwsjC">
          <ref role="3Mxwex" node="55vGwhCTz79" resolve="build.number" />
        </node>
      </node>
      <node concept="55IIr" id="55vGwhCTz7p" role="2EteIi">
        <node concept="2Ry0Ak" id="55vGwhCTz7q" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="55vGwhCTz7r" role="2Ry0An">
            <property role="2Ry0Am" value="MPS16.png" />
          </node>
        </node>
      </node>
      <node concept="3_J27D" id="55vGwhCTz7s" role="2EtHGA">
        <node concept="3Mxwew" id="55vGwhCTz7t" role="3MwsjC">
          <property role="3MwjfP" value="DSL" />
        </node>
      </node>
      <node concept="3_J27D" id="55vGwhCTz7u" role="2EtHGT">
        <node concept="3Mxwew" id="55vGwhCTz7v" role="3MwsjC">
          <property role="3MwjfP" value="DSL" />
        </node>
      </node>
      <node concept="NbPM2" id="55vGwhCTz7w" role="2OjNyQ">
        <node concept="3Mxwew" id="55vGwhCTz7x" role="3MwsjC">
          <property role="3MwjfP" value="DSL" />
        </node>
      </node>
      <node concept="3_J27D" id="55vGwhCTz7y" role="HFo83">
        <node concept="3Mxwew" id="55vGwhCTz7z" role="3MwsjC">
          <property role="3MwjfP" value="002387" />
        </node>
      </node>
      <node concept="55IIr" id="55vGwhCTz7$" role="2EteIj">
        <node concept="2Ry0Ak" id="55vGwhCTz7_" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="55vGwhCTz7A" role="2Ry0An">
            <property role="2Ry0Am" value="MPS32.png" />
          </node>
        </node>
      </node>
      <node concept="3_J27D" id="55vGwhCTz7B" role="R$TG_">
        <node concept="3Mxwey" id="55vGwhCTz7C" role="3MwsjC">
          <ref role="3Mxwex" node="55vGwhCTz77" resolve="date" />
        </node>
      </node>
      <node concept="55IIr" id="55vGwhCTz7D" role="2EteIl">
        <node concept="2Ry0Ak" id="55vGwhCTz7E" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="55vGwhCTz7F" role="2Ry0An">
            <property role="2Ry0Am" value="MPS32.png" />
          </node>
        </node>
      </node>
      <node concept="55IIr" id="55vGwhCTz7G" role="2EqU2t">
        <node concept="2Ry0Ak" id="55vGwhCTz7H" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="55vGwhCTz7I" role="2Ry0An">
            <property role="2Ry0Am" value="splash.png" />
          </node>
        </node>
      </node>
      <node concept="55IIr" id="55vGwhCTz7J" role="2EqU2s">
        <node concept="2Ry0Ak" id="55vGwhCTz7K" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="55vGwhCTz7L" role="2Ry0An">
            <property role="2Ry0Am" value="about.png" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="55vGwhCTz77" role="1l3spd">
      <property role="TrG5h" value="date" />
      <node concept="hHN3E" id="55vGwhCTz78" role="aVJcv">
        <property role="hHN3Y" value="yyyyMMdd" />
      </node>
    </node>
    <node concept="2kB4xC" id="55vGwhCTz79" role="1l3spd">
      <property role="TrG5h" value="build.number" />
      <node concept="aVJcg" id="55vGwhCTz7a" role="aVJcv">
        <node concept="NbPM2" id="55vGwhCTz7b" role="aVJcq">
          <node concept="3Mxwew" id="55vGwhCTz7c" role="3MwsjC">
            <property role="3MwjfP" value="DSL-173.SNAPSHOT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="55vGwhCTz7d" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="2sgV4H" id="55vGwhCTz7e" role="1l3spa">
      <ref role="1l3spb" to="ffeo:1diLdO26mQ6" resolve="mpsStandalone" />
      <node concept="398BVA" id="55vGwhCTz7f" role="2JcizS">
        <ref role="398BVh" node="55vGwhCTz7d" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="55vGwhCTz7g" role="1l3spa">
      <ref role="1l3spb" to="ffeo:5rNMDvYzelV" resolve="mpsMakePlugin" />
      <node concept="398BVA" id="55vGwhCTz7h" role="2JcizS">
        <ref role="398BVh" node="55vGwhCTz7d" resolve="mps_home" />
        <node concept="2Ry0Ak" id="55vGwhCTz7i" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="55vGwhCTz8r" role="1l3spN">
      <node concept="3_I8Xc" id="55vGwhCTz8z" role="39821P">
        <ref role="3_I8Xa" to="ffeo:1diLdO26H79" resolve="languages" />
      </node>
      <node concept="3_I8Xc" id="55vGwhCTz8$" role="39821P">
        <ref role="3_I8Xa" to="ffeo:1aRUp2KiMC$" resolve="license" />
      </node>
      <node concept="398223" id="55vGwhCTz8_" role="39821P">
        <node concept="3_J27D" id="55vGwhCTz8A" role="Nbhlr">
          <node concept="3Mxwew" id="55vGwhCTz8B" role="3MwsjC">
            <property role="3MwjfP" value="bin" />
          </node>
        </node>
        <node concept="3ygNvl" id="55vGwhCTz8C" role="39821P">
          <ref role="3ygNvj" to="ffeo:3cxBkkDa4_O" resolve="bin" />
          <node concept="3LWZYx" id="55vGwhCTz8D" role="1juEy9">
            <property role="3LWZYw" value="log.xml" />
          </node>
          <node concept="3LWZYx" id="55vGwhCTz8E" role="1juEy9">
            <property role="3LWZYw" value="log4j.dtd" />
          </node>
        </node>
        <node concept="28jJK3" id="55vGwhCTz8F" role="39821P">
          <node concept="1688n2" id="55vGwhCTz8G" role="28jJR8">
            <property role="1688n6" value="g" />
            <property role="1688n3" value="\.MPS(\w+)" />
            <node concept="NbPM2" id="55vGwhCTz8H" role="1688n0">
              <node concept="3Mxwew" id="55vGwhCTz8I" role="3MwsjC">
                <property role="3MwjfP" value="\." />
              </node>
              <node concept="3Mxwey" id="55vGwhCTz8J" role="3MwsjC">
                <ref role="3Mxwex" node="55vGwhCTz79" resolve="build.number" />
              </node>
            </node>
          </node>
          <node concept="398BVA" id="55vGwhCTz8v" role="28jJRO">
            <ref role="398BVh" node="55vGwhCTz7d" resolve="mps_home" />
            <node concept="2Ry0Ak" id="55vGwhCTz8w" role="iGT6I">
              <property role="2Ry0Am" value="bin" />
              <node concept="2Ry0Ak" id="55vGwhCTz8x" role="2Ry0An">
                <property role="2Ry0Am" value="idea.properties" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="398223" id="55vGwhCTz8K" role="39821P">
        <node concept="3_J27D" id="55vGwhCTz8L" role="Nbhlr">
          <node concept="3Mxwew" id="55vGwhCTz8M" role="3MwsjC">
            <property role="3MwjfP" value="lib" />
          </node>
        </node>
        <node concept="3ygNvl" id="55vGwhCTz8N" role="39821P">
          <ref role="3ygNvj" to="ffeo:1diLdO26H7f" resolve="lib" />
          <node concept="3LWZYq" id="55vGwhCTz8O" role="1juEy9">
            <property role="3LWZYl" value="MPS-src.zip" />
          </node>
          <node concept="3LWZYq" id="55vGwhCTz8P" role="1juEy9">
            <property role="3LWZYl" value="branding.jar" />
          </node>
        </node>
        <node concept="3981dx" id="55vGwhCTz8Q" role="39821P">
          <node concept="3_J27D" id="55vGwhCTz8R" role="Nbhlr">
            <node concept="3Mxwew" id="55vGwhCTz8S" role="3MwsjC">
              <property role="3MwjfP" value="branding.jar" />
            </node>
          </node>
          <node concept="1zDrgl" id="55vGwhCTz8T" role="39821P">
            <ref role="1zDrgn" node="55vGwhCTz7j" resolve="DSL 1.0" />
          </node>
        </node>
      </node>
      <node concept="398223" id="55vGwhCTz8U" role="39821P">
        <node concept="3_I8Xc" id="55vGwhCTz8V" role="39821P">
          <ref role="3_I8Xa" to="ffeo:1diLdO26H7T" resolve="cvsIntegration" />
        </node>
        <node concept="3_I8Xc" id="55vGwhCTz8W" role="39821P">
          <ref role="3_I8Xa" to="ffeo:3nGzrDEfcNJ" resolve="svn4idea" />
        </node>
        <node concept="3_I8Xc" id="55vGwhCTz8X" role="39821P">
          <ref role="3_I8Xa" to="ffeo:I6XuqH2zYV" resolve="git4idea" />
        </node>
        <node concept="3_I8Xc" id="55vGwhCTz8Y" role="39821P">
          <ref role="3_I8Xa" to="ffeo:ymnOULBdbM" resolve="mps-core" />
        </node>
        <node concept="m$_wl" id="55vGwhCTz8Z" role="39821P">
          <ref role="m_rDy" node="55vGwhCTz8i" resolve="DSL" />
          <node concept="28jJK3" id="55vGwhCV1Kj" role="39821P">
            <node concept="55IIr" id="55vGwhCV1Kk" role="28jJRO">
              <node concept="2Ry0Ak" id="55vGwhCV1Lw" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCV1L_" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="55vGwhCV1LE" role="2Ry0An">
                    <property role="2Ry0Am" value="jackson-annotations-2.8.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="55vGwhCV2cX" role="39821P">
            <node concept="55IIr" id="55vGwhCV2cY" role="28jJRO">
              <node concept="2Ry0Ak" id="55vGwhCV2cZ" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCV2d0" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="55vGwhCV2mA" role="2Ry0An">
                    <property role="2Ry0Am" value="grafana-api-java-client-1.0.3.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="55vGwhCV2ei" role="39821P">
            <node concept="55IIr" id="55vGwhCV2ej" role="28jJRO">
              <node concept="2Ry0Ak" id="55vGwhCV2ek" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCV2el" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="55vGwhCV2nI" role="2Ry0An">
                    <property role="2Ry0Am" value="converter-jackson-2.2.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="55vGwhCV2fG" role="39821P">
            <node concept="55IIr" id="55vGwhCV2fH" role="28jJRO">
              <node concept="2Ry0Ak" id="55vGwhCV2fI" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCV2fJ" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="55vGwhCV2oQ" role="2Ry0An">
                    <property role="2Ry0Am" value="jackson-core-2.8.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="55vGwhCV2hb" role="39821P">
            <node concept="55IIr" id="55vGwhCV2hc" role="28jJRO">
              <node concept="2Ry0Ak" id="55vGwhCV2hd" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCV2he" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="55vGwhCV2pY" role="2Ry0An">
                    <property role="2Ry0Am" value="jackson-databind-2.8.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="55vGwhCV2iJ" role="39821P">
            <node concept="55IIr" id="55vGwhCV2iK" role="28jJRO">
              <node concept="2Ry0Ak" id="55vGwhCV2iL" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCV2iM" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="55vGwhCV2r6" role="2Ry0An">
                    <property role="2Ry0Am" value="retrofit-2.2.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="55vGwhCV2uU" role="39821P">
            <node concept="55IIr" id="55vGwhCV2uW" role="28jJRO">
              <node concept="2Ry0Ak" id="55vGwhCV2wB" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCV2wG" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="55vGwhCV2Yu" role="2Ry0An">
                    <property role="2Ry0Am" value="logging-interceptor-3.9.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="55vGwhCV2NB" role="39821P">
            <node concept="55IIr" id="55vGwhCV2NC" role="28jJRO">
              <node concept="2Ry0Ak" id="55vGwhCV2ND" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCV2NE" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="55vGwhCV2ZA" role="2Ry0An">
                    <property role="2Ry0Am" value="moshi-1.4.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="55vGwhCV2Pq" role="39821P">
            <node concept="55IIr" id="55vGwhCV2Pr" role="28jJRO">
              <node concept="2Ry0Ak" id="55vGwhCV2Ps" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCV2Pt" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="55vGwhCV30I" role="2Ry0An">
                    <property role="2Ry0Am" value="okio-1.13.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="55vGwhCV2Ri" role="39821P">
            <node concept="55IIr" id="55vGwhCV2Rj" role="28jJRO">
              <node concept="2Ry0Ak" id="55vGwhCV2Rk" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCV2Rl" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="55vGwhCV31Q" role="2Ry0An">
                    <property role="2Ry0Am" value="okhttp-3.9.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="55vGwhCV2S9" role="39821P">
            <node concept="55IIr" id="55vGwhCV2Sa" role="28jJRO">
              <node concept="2Ry0Ak" id="55vGwhCV2Sb" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCV2Sc" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="55vGwhCV32Y" role="2Ry0An">
                    <property role="2Ry0Am" value="retrofit-2.3.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="55vGwhCV2Ub" role="39821P">
            <node concept="55IIr" id="55vGwhCV2Uc" role="28jJRO">
              <node concept="2Ry0Ak" id="55vGwhCV2Ud" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCV2Ue" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="55vGwhCV346" role="2Ry0An">
                    <property role="2Ry0Am" value="influxdb-java-2.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="55vGwhCV2Wi" role="39821P">
            <node concept="55IIr" id="55vGwhCV2Wj" role="28jJRO">
              <node concept="2Ry0Ak" id="55vGwhCV2Wk" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCV2Wl" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="55vGwhCV35e" role="2Ry0An">
                    <property role="2Ry0Am" value="converter-moshi-2.3.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="55vGwhCV3aF" role="39821P">
            <node concept="55IIr" id="55vGwhCV3aH" role="28jJRO">
              <node concept="2Ry0Ak" id="55vGwhCV3cV" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCV3d0" role="2Ry0An">
                  <property role="2Ry0Am" value="exp4j" />
                  <node concept="2Ry0Ak" id="55vGwhCV3d5" role="2Ry0An">
                    <property role="2Ry0Am" value="exp4j-0.4.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="55vGwhCTz90" role="Nbhlr">
          <node concept="3Mxwew" id="55vGwhCTz91" role="3MwsjC">
            <property role="3MwjfP" value="plugins" />
          </node>
        </node>
      </node>
      <node concept="1TblL5" id="55vGwhCTz92" role="39821P">
        <node concept="3_J27D" id="55vGwhCTz93" role="1TblL3">
          <node concept="3Mxwew" id="55vGwhCTz94" role="3MwsjC">
            <property role="3MwjfP" value="build.number" />
          </node>
        </node>
        <node concept="1TblLo" id="55vGwhCTz95" role="1TblLl">
          <property role="1TblLn" value="build.number" />
          <node concept="NbPM2" id="55vGwhCTz96" role="1TblLm">
            <node concept="3Mxwey" id="55vGwhCTz97" role="3MwsjC">
              <ref role="3Mxwex" node="55vGwhCTz79" resolve="build.number" />
            </node>
          </node>
        </node>
        <node concept="1TblLo" id="55vGwhCTz98" role="1TblLl">
          <property role="1TblLn" value="date" />
          <node concept="NbPM2" id="55vGwhCTz99" role="1TblLm">
            <node concept="3Mxwey" id="55vGwhCTz9a" role="3MwsjC">
              <ref role="3Mxwex" node="55vGwhCTz77" resolve="date" />
            </node>
          </node>
        </node>
        <node concept="1TblLo" id="55vGwhCTz9b" role="1TblLl">
          <property role="1TblLn" value="version" />
          <node concept="NbPM2" id="55vGwhCTz9c" role="1TblLm">
            <node concept="3Mxwew" id="55vGwhCTz9d" role="3MwsjC">
              <property role="3MwjfP" value="1.0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="55vGwhCTz8i" role="3989C9">
      <property role="m$_wk" value="DSL" />
      <node concept="3_J27D" id="55vGwhCTz8j" role="m$_yQ">
        <node concept="3Mxwew" id="55vGwhCTz8k" role="3MwsjC">
          <property role="3MwjfP" value="DSL" />
        </node>
      </node>
      <node concept="3_J27D" id="55vGwhCTz8l" role="m$_w8">
        <node concept="3Mxwew" id="55vGwhCTz8m" role="3MwsjC">
          <property role="3MwjfP" value="1.0" />
        </node>
      </node>
      <node concept="m$f5U" id="55vGwhCTz8n" role="m$_yh">
        <ref role="m$f5T" node="55vGwhCTz8h" resolve="DSL" />
      </node>
      <node concept="m$_yC" id="55vGwhCTz8o" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="3_J27D" id="55vGwhCTz8p" role="m_cZH">
        <node concept="3Mxwew" id="55vGwhCTz8q" role="3MwsjC">
          <property role="3MwjfP" value="DSL" />
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="55vGwhCTz8h" role="3989C9">
      <property role="TrG5h" value="DSL" />
      <node concept="1E1JtA" id="55vGwhCTz7S" role="2G$12L">
        <property role="BnDLt" value="false" />
        <property role="TrG5h" value="SensorSimulationLanguage.runtime" />
        <property role="3LESm3" value="7b38f0f5-2f16-4dc5-9809-d131d36eb0bf" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="55vGwhCTz7M" role="3LF7KH">
          <node concept="2Ry0Ak" id="55vGwhCTz7N" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="55vGwhCTz7O" role="2Ry0An">
              <property role="2Ry0Am" value="SensorSimulationLanguage" />
              <node concept="2Ry0Ak" id="55vGwhCTz7P" role="2Ry0An">
                <property role="2Ry0Am" value="runtime" />
                <node concept="2Ry0Ak" id="55vGwhCTz7Q" role="2Ry0An">
                  <property role="2Ry0Am" value="SensorSimulationLanguage.runtime.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCTz9e" role="3bR37C">
          <node concept="3bR9La" id="55vGwhCTz9f" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCTz9g" role="3bR37C">
          <node concept="3bR9La" id="55vGwhCTz9h" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L0h" resolve="jetbrains.mps.baseLanguage.collections" />
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCTz9i" role="3bR37C">
          <node concept="3bR9La" id="55vGwhCTz9j" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L0C" resolve="collections.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCTzlJ" role="3bR37C">
          <node concept="3bR9La" id="55vGwhCTzlK" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="55vGwhCTz84" resolve="InfluxDB" />
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCTzlL" role="3bR37C">
          <node concept="3bR9La" id="55vGwhCTzlM" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="55vGwhCTz8g" resolve="exp4j" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="55vGwhCTz7Y" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="Grafana" />
        <property role="3LESm3" value="d102dc8e-32ba-4d10-8f95-be5a142b6537" />
        <property role="2GAjPV" value="true" />
        <node concept="55IIr" id="55vGwhCTz7T" role="3LF7KH">
          <node concept="2Ry0Ak" id="55vGwhCTz7U" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="55vGwhCTz7V" role="2Ry0An">
              <property role="2Ry0Am" value="Grafana" />
              <node concept="2Ry0Ak" id="55vGwhCTz7W" role="2Ry0An">
                <property role="2Ry0Am" value="Grafana.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCTz9p" role="3bR37C">
          <node concept="3bR9La" id="55vGwhCTz9q" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCTz9r" role="3bR37C">
          <node concept="3bR9La" id="55vGwhCTz9s" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCU5KC" role="3bR37C">
          <node concept="1BurEX" id="55vGwhCU5KD" role="1SiIV1">
            <node concept="55IIr" id="55vGwhCU5K$" role="1BurEY">
              <node concept="2Ry0Ak" id="55vGwhCU5K_" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCU5KA" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="55vGwhCU5KB" role="2Ry0An">
                    <property role="2Ry0Am" value="jackson-annotations-2.8.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCU5KI" role="3bR37C">
          <node concept="1BurEX" id="55vGwhCU5KJ" role="1SiIV1">
            <node concept="55IIr" id="55vGwhCU5KE" role="1BurEY">
              <node concept="2Ry0Ak" id="55vGwhCU5KF" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCU5KG" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="55vGwhCU5KH" role="2Ry0An">
                    <property role="2Ry0Am" value="grafana-api-java-client-1.0.3.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCU5KO" role="3bR37C">
          <node concept="1BurEX" id="55vGwhCU5KP" role="1SiIV1">
            <node concept="55IIr" id="55vGwhCU5KK" role="1BurEY">
              <node concept="2Ry0Ak" id="55vGwhCU5KL" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCU5KM" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="55vGwhCU5KN" role="2Ry0An">
                    <property role="2Ry0Am" value="converter-jackson-2.2.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCU5KU" role="3bR37C">
          <node concept="1BurEX" id="55vGwhCU5KV" role="1SiIV1">
            <node concept="55IIr" id="55vGwhCU5KQ" role="1BurEY">
              <node concept="2Ry0Ak" id="55vGwhCU5KR" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCU5KS" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="55vGwhCU5KT" role="2Ry0An">
                    <property role="2Ry0Am" value="jackson-core-2.8.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCU5L0" role="3bR37C">
          <node concept="1BurEX" id="55vGwhCU5L1" role="1SiIV1">
            <node concept="55IIr" id="55vGwhCU5KW" role="1BurEY">
              <node concept="2Ry0Ak" id="55vGwhCU5KX" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCU5KY" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="55vGwhCU5KZ" role="2Ry0An">
                    <property role="2Ry0Am" value="jackson-databind-2.8.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCU5L6" role="3bR37C">
          <node concept="1BurEX" id="55vGwhCU5L7" role="1SiIV1">
            <node concept="55IIr" id="55vGwhCU5L2" role="1BurEY">
              <node concept="2Ry0Ak" id="55vGwhCU5L3" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCU5L4" role="2Ry0An">
                  <property role="2Ry0Am" value="Grafana" />
                  <node concept="2Ry0Ak" id="55vGwhCU5L5" role="2Ry0An">
                    <property role="2Ry0Am" value="retrofit-2.2.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="55vGwhCTz84" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="InfluxDB" />
        <property role="3LESm3" value="cc7fb470-7d0c-4aea-af2a-5d870ff3092f" />
        <property role="2GAjPV" value="true" />
        <node concept="55IIr" id="55vGwhCTz7Z" role="3LF7KH">
          <node concept="2Ry0Ak" id="55vGwhCTz80" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="55vGwhCTz81" role="2Ry0An">
              <property role="2Ry0Am" value="InfluxDB" />
              <node concept="2Ry0Ak" id="55vGwhCTz82" role="2Ry0An">
                <property role="2Ry0Am" value="InfluxDB.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCTza1" role="3bR37C">
          <node concept="3bR9La" id="55vGwhCTza2" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCTza3" role="3bR37C">
          <node concept="3bR9La" id="55vGwhCTza4" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCU5Lc" role="3bR37C">
          <node concept="1BurEX" id="55vGwhCU5Ld" role="1SiIV1">
            <node concept="55IIr" id="55vGwhCU5L8" role="1BurEY">
              <node concept="2Ry0Ak" id="55vGwhCU5L9" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCU5La" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="55vGwhCU5Lb" role="2Ry0An">
                    <property role="2Ry0Am" value="logging-interceptor-3.9.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCU5Li" role="3bR37C">
          <node concept="1BurEX" id="55vGwhCU5Lj" role="1SiIV1">
            <node concept="55IIr" id="55vGwhCU5Le" role="1BurEY">
              <node concept="2Ry0Ak" id="55vGwhCU5Lf" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCU5Lg" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="55vGwhCU5Lh" role="2Ry0An">
                    <property role="2Ry0Am" value="moshi-1.4.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCU5Lo" role="3bR37C">
          <node concept="1BurEX" id="55vGwhCU5Lp" role="1SiIV1">
            <node concept="55IIr" id="55vGwhCU5Lk" role="1BurEY">
              <node concept="2Ry0Ak" id="55vGwhCU5Ll" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCU5Lm" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="55vGwhCU5Ln" role="2Ry0An">
                    <property role="2Ry0Am" value="okio-1.13.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCU5Lu" role="3bR37C">
          <node concept="1BurEX" id="55vGwhCU5Lv" role="1SiIV1">
            <node concept="55IIr" id="55vGwhCU5Lq" role="1BurEY">
              <node concept="2Ry0Ak" id="55vGwhCU5Lr" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCU5Ls" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="55vGwhCU5Lt" role="2Ry0An">
                    <property role="2Ry0Am" value="okhttp-3.9.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCU5L$" role="3bR37C">
          <node concept="1BurEX" id="55vGwhCU5L_" role="1SiIV1">
            <node concept="55IIr" id="55vGwhCU5Lw" role="1BurEY">
              <node concept="2Ry0Ak" id="55vGwhCU5Lx" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCU5Ly" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="55vGwhCU5Lz" role="2Ry0An">
                    <property role="2Ry0Am" value="retrofit-2.3.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCU5LE" role="3bR37C">
          <node concept="1BurEX" id="55vGwhCU5LF" role="1SiIV1">
            <node concept="55IIr" id="55vGwhCU5LA" role="1BurEY">
              <node concept="2Ry0Ak" id="55vGwhCU5LB" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCU5LC" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="55vGwhCU5LD" role="2Ry0An">
                    <property role="2Ry0Am" value="influxdb-java-2.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCU5LK" role="3bR37C">
          <node concept="1BurEX" id="55vGwhCU5LL" role="1SiIV1">
            <node concept="55IIr" id="55vGwhCU5LG" role="1BurEY">
              <node concept="2Ry0Ak" id="55vGwhCU5LH" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCU5LI" role="2Ry0An">
                  <property role="2Ry0Am" value="InfluxDB" />
                  <node concept="2Ry0Ak" id="55vGwhCU5LJ" role="2Ry0An">
                    <property role="2Ry0Am" value="converter-moshi-2.3.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="55vGwhCTz8a" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="SensorSimulationLanguage" />
        <property role="3LESm3" value="bc16fd15-bfa2-47e7-b9c2-9f80e5b399e0" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="55vGwhCTz85" role="3LF7KH">
          <node concept="2Ry0Ak" id="55vGwhCTz86" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="55vGwhCTz87" role="2Ry0An">
              <property role="2Ry0Am" value="SensorSimulationLanguage" />
              <node concept="2Ry0Ak" id="55vGwhCTz88" role="2Ry0An">
                <property role="2Ry0Am" value="SensorSimulationLanguage.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1E0d5M" id="55vGwhCTzaJ" role="1E1XAP">
          <ref role="1E0d5P" to="ffeo:7Kfy9QB6L0C" resolve="collections.runtime" />
        </node>
        <node concept="1SiIV0" id="55vGwhCTzaK" role="3bR37C">
          <node concept="1Busua" id="55vGwhCTzaL" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:sx8XDLCp97" resolve="jetbrains.mps.execution.util" />
          </node>
        </node>
        <node concept="1yeLz9" id="55vGwhCTzaM" role="1TViLv">
          <property role="TrG5h" value="SensorSimulationLanguage#3665899325104188727" />
          <property role="3LESm3" value="41cd7ff1-0417-4274-921d-f51f242fcb12" />
          <property role="2GAjPV" value="false" />
          <node concept="1SiIV0" id="55vGwhCTzaN" role="3bR37C">
            <node concept="3bR9La" id="55vGwhCTzaO" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
            </node>
          </node>
          <node concept="1SiIV0" id="55vGwhCTzmL" role="3bR37C">
            <node concept="3bR9La" id="55vGwhCTzmM" role="1SiIV1">
              <property role="3bR36h" value="true" />
              <ref role="3bR37D" node="55vGwhCTz7S" resolve="SensorSimulationLanguage.runtime" />
            </node>
          </node>
          <node concept="1SiIV0" id="55vGwhCTzmN" role="3bR37C">
            <node concept="3bR9La" id="55vGwhCTzmO" role="1SiIV1">
              <property role="3bR36h" value="true" />
              <ref role="3bR37D" node="55vGwhCTz84" resolve="InfluxDB" />
            </node>
          </node>
          <node concept="1SiIV0" id="55vGwhCTzmP" role="3bR37C">
            <node concept="3bR9La" id="55vGwhCTzmQ" role="1SiIV1">
              <property role="3bR36h" value="true" />
              <ref role="3bR37D" node="55vGwhCTz7Y" resolve="Grafana" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCTzmI" role="3bR37C">
          <node concept="3bR9La" id="55vGwhCTzmJ" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="55vGwhCTz8g" resolve="exp4j" />
          </node>
        </node>
        <node concept="1E0d5M" id="55vGwhCTzmK" role="1E1XAP">
          <ref role="1E0d5P" node="55vGwhCTz7S" resolve="SensorSimulationLanguage.runtime" />
        </node>
      </node>
      <node concept="1E1JtA" id="55vGwhCTz8g" role="2G$12L">
        <property role="BnDLt" value="false" />
        <property role="TrG5h" value="exp4j" />
        <property role="3LESm3" value="f94783b1-6c83-46e2-a40e-86c1cdf7b0d4" />
        <property role="2GAjPV" value="true" />
        <node concept="55IIr" id="55vGwhCTz8b" role="3LF7KH">
          <node concept="2Ry0Ak" id="55vGwhCTz8c" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="55vGwhCTz8d" role="2Ry0An">
              <property role="2Ry0Am" value="exp4j" />
              <node concept="2Ry0Ak" id="55vGwhCTz8e" role="2Ry0An">
                <property role="2Ry0Am" value="exp4j.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCTzaY" role="3bR37C">
          <node concept="3bR9La" id="55vGwhCTzaZ" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCTzb0" role="3bR37C">
          <node concept="3bR9La" id="55vGwhCTzb1" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="55vGwhCU5LZ" role="3bR37C">
          <node concept="1BurEX" id="55vGwhCU5M0" role="1SiIV1">
            <node concept="55IIr" id="55vGwhCU5LV" role="1BurEY">
              <node concept="2Ry0Ak" id="55vGwhCU5LW" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="55vGwhCU5LX" role="2Ry0An">
                  <property role="2Ry0Am" value="exp4j" />
                  <node concept="2Ry0Ak" id="55vGwhCU5LY" role="2Ry0An">
                    <property role="2Ry0Am" value="exp4j-0.4.8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="55vGwhCTzb8">
    <property role="TrG5h" value="DSLDistribution" />
    <property role="turDy" value="buildDistribution.xml" />
    <property role="2DA0ip" value="../../" />
    <node concept="2sgV4H" id="55vGwhCTzb9" role="1l3spa">
      <ref role="1l3spb" node="55vGwhCTz74" resolve="DSL" />
    </node>
    <node concept="1l3spV" id="55vGwhCTzba" role="1l3spN">
      <node concept="1tmT9g" id="55vGwhCTzbS" role="39821P">
        <property role="AB_bT" value="gzip" />
        <node concept="398223" id="55vGwhCTzbT" role="39821P">
          <node concept="3ygNvl" id="55vGwhCTzbU" role="39821P">
            <ref role="3ygNvj" node="55vGwhCTz8r" />
          </node>
          <node concept="398223" id="55vGwhCTzbV" role="39821P">
            <node concept="28jJK3" id="55vGwhCTzbW" role="39821P">
              <property role="28jJZ5" value="755" />
              <node concept="398BVA" id="55vGwhCTzbm" role="28jJRO">
                <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                <node concept="2Ry0Ak" id="55vGwhCTzbn" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="55vGwhCTzbo" role="2Ry0An">
                    <property role="2Ry0Am" value="linux" />
                    <node concept="2Ry0Ak" id="55vGwhCTzbp" role="2Ry0An">
                      <property role="2Ry0Am" value="fsnotifier" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="55vGwhCTzbX" role="39821P">
              <property role="28jJZ5" value="755" />
              <node concept="398BVA" id="55vGwhCTzbu" role="28jJRO">
                <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                <node concept="2Ry0Ak" id="55vGwhCTzbv" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="55vGwhCTzbw" role="2Ry0An">
                    <property role="2Ry0Am" value="linux" />
                    <node concept="2Ry0Ak" id="55vGwhCTzbx" role="2Ry0An">
                      <property role="2Ry0Am" value="fsnotifier64" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="55vGwhCTzbY" role="39821P">
              <node concept="3co7Ac" id="55vGwhCTzbZ" role="28jJR8">
                <property role="3co7Am" value="lf" />
                <property role="3cpA_W" value="true" />
              </node>
              <node concept="398BVA" id="55vGwhCTzb_" role="28jJRO">
                <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                <node concept="2Ry0Ak" id="55vGwhCTzbA" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="55vGwhCTzbB" role="2Ry0An">
                    <property role="2Ry0Am" value="mps.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="55vGwhCTzc0" role="39821P">
              <node concept="3co7Ac" id="55vGwhCTzc1" role="28jJR8">
                <property role="3co7Am" value="lf" />
                <property role="3cpA_W" value="true" />
              </node>
              <node concept="398BVA" id="55vGwhCTzbF" role="28jJRO">
                <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                <node concept="2Ry0Ak" id="55vGwhCTzbG" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="55vGwhCTzbH" role="2Ry0An">
                    <property role="2Ry0Am" value="mps64.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2HvfSZ" id="55vGwhCTzc2" role="39821P">
              <node concept="3LWZYq" id="55vGwhCTzc3" role="2HvfZ1">
                <property role="3LWZYl" value="**/fsnotifier" />
              </node>
              <node concept="3LWZYq" id="55vGwhCTzc4" role="2HvfZ1">
                <property role="3LWZYl" value="**/fsnotifier64" />
              </node>
              <node concept="398BVA" id="55vGwhCTzbL" role="2HvfZ0">
                <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                <node concept="2Ry0Ak" id="55vGwhCTzbM" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="55vGwhCTzbN" role="2Ry0An">
                    <property role="2Ry0Am" value="linux" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3_J27D" id="55vGwhCTzc5" role="Nbhlr">
              <node concept="3Mxwew" id="55vGwhCTzc6" role="3MwsjC">
                <property role="3MwjfP" value="bin" />
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="55vGwhCTzc7" role="39821P">
            <property role="28jJZ5" value="755" />
            <node concept="3co7Ac" id="55vGwhCTzc8" role="28jJR8">
              <property role="3co7Am" value="lf" />
              <property role="3cpA_W" value="true" />
            </node>
            <node concept="398BVA" id="55vGwhCTzbQ" role="28jJRO">
              <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
              <node concept="2Ry0Ak" id="55vGwhCTzbR" role="iGT6I">
                <property role="2Ry0Am" value="mps.sh" />
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="55vGwhCTzc9" role="Nbhlr">
            <node concept="3Mxwew" id="55vGwhCTzca" role="3MwsjC">
              <property role="3MwjfP" value="DSL " />
            </node>
            <node concept="3Mxwey" id="55vGwhCTzcb" role="3MwsjC">
              <ref role="3Mxwex" node="55vGwhCTzbc" resolve="version" />
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="55vGwhCTzcc" role="Nbhlr">
          <node concept="3Mxwey" id="55vGwhCTzcd" role="3MwsjC">
            <ref role="3Mxwex" node="55vGwhCTz79" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="55vGwhCTzce" role="3MwsjC">
            <property role="3MwjfP" value="-linux.tar.gz" />
          </node>
        </node>
      </node>
      <node concept="3981dG" id="55vGwhCTzeH" role="39821P">
        <node concept="398223" id="55vGwhCTzeI" role="39821P">
          <node concept="3ygNvl" id="55vGwhCTzeJ" role="39821P">
            <ref role="3ygNvj" node="55vGwhCTz8r" />
          </node>
          <node concept="398223" id="55vGwhCTzeK" role="39821P">
            <node concept="3_J27D" id="55vGwhCTzeL" role="Nbhlr">
              <node concept="3Mxwew" id="55vGwhCTzeM" role="3MwsjC">
                <property role="3MwjfP" value="bin" />
              </node>
            </node>
            <node concept="28jJK3" id="55vGwhCTzeN" role="39821P">
              <node concept="398BVA" id="55vGwhCTzci" role="28jJRO">
                <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                <node concept="2Ry0Ak" id="55vGwhCTzcj" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="55vGwhCTzck" role="2Ry0An">
                    <property role="2Ry0Am" value="mps.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="55vGwhCTzeO" role="39821P">
              <node concept="398BVA" id="55vGwhCTzco" role="28jJRO">
                <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                <node concept="2Ry0Ak" id="55vGwhCTzcp" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="55vGwhCTzcq" role="2Ry0An">
                    <property role="2Ry0Am" value="mps.exe.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="55vGwhCTzeP" role="39821P">
              <node concept="398BVA" id="55vGwhCTzcu" role="28jJRO">
                <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                <node concept="2Ry0Ak" id="55vGwhCTzcv" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="55vGwhCTzcw" role="2Ry0An">
                    <property role="2Ry0Am" value="mps64.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="55vGwhCTzeQ" role="39821P">
              <node concept="398BVA" id="55vGwhCTzc$" role="28jJRO">
                <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                <node concept="2Ry0Ak" id="55vGwhCTzc_" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="55vGwhCTzcA" role="2Ry0An">
                    <property role="2Ry0Am" value="mps64.exe.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="398223" id="55vGwhCTzeR" role="39821P">
              <node concept="3_J27D" id="55vGwhCTzeS" role="Nbhlr">
                <node concept="3Mxwew" id="55vGwhCTzeT" role="3MwsjC">
                  <property role="3MwjfP" value="win" />
                </node>
              </node>
              <node concept="2HvfSZ" id="55vGwhCTzeU" role="39821P">
                <node concept="3LWZYq" id="55vGwhCTzeV" role="2HvfZ1">
                  <property role="3LWZYl" value="**/*.exe" />
                </node>
                <node concept="398BVA" id="55vGwhCTzcE" role="2HvfZ0">
                  <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="55vGwhCTzcF" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="55vGwhCTzcG" role="2Ry0An">
                      <property role="2Ry0Am" value="win" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="yKbIv" id="55vGwhCTzeW" role="39821P">
                <property role="yKbIr" value="755" />
                <node concept="2HvfSZ" id="55vGwhCTzeX" role="39821P">
                  <node concept="3LWZYx" id="55vGwhCTzeY" role="2HvfZ1">
                    <property role="3LWZYw" value="**/*.exe" />
                  </node>
                  <node concept="398BVA" id="55vGwhCTzcK" role="2HvfZ0">
                    <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                    <node concept="2Ry0Ak" id="55vGwhCTzcL" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="55vGwhCTzcM" role="2Ry0An">
                        <property role="2Ry0Am" value="win" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="398223" id="55vGwhCTzeZ" role="39821P">
              <node concept="2HvfSZ" id="55vGwhCTzf0" role="39821P">
                <node concept="3LWZYq" id="55vGwhCTzf1" role="2HvfZ1">
                  <property role="3LWZYl" value="**/fsnotifier" />
                </node>
                <node concept="3LWZYq" id="55vGwhCTzf2" role="2HvfZ1">
                  <property role="3LWZYl" value="**/fsnotifier64" />
                </node>
                <node concept="398BVA" id="55vGwhCTzcQ" role="2HvfZ0">
                  <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="55vGwhCTzcR" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="55vGwhCTzcS" role="2Ry0An">
                      <property role="2Ry0Am" value="linux" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="55vGwhCTzf3" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="55vGwhCTzcX" role="28jJRO">
                  <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="55vGwhCTzcY" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="55vGwhCTzcZ" role="2Ry0An">
                      <property role="2Ry0Am" value="linux" />
                      <node concept="2Ry0Ak" id="55vGwhCTzd0" role="2Ry0An">
                        <property role="2Ry0Am" value="fsnotifier" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="55vGwhCTzf4" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="55vGwhCTzd5" role="28jJRO">
                  <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="55vGwhCTzd6" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="55vGwhCTzd7" role="2Ry0An">
                      <property role="2Ry0Am" value="linux" />
                      <node concept="2Ry0Ak" id="55vGwhCTzd8" role="2Ry0An">
                        <property role="2Ry0Am" value="fsnotifier64" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3_J27D" id="55vGwhCTzf5" role="Nbhlr">
                <node concept="3Mxwew" id="55vGwhCTzf6" role="3MwsjC">
                  <property role="3MwjfP" value="linux" />
                </node>
              </node>
            </node>
            <node concept="398223" id="55vGwhCTzf7" role="39821P">
              <node concept="yKbIv" id="55vGwhCTzf8" role="39821P">
                <property role="yKbIr" value="755" />
                <node concept="2HvfSZ" id="55vGwhCTzf9" role="39821P">
                  <node concept="398BVA" id="55vGwhCTzdc" role="2HvfZ0">
                    <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                    <node concept="2Ry0Ak" id="55vGwhCTzdd" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="55vGwhCTzde" role="2Ry0An">
                        <property role="2Ry0Am" value="nix" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3_J27D" id="55vGwhCTzfa" role="Nbhlr">
                <node concept="3Mxwew" id="55vGwhCTzfb" role="3MwsjC">
                  <property role="3MwjfP" value="nix" />
                </node>
              </node>
            </node>
            <node concept="398223" id="55vGwhCTzfc" role="39821P">
              <node concept="28jJK3" id="55vGwhCTzfd" role="39821P">
                <node concept="398BVA" id="55vGwhCTzdj" role="28jJRO">
                  <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="55vGwhCTzdk" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="55vGwhCTzdl" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="55vGwhCTzdm" role="2Ry0An">
                        <property role="2Ry0Am" value="libbreakgen.jnilib" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="55vGwhCTzfe" role="39821P">
                <node concept="398BVA" id="55vGwhCTzdr" role="28jJRO">
                  <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="55vGwhCTzds" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="55vGwhCTzdt" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="55vGwhCTzdu" role="2Ry0An">
                        <property role="2Ry0Am" value="libbreakgen64.jnilib" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="55vGwhCTzff" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="55vGwhCTzdz" role="28jJRO">
                  <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="55vGwhCTzd$" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="55vGwhCTzd_" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="55vGwhCTzdA" role="2Ry0An">
                        <property role="2Ry0Am" value="restarter" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="55vGwhCTzfg" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="55vGwhCTzdF" role="28jJRO">
                  <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="55vGwhCTzdG" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="55vGwhCTzdH" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="55vGwhCTzdI" role="2Ry0An">
                        <property role="2Ry0Am" value="fsnotifier" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="55vGwhCTzfh" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="55vGwhCTzdN" role="28jJRO">
                  <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="55vGwhCTzdO" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="55vGwhCTzdP" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="55vGwhCTzdQ" role="2Ry0An">
                        <property role="2Ry0Am" value="printenv.py" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="398223" id="55vGwhCTzfi" role="39821P">
                <node concept="3_J27D" id="55vGwhCTzfj" role="Nbhlr">
                  <node concept="3Mxwew" id="55vGwhCTzfk" role="3MwsjC">
                    <property role="3MwjfP" value="Contents" />
                  </node>
                </node>
                <node concept="398223" id="55vGwhCTzfl" role="39821P">
                  <node concept="3_J27D" id="55vGwhCTzfm" role="Nbhlr">
                    <node concept="3Mxwew" id="55vGwhCTzfn" role="3MwsjC">
                      <property role="3MwjfP" value="Resources" />
                    </node>
                  </node>
                  <node concept="28jJK3" id="55vGwhCTzfo" role="39821P">
                    <node concept="398BVA" id="55vGwhCTzdX" role="28jJRO">
                      <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                      <node concept="2Ry0Ak" id="55vGwhCTzdY" role="iGT6I">
                        <property role="2Ry0Am" value="bin" />
                        <node concept="2Ry0Ak" id="55vGwhCTzdZ" role="2Ry0An">
                          <property role="2Ry0Am" value="mac" />
                          <node concept="2Ry0Ak" id="55vGwhCTze0" role="2Ry0An">
                            <property role="2Ry0Am" value="Contents" />
                            <node concept="2Ry0Ak" id="55vGwhCTze1" role="2Ry0An">
                              <property role="2Ry0Am" value="Resources" />
                              <node concept="2Ry0Ak" id="55vGwhCTze2" role="2Ry0An">
                                <property role="2Ry0Am" value="mps.icns" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="398223" id="55vGwhCTzfp" role="39821P">
                  <node concept="3_J27D" id="55vGwhCTzfq" role="Nbhlr">
                    <node concept="3Mxwew" id="55vGwhCTzfr" role="3MwsjC">
                      <property role="3MwjfP" value="MacOS" />
                    </node>
                  </node>
                  <node concept="28jJK3" id="55vGwhCTzfs" role="39821P">
                    <property role="28jJZ5" value="755" />
                    <node concept="398BVA" id="55vGwhCTze9" role="28jJRO">
                      <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                      <node concept="2Ry0Ak" id="55vGwhCTzea" role="iGT6I">
                        <property role="2Ry0Am" value="bin" />
                        <node concept="2Ry0Ak" id="55vGwhCTzeb" role="2Ry0An">
                          <property role="2Ry0Am" value="mac" />
                          <node concept="2Ry0Ak" id="55vGwhCTzec" role="2Ry0An">
                            <property role="2Ry0Am" value="Contents" />
                            <node concept="2Ry0Ak" id="55vGwhCTzed" role="2Ry0An">
                              <property role="2Ry0Am" value="MacOS" />
                              <node concept="2Ry0Ak" id="55vGwhCTzee" role="2Ry0An">
                                <property role="2Ry0Am" value="mps" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="28jJK3" id="55vGwhCTzft" role="39821P">
                    <property role="28jJZ5" value="644" />
                    <node concept="398BVA" id="55vGwhCTzel" role="28jJRO">
                      <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                      <node concept="2Ry0Ak" id="55vGwhCTzem" role="iGT6I">
                        <property role="2Ry0Am" value="bin" />
                        <node concept="2Ry0Ak" id="55vGwhCTzen" role="2Ry0An">
                          <property role="2Ry0Am" value="mac" />
                          <node concept="2Ry0Ak" id="55vGwhCTzeo" role="2Ry0An">
                            <property role="2Ry0Am" value="Contents" />
                            <node concept="2Ry0Ak" id="55vGwhCTzep" role="2Ry0An">
                              <property role="2Ry0Am" value="MacOS" />
                              <node concept="2Ry0Ak" id="55vGwhCTzeq" role="2Ry0An">
                                <property role="2Ry0Am" value="idea_appLauncher" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="28jJK3" id="55vGwhCTzfu" role="39821P">
                  <node concept="398BVA" id="55vGwhCTzew" role="28jJRO">
                    <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                    <node concept="2Ry0Ak" id="55vGwhCTzex" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="55vGwhCTzey" role="2Ry0An">
                        <property role="2Ry0Am" value="mac" />
                        <node concept="2Ry0Ak" id="55vGwhCTzez" role="2Ry0An">
                          <property role="2Ry0Am" value="Contents" />
                          <node concept="2Ry0Ak" id="55vGwhCTze$" role="2Ry0An">
                            <property role="2Ry0Am" value="Info.plist" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3_J27D" id="55vGwhCTzfv" role="Nbhlr">
                <node concept="3Mxwew" id="55vGwhCTzfw" role="3MwsjC">
                  <property role="3MwjfP" value="mac" />
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="55vGwhCTzfx" role="39821P">
            <property role="28jJZ5" value="755" />
            <node concept="398BVA" id="55vGwhCTzeB" role="28jJRO">
              <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
              <node concept="2Ry0Ak" id="55vGwhCTzeC" role="iGT6I">
                <property role="2Ry0Am" value="mps.sh" />
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="55vGwhCTzfy" role="39821P">
            <property role="28jJZ5" value="755" />
            <node concept="398BVA" id="55vGwhCTzeF" role="28jJRO">
              <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
              <node concept="2Ry0Ak" id="55vGwhCTzeG" role="iGT6I">
                <property role="2Ry0Am" value="mps.bat" />
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="55vGwhCTzfz" role="Nbhlr">
            <node concept="3Mxwew" id="55vGwhCTzf$" role="3MwsjC">
              <property role="3MwjfP" value="DSL " />
            </node>
            <node concept="3Mxwey" id="55vGwhCTzf_" role="3MwsjC">
              <ref role="3Mxwex" node="55vGwhCTzbc" resolve="version" />
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="55vGwhCTzfA" role="Nbhlr">
          <node concept="3Mxwey" id="55vGwhCTzfB" role="3MwsjC">
            <ref role="3Mxwex" node="55vGwhCTz79" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="55vGwhCTzfC" role="3MwsjC">
            <property role="3MwjfP" value=".zip" />
          </node>
        </node>
      </node>
      <node concept="3981dG" id="55vGwhCTzhf" role="39821P">
        <node concept="3_J27D" id="55vGwhCTzhg" role="Nbhlr">
          <node concept="3Mxwey" id="55vGwhCTzhh" role="3MwsjC">
            <ref role="3Mxwex" node="55vGwhCTz79" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="55vGwhCTzhi" role="3MwsjC">
            <property role="3MwjfP" value="-macos.zip" />
          </node>
        </node>
        <node concept="398223" id="55vGwhCTzhj" role="39821P">
          <node concept="398223" id="55vGwhCTzhk" role="39821P">
            <node concept="3ygNvl" id="55vGwhCTzhl" role="39821P">
              <ref role="3ygNvj" node="55vGwhCTz8r" />
            </node>
            <node concept="3_J27D" id="55vGwhCTzhm" role="Nbhlr">
              <node concept="3Mxwew" id="55vGwhCTzhn" role="3MwsjC">
                <property role="3MwjfP" value="Contents" />
              </node>
            </node>
            <node concept="398223" id="55vGwhCTzho" role="39821P">
              <node concept="3_J27D" id="55vGwhCTzhp" role="Nbhlr">
                <node concept="3Mxwew" id="55vGwhCTzhq" role="3MwsjC">
                  <property role="3MwjfP" value="Resources" />
                </node>
              </node>
              <node concept="28jJK3" id="55vGwhCTzhr" role="39821P">
                <node concept="398BVA" id="55vGwhCTzfJ" role="28jJRO">
                  <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="55vGwhCTzfK" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="55vGwhCTzfL" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="55vGwhCTzfM" role="2Ry0An">
                        <property role="2Ry0Am" value="Contents" />
                        <node concept="2Ry0Ak" id="55vGwhCTzfN" role="2Ry0An">
                          <property role="2Ry0Am" value="Resources" />
                          <node concept="2Ry0Ak" id="55vGwhCTzfO" role="2Ry0An">
                            <property role="2Ry0Am" value="mps.icns" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="398223" id="55vGwhCTzhs" role="39821P">
              <node concept="28jJK3" id="55vGwhCTzht" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="55vGwhCTzfV" role="28jJRO">
                  <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="55vGwhCTzfW" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="55vGwhCTzfX" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="55vGwhCTzfY" role="2Ry0An">
                        <property role="2Ry0Am" value="Contents" />
                        <node concept="2Ry0Ak" id="55vGwhCTzfZ" role="2Ry0An">
                          <property role="2Ry0Am" value="MacOS" />
                          <node concept="2Ry0Ak" id="55vGwhCTzg0" role="2Ry0An">
                            <property role="2Ry0Am" value="mps" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3_J27D" id="55vGwhCTzhu" role="Nbhlr">
                <node concept="3Mxwew" id="55vGwhCTzhv" role="3MwsjC">
                  <property role="3MwjfP" value="MacOS" />
                </node>
              </node>
              <node concept="28jJK3" id="55vGwhCTzhw" role="39821P">
                <property role="28jJZ5" value="644" />
                <node concept="398BVA" id="55vGwhCTzg7" role="28jJRO">
                  <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="55vGwhCTzg8" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="55vGwhCTzg9" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="55vGwhCTzga" role="2Ry0An">
                        <property role="2Ry0Am" value="Contents" />
                        <node concept="2Ry0Ak" id="55vGwhCTzgb" role="2Ry0An">
                          <property role="2Ry0Am" value="MacOS" />
                          <node concept="2Ry0Ak" id="55vGwhCTzgc" role="2Ry0An">
                            <property role="2Ry0Am" value="idea_appLauncher" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="55vGwhCTzhx" role="39821P">
              <node concept="398BVA" id="55vGwhCTzgi" role="28jJRO">
                <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                <node concept="2Ry0Ak" id="55vGwhCTzgj" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="55vGwhCTzgk" role="2Ry0An">
                    <property role="2Ry0Am" value="mac" />
                    <node concept="2Ry0Ak" id="55vGwhCTzgl" role="2Ry0An">
                      <property role="2Ry0Am" value="Contents" />
                      <node concept="2Ry0Ak" id="55vGwhCTzgm" role="2Ry0An">
                        <property role="2Ry0Am" value="Info.plist" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="398223" id="55vGwhCTzhy" role="39821P">
              <node concept="3_J27D" id="55vGwhCTzhz" role="Nbhlr">
                <node concept="3Mxwew" id="55vGwhCTzh$" role="3MwsjC">
                  <property role="3MwjfP" value="bin" />
                </node>
              </node>
              <node concept="28jJK3" id="55vGwhCTzh_" role="39821P">
                <node concept="398BVA" id="55vGwhCTzgr" role="28jJRO">
                  <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="55vGwhCTzgs" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="55vGwhCTzgt" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="55vGwhCTzgu" role="2Ry0An">
                        <property role="2Ry0Am" value="libbreakgen.jnilib" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="55vGwhCTzhA" role="39821P">
                <node concept="398BVA" id="55vGwhCTzgz" role="28jJRO">
                  <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="55vGwhCTzg$" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="55vGwhCTzg_" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="55vGwhCTzgA" role="2Ry0An">
                        <property role="2Ry0Am" value="libbreakgen64.jnilib" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="55vGwhCTzhB" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="55vGwhCTzgF" role="28jJRO">
                  <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="55vGwhCTzgG" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="55vGwhCTzgH" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="55vGwhCTzgI" role="2Ry0An">
                        <property role="2Ry0Am" value="restarter" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="55vGwhCTzhC" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="55vGwhCTzgN" role="28jJRO">
                  <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="55vGwhCTzgO" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="55vGwhCTzgP" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="55vGwhCTzgQ" role="2Ry0An">
                        <property role="2Ry0Am" value="fsnotifier" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="55vGwhCTzhD" role="39821P">
                <node concept="3co7Ac" id="55vGwhCTzhE" role="28jJR8">
                  <property role="3co7Am" value="lf" />
                  <property role="3cpA_W" value="true" />
                </node>
                <node concept="398BVA" id="55vGwhCTzgU" role="28jJRO">
                  <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="55vGwhCTzgV" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="55vGwhCTzgW" role="2Ry0An">
                      <property role="2Ry0Am" value="mps.vmoptions" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="55vGwhCTzhF" role="39821P">
                <node concept="3co7Ac" id="55vGwhCTzhG" role="28jJR8">
                  <property role="3co7Am" value="lf" />
                  <property role="3cpA_W" value="true" />
                </node>
                <node concept="398BVA" id="55vGwhCTzh0" role="28jJRO">
                  <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="55vGwhCTzh1" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="55vGwhCTzh2" role="2Ry0An">
                      <property role="2Ry0Am" value="mps64.vmoptions" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="55vGwhCTzhH" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="3co7Ac" id="55vGwhCTzhI" role="28jJR8">
                  <property role="3co7Am" value="lf" />
                  <property role="3cpA_W" value="true" />
                </node>
                <node concept="398BVA" id="55vGwhCTzh7" role="28jJRO">
                  <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="55vGwhCTzh8" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="55vGwhCTzh9" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="55vGwhCTzha" role="2Ry0An">
                        <property role="2Ry0Am" value="printenv.py" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="55vGwhCTzhJ" role="39821P">
              <property role="28jJZ5" value="755" />
              <node concept="3co7Ac" id="55vGwhCTzhK" role="28jJR8">
                <property role="3co7Am" value="lf" />
                <property role="3cpA_W" value="true" />
              </node>
              <node concept="398BVA" id="55vGwhCTzhd" role="28jJRO">
                <ref role="398BVh" node="55vGwhCTzbb" resolve="mps_home" />
                <node concept="2Ry0Ak" id="55vGwhCTzhe" role="iGT6I">
                  <property role="2Ry0Am" value="mps.sh" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="55vGwhCTzhL" role="Nbhlr">
            <node concept="3Mxwew" id="55vGwhCTzhM" role="3MwsjC">
              <property role="3MwjfP" value="DSL " />
            </node>
            <node concept="3Mxwey" id="55vGwhCTzhN" role="3MwsjC">
              <ref role="3Mxwex" node="55vGwhCTzbc" resolve="version" />
            </node>
            <node concept="3Mxwew" id="55vGwhCTzhO" role="3MwsjC">
              <property role="3MwjfP" value=".app" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="55vGwhCTzbb" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="55vGwhCV8Vv" role="398pKh">
        <node concept="2Ry0Ak" id="55vGwhCV8V$" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="55vGwhCV8VD" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
            <node concept="2Ry0Ak" id="55vGwhCV8VG" role="2Ry0An">
              <property role="2Ry0Am" value=".." />
              <node concept="2Ry0Ak" id="55vGwhCV8W7" role="2Ry0An">
                <property role="2Ry0Am" value=".." />
                <node concept="2Ry0Ak" id="55vGwhCV8Wa" role="2Ry0An">
                  <property role="2Ry0Am" value=".." />
                  <node concept="2Ry0Ak" id="55vGwhCV8Wd" role="2Ry0An">
                    <property role="2Ry0Am" value=".." />
                    <node concept="2Ry0Ak" id="55vGwhCV8Wi" role="2Ry0An">
                      <property role="2Ry0Am" value="opt" />
                      <node concept="2Ry0Ak" id="55vGwhCV8Wn" role="2Ry0An">
                        <property role="2Ry0Am" value="JetBrains" />
                        <node concept="2Ry0Ak" id="55vGwhCV8Ws" role="2Ry0An">
                          <property role="2Ry0Am" value="apps" />
                          <node concept="2Ry0Ak" id="55vGwhCV8Wx" role="2Ry0An">
                            <property role="2Ry0Am" value="MPS" />
                            <node concept="2Ry0Ak" id="55vGwhCV8WA" role="2Ry0An">
                              <property role="2Ry0Am" value="ch-0" />
                              <node concept="2Ry0Ak" id="55vGwhCV8WF" role="2Ry0An">
                                <property role="2Ry0Am" value="173.1677" />
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
    <node concept="2kB4xC" id="55vGwhCTzbc" role="1l3spd">
      <property role="TrG5h" value="version" />
      <node concept="aVJcg" id="55vGwhCTzbd" role="aVJcv">
        <node concept="NbPM2" id="55vGwhCTzbe" role="aVJcq">
          <node concept="3Mxwew" id="55vGwhCTzbf" role="3MwsjC">
            <property role="3MwjfP" value="2017.3" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

