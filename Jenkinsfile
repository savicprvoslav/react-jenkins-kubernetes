pipeline {
  agent any
  stages {
    stage('push') {
      steps {
        sh 'printenv'
        sh 'docker build . -t pscode/react:${BRANCH_NAME}${BUILD_ID}'
        sh 'docker login --username=${DOCKER_CRED_PSW} --email=${DOCKER_CRED_USR}'
        sh 'docker push pscode/react:${BRANCH_NAME}${BUILD_ID}'
      }
    }
  }
  environment {
    DOCKER_CRED = credentials("docker-hub")
  }
}
