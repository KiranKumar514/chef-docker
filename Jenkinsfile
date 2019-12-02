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
               dockerImage = docker.build registry 
               }
            }
        }
         stage('Deploy Image') {
      steps{
        script {
          dockerImage.push("latest")
          }
        }
      }
    }
  }
