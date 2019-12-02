pipeline {
environment {
    registry = "testdocker514/devmbb"
    registryCredential = 'dockercredentials'
      }
  agent any
    stages {
        stage('Build image') {
            steps {
                echo 'Starting to build docker image'
                script {
               dockerImage = docker.build registry + ":$BUILD_NUMBER"
               }
            }
        }
         stage('Deploy Image') {
      steps{
        script {
       docker.withRegistry('', registryCredential ){
          dockerImage.push("{$BUILD_NUMBER}")
          }
        }
      }
    }
  }
}
