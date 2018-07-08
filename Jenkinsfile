pipeline {
  agent any
  stages {
    stage('push') {
      steps {
        sh 'printenv'
        sh 'docker build . -t ${GIT_COMMIT}'
        sh 'docker login -p ${DOCKER_CRED_PSW} -u ${DOCKER_CRED_USR}'
        sh 'docker tag ${GIT_COMMIT} ${TAG}'
        sh 'docker push ${TAG}'
      }
    }
  }
  environment {
    DOCKER_CRED = credentials("docker-hub")
    TAG = 'savicprvoslav/react:${BRANCH_NAME}${BUILD_ID}'
  }
}
