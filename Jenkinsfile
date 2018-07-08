pipeline {
  agent any
  stages {
    stage('push') {
      steps {
        sh 'printenv'
        sh 'docker build . -t ${GIT_COMMIT}'
        sh 'docker login -p ${DOCKER_CRED_PSW} -u ${DOCKER_CRED_USR}'
        sh 'docker tag ${GIT_COMMIT} savicprvoslav/react:${BRANCH_NAME}${BUILD_ID}'
        sh 'docker push savicprvoslav/react:${BRANCH_NAME}${BUILD_ID}'
      }
    }
  }
  environment {
    DOCKER_CRED = credentials("docker-hub")
  }
}
