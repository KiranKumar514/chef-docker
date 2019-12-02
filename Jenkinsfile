pipeline {
environment {
    registry = "testdocker514/devmbb"
    registryCredential = 'dockercredentials'
    dockerImage = ''
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
	stage('Deploy Image'){
 	 steps {
	  script {
	    docker.withRegistry('https://registry.hub.docker.com/', 'dockercredentials' ){
	      dockerImage.push()
	  }
	 }
	}
      }
     }
   }
