pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'build success'
        sh 'bundle update --bundler'
        sh 'bundle exec fastlane build'
      }
    }

  }
}
