pipeline {
  
  environment {
    registry = "ACN/Project-3"
    registryCredential = 'dockerhub_id'
    dockerImage = ''
  }
  agent any

  stages {
    stage('build') {
      steps {
        dockerImage = docker.build registry + ":$BUILD_NUMBER"
      }
    }

    stage('Deploy our image') {
      steps {
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }

    stage('Cleaning up') {
      steps {
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }
  }
}
