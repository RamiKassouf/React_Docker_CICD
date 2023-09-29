pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                // build the react project
                sh 'yarn install'
                sh 'yarn build'
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