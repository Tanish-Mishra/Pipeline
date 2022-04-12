pipeline {
  agent any 
environment {
          PASS = credentials('PASSWORD')         
                    }
stages {
  stage('build') {
    steps {
  sh '''
   /cicd-app/jenkins_home/workspace/pipeline-maven-deployment/jenkins/build/mvnbuildjar.sh mvn -B -DskipTests clean package

  /cicd-app/jenkins_home/workspace/pipeline-maven-deployment/jenkins/build/build.sh
    '''
              } 
     }
 stage('Test') {
     steps {
   
    sh '''
   /cicd-app/jenkins_home/workspace/pipeline-maven-deployment/jenkins/test/mvntest.sh mvn test
    '''

                  }

     }
 stage('Push') {
     steps {

     sh '''
       /cicd-app/jenkins_home/workspace/pipeline-maven-deployment/jenkins/push/push.sh
        '''
   
                }

     }
 stage('Deploy') {
     steps {

       sh '''
           /cicd-app/jenkins_home/workspace/pipeline-maven-deployment/jenkins/deploy/deploy.sh
           '''
             }

     }

          }
}
