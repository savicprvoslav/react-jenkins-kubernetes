pipeline {
  agent any
  stages {
    stage('push') {
      steps {
        sh 'docker build . -t pscode/react:${BRANCH_NAME}${BUILD_ID}'
        sh 'printenv'
      }
    }
  }
}