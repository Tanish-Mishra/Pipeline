#!/bin/bash
cp -f /pipeline/java-app/target/*.jar /pipeline/jenkins/build
echo "********************************************************************"
echo "********************Building The Image******************************"
echo "*********************************************************************"
cd /cicd-app/jenkins_home/workspace/pipeline-maven-deployment/jenkins/build && docker-compose -f docker-compose-build-javaapp.yaml build --no-cache
