#!/bin/bash
cp -f java-app/target/*.jar jenkins/build
echo "********************************************************************"
echo "********************Building The Image******************************"
echo "*********************************************************************"
cd jenkins/build && docker-compose -f docker-compose-build-javaapp.yaml build --no-cache
