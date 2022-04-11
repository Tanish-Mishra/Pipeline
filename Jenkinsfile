pipeline {
  agent any
stages {
  stage('build') {
    steps {
  sh '''
   ./pipeline/jenkins/build/mvnbuildjar.sh mvn -B -DskipTests clean package
   ./pipeline/jenkins/build/build.sh
    '''
              } 
     }
 stage('Test') {
     steps {
   
    sh '''
   ./pipeline/jenkins/test/mvntest.sh mvn test
    '''

                  }

     }
 stage('Push') {
     steps {

     sh '''
       ./pipeline/jenkins/push/push.sh
        '''
   
                }

     }
 stage('Deploy') {
     steps {

       sh '''
           ./pipeline/jenkins/deploy/deploy.sh
           '''
             }

     }

          }
}
