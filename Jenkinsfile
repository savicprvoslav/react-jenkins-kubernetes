pipeline {
  agent any
  stages {
    stage('push') {
      steps {
                sh 'printenv'
            }
      steps {
        sh 'docker build . -t pscode/test'
      }
    }
  }
}
