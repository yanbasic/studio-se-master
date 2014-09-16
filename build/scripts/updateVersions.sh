#!/bin/bash
cd ../../talend.studio.parent.pom
mvn -Dtycho.mode=maven org.eclipse.tycho:tycho-versions-plugin:0.21.0:set-version -DnewVersion=5.6.0-SNAPSHOT
cd ..
mvn -Dtycho.mode=maven org.eclipse.tycho:tycho-versions-plugin:0.21.0:set-version -DnewVersion=5.6.0-SNAPSHOT -Dartifacts=tos,org.talend.studio.tos.bigdata.product,org.talend.studio.tos.di.product,org.talend.studio.tos.dq.product,org.talend.studio.tos.esb.product,org.talend.studio.tos.mdm.product,tbd-studio-se,tcommon-studio-se,tdi-studio-se,tdq-studio-se,tesb-studio-se,tmdm-common,tmdm-studio-se,toem-studio-se