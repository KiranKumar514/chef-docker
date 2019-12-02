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
               dockerImage = docker.build registry + ":chef36"
               }
            }
        }
         stage('Deploy Image') {
      steps{
        script {
          dockerImage.push()
          }
        }
      }
    }
  }
