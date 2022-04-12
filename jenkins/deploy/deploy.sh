#!/bin/bash
echo "tanish123/myrepo" > /opt/.auth
echo $BUILD_TAG >> /opt/.auth
echo $PASS >> /opt/.auth

scp -i /opt/prod  /opt/.auth prod-user@192.168.0.106:/opt/.auth
scp -i /opt/prod  jenkins/deploy/publish prod-user@192.168.0.106:/maven
ssh -i /opt/prod prod-user@192.168.0.106 "/maven/publish"
