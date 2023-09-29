pipeline {
    agent {
        docker {
            image 'node:18.18.0-alpine3.18' 
            args '-p 3000:3000' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                // get code from SCM
                checkout scm
                // run the build
                sh 'yarn install' 
            }
        }
        stage('Test') {
            steps {
                // run the tests
                sh 'yarn test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}