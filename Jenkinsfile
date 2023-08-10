pipeline {
  agent any

  environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerhub')
  }

  stages {
    stage('Git Clone') {
      steps {
        git 'https://github.com/20424010/ACN-Project-3.git'
      }
    }
  }
}
