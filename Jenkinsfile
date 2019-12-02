pipeline {
def app
  agent any
    stages {
        stage('Build image') {
            steps {
                echo 'Starting to build docker image'
                script {
                  app = docker.build "centoschef"
                 }
            }
        }
	stage('Push Image'){
 	 steps {
	  script {
	    docker.withRegistry('https://registry.hub.docker.com/', 'dockercredentials' ){
	      app.push()
	  }
	 }
	}
      }
     }
   }
