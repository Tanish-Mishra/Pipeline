echo "***************************"
echo "**********Testing**********"
echo "***************************"
WORKDIR=/cicd-app/jenkins_home/workspace/pipeline-maven-deployment
docker run --rm -v $WORKDIR/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3.5.4-alpine "$@"
