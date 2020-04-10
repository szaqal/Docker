#!/bin/bash

mvn archetype:generate \
	-Dversion=1.0.0-SNAPSHOT \
	-DinteractiveMode=false  \
	-DartifactId=dummy \
	-DgroupId=com.dummy \
	-DarchetypeGroupId=org.apache.maven.archetypes \
	-DarchetypeArtifactId=maven-archetype-quickstart \
	-DarchetypeVersion=1.4
