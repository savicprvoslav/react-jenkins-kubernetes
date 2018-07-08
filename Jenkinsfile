pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
      label 'my-defined-label'
    }

  }
  stages {
    stage('push') {
      steps {
        echo 'Test'
      }
    }
  }
}
