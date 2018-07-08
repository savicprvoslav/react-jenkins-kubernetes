pipeline {
  agent any
  stages {
    stage('push') {
      steps {
        sh 'docker build . -t pscode/test'
        sh 'printenv'
      }
    }
  }
}