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
	    docker.withRegistry('', resgistryCredential ){
	      dockerImage.push()
	  }
	 }
	}
      }
	stage('Remove Unused docker image'){
           steps {
	    sh "docker rmi $registry:$BUILD_NUMBER"
        	}
	     }
         }
      }
