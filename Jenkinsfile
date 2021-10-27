pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'export PATH=$(PATH):/usr/local/bin'
         sh 'bundle exec fastlane build'
      }
    }

  }
}
