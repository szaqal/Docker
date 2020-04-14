#!/bin/bash

#rm -fr dummy/

if [[ -z "${MVN_VERSION}" ]]; then
	echo "Version not provided"
	exit 1
fi

if [[ -z "${MVN_ARTIFACT}" ]]; then
	echo "Artifact not provided"
	exit 1
fi 

if [[ -z "${MVN_GROUP}" ]]; then
	echo "GROUP ID not provided"
	exit 1
fi

mvn archetype:generate \
	-Dversion=${MVN_VERSION} \
	-DinteractiveMode=false  \
	-DartifactId=${MVN_ARTIFACT} \
	-DgroupId=${MVN_GROUP} \
	-DarchetypeGroupId=org.apache.maven.archetypes \
	-DarchetypeArtifactId=maven-archetype-quickstart \
	-DarchetypeVersion=1.4
