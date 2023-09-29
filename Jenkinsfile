pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                // build the react project
                sh 'npm install'
                sh 'npm run build'
            }
        }
        stage('Test') {
            steps {
                // run the tests
                sh 'npm run test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}