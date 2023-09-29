pipeline {
    agent any

    stages {
        stage('Build and Test') {
            steps {
                checkout scm
                setupNode()
                sh 'npm install'
                sh 'CI=false npm run build'
                sh 'npm run test'
            }
        }

        // stage('Dockerize') {
        //     steps {
        //         checkout scm
        //         loginToDockerHub()
        //         sh 'docker build -t $DOCKER_HUB_USERNAME/react-app .'
        //         sh 'docker tag $DOCKER_HUB_USERNAME/react-app $DOCKER_HUB_USERNAME/react-app:latest'
        //         sh 'docker push $DOCKER_HUB_USERNAME/react-app:latest'
        //     }
        // }
    }
}

def setupNode() {
    tool name: 'node', type: 'jenkins.plugins.nodejs.tools.NodeJSInstallation'
    env.PATH = "${tool 'node'}/bin:${env.PATH}"
}

// def loginToDockerHub() {
//     withCredentials([string(credentialsId: 'docker-hub-credentials', variable: 'DOCKER_HUB_USERNAME')]) {
//         withCredentials([string(credentialsId: 'docker-hub-credentials', variable: 'DOCKER_HUB_PASSWORD')]) {
//             sh "docker login -u $DOCKER_HUB_USERNAME -p $DOCKER_HUB_PASSWORD"
//         }
//     }
// }



