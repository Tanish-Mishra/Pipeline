#!/bin/bash
cp -f /pipeline/java-app/target/*.jar /pipeline/jenkins/build
echo "********************************************************************"
echo "********************Building The Image******************************"
echo "*********************************************************************"
cd /pipeline/jenkins/build/ && docker-compose -f docker-compose-build-javaapp.yaml build --no-cache
