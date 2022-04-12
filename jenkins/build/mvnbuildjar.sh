#!/bin/bash
echo "*************************************"
echo "**********Building the Jar***********"
WORKDIR=/cicd-app/jenkins_home/workspace/cicd
docker run --rm -v $WORKDIR/java-app:/app -v /root/.m2/:/root/.m2 -w /app maven:3.5.4-alpine "$@"
