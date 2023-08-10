pipeline {
  agent any

  stages {
    stage('Build and push image') {
      steps {
        sh 'docker build -t ACN/Project-3 .'
        sh 'docker push ACN/Project-3'
      }
    }
  }
}
