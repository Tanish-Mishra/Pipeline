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

  post {



success {


    archiveArtifacts artifacts: 'java-app/target/*.jar', fingerprint: true
    
           }
                  }
     }

 stage('Test') {

     steps {
   

    sh '''

   ./jenkins/test/mvntest.sh mvn test

    '''

                  }

 post {
 
always {       
           junit 'java-app/target/surefire-reports/*.xml' 

               }
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
