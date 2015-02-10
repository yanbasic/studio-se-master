1) open the .target in eclipse 44.
2) export it to some TargetPlatformE44/
3) eclipse export fails to update the content.xml and artifact so we need to regenerate the p2 repository with the following command 
        Applications/java/eclipse/4.2/eclipse/eclipse -application org.eclipse.equinox.p2.publisher.FeaturesAndBundlesPublisher -metadataRepository file:/Applications/java/talend/TargetPlatformE44/p2site/ -artifactRepository file:/Applications/java/talend/TargetPlatformE44/p2site/ -source /Applications/java/talend/TargetPlatformE44 -config ANY -publishArtifacts 
4) Deploy ZIP of target to Nexus (features/, plugins/, artifacts.jar, contents.jar at the root):
        mvn deploy:deploy-file -Dfile=/Applications/java/talend/TargetPlatformE44/p2site/TargetPlatformE44.zip -DgroupId=org.talend.repo -DartifactId=talend-eclipse-p2-repo -Dversion=4.4.1-SNAPSHOT -Dpackaging=zip -Durl=http://newbuild.talend.com:8081/nexus/content/repositories/TalendOpenSourceSnapshot -DrepositoryId=talend_nexus_deployment
        Nexus p2 repository will be available at http://newbuild.talend.com:8081/nexus/content/unzip/TalendP2UnzipOpenSourceSnapshot/org/talend/repo/talend-eclipse-p2-repo/4.4.1-SNAPSHOT/talend-eclipse-p2-repo-4.4.1-SNAPSHOT.zip-unzip/plugins/
