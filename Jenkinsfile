pipeline {
    agent any
    stages {
        stage('Example') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Git') {
            steps {
                git branch: 'feature/todo-list',
                url: 'https://github.com/20424010/ACN-Project-3.git'
            }
        }
        stage('Build And Push Image') {
            steps {
                script {
                    withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
                        sh 'docker build -t acn/jenkins-project-3 .'
                        sh 'docker login -u 20424010 -p ${dockerhubpwd}'

                        sh 'docker push acn/jenkins-project-3'
                    }
                }
            }
        }
    }
}
