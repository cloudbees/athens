pipeline {
  agent any
  stages {
    stage('Promote to Environments') {
      when {
        branch 'master'
      }
      steps {
        dir('/home/jenkins/go/src/github.com/cloudbees/athens') {
          git 'https://github.com/cloudbees/athens.git'
          // promote through all 'Auto' promotion Environments
          sh "jx promote -b --all-auto --timeout 1h --version \$(cat VERSION)"
        }
      }
    }
  }
}
