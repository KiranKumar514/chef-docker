pipeline {
    agent any
    stages {
        stage('Build image') {
            steps {
                echo 'Starting to build docker image'
                docker build -t chef .
                customImage.push()
                }
            }
        }
    }

