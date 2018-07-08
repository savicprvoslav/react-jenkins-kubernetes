pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
      label 'my-defined-label'
    }

  }
  stages {
    when {
        branch 'master'
        }
      steps {
        withDockerRegistry([ credentialsId: "docker-hub", url: "" ]) {
          sh 'docker push pscode/react-jenkins-kuberntes:latest'
        }
      }
  }
}
