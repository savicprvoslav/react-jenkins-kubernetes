pipeline {
  agent any
  stages {
    stage('push') {
      steps {
        sh 'printenv'
      }
    }
  }
  environment {
    DOCKER_CRED = 'credentials("DOCKER_CRED")'
  }
}