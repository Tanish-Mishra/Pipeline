pipeline {
  agent any 
environment {
          PASS = credentials('PASSWORD')         
                    }
stages {
  stage('build') {
    steps {
  sh '''
   ./jenkins/build/mvnbuildjar.sh mvn -B -DskipTests clean package

  ./jenkins/build/build.sh
    '''
              } 
     }
 stage('Test') {
     steps {
   
    sh '''
   ./jenkins/test/mvntest.sh mvn test
    '''

                  }

     }
 stage('Push') {
     steps {

     sh '''
       ./jenkins/push/push.sh
        '''
   
                }

     }
 stage('Deploy') {
     steps {

       sh '''
           ./jenkins/deploy/deploy.sh
           '''
             }

     }

          }
}
