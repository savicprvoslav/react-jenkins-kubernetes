pipeline {
  agent any
  stages {
    stage('push') {
      steps {
        sh 'docker build . -t pscode/react:${env.BRANCH_NAME}${env.BUILD_ID}'
        sh 'printenv'
      }
    }
  }
}