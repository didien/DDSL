<?xml version="1.0" encoding="UTF-8"?>
<solution name="InfluxDB" uuid="cc7fb470-7d0c-4aea-af2a-5d870ff3092f" moduleVersion="0" compileInMPS="true">
  <models>
    <modelRoot contentPath="${module}" type="default" />
    <modelRoot contentPath="${module}" type="java_classes">
      <sourceRoot location="influxdb-java-2.8.jar" />
    </modelRoot>
  </models>
  <stubModelEntries>
    <stubModelEntry path="${module}/logging-interceptor-3.9.1.jar" />
    <stubModelEntry path="${module}/moshi-1.4.0.jar" />
    <stubModelEntry path="${module}/okio-1.13.0.jar" />
    <stubModelEntry path="${module}/okhttp-3.9.1.jar" />
    <stubModelEntry path="${module}/retrofit-2.3.0.jar" />
    <stubModelEntry path="${module}/influxdb-java-2.8.jar" />
    <stubModelEntry path="${module}/converter-moshi-2.3.0.jar" />
  </stubModelEntries>
  <sourcePath />
  <dependencies>
    <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
    <dependency reexport="false">ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)</dependency>
  </dependencies>
  <languageVersions>
    <language slang="l:f3061a53-9226-4cc5-a443-f952ceaf5816:jetbrains.mps.baseLanguage" version="5" />
    <language slang="l:ceab5195-25ea-4f22-9b92-103b95ca8c0c:jetbrains.mps.lang.core" version="1" />
    <language slang="l:9ded098b-ad6a-4657-bfd9-48636cfe8bc3:jetbrains.mps.lang.traceable" version="0" />
  </languageVersions>
  <dependencyVersions>
    <module reference="3f233e7f-b8a6-46d2-a57f-795d56775243(Annotations)" version="0" />
    <module reference="cc7fb470-7d0c-4aea-af2a-5d870ff3092f(InfluxDB)" version="0" />
    <module reference="6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)" version="0" />
    <module reference="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)" version="0" />
    <module reference="8865b7a8-5271-43d3-884c-6fd1d9cfdd34(MPS.OpenAPI)" version="0" />
    <module reference="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" version="0" />
    <module reference="d7eb0a2a-bd50-4576-beae-e4a89db35f20(jetbrains.mps.lang.scopes.runtime)" version="0" />
    <module reference="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" version="0" />
  </dependencyVersions>
</solution>

