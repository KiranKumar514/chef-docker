pipeline {
  agent any
    stages {
        stage('Build image') {
            steps {
                echo 'Starting to build docker image'
                script {
                  def customimage = docker.build "centoschef"
                 }
            }
        }
	stage('Push Image'){
 	 steps {
	  script {
	    docker.withRegistry('https://registry.hub.docker.com/', 'dockercredentials' ){
	      customimage.push()
	  }
	 }
	}
      }
     }
   }
