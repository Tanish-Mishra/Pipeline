#!/bin/bash
IMAGE=javabuildapp
echo "*********Logging In***********"
docker login -u tanish123 -p $PASS
echo "********Tagging the Image*****"
docker tag $IMAGE:$BUILD_TAG tanish123/myrepo:$BUILD_TAG
echo "********Puhing The Image******"
docker push tanish123/myrepo:$BUILD_TAG
