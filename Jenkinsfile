pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'build success'
        sh 'sudo bundle update --bundler'
         sh 'sudo bundle install'
        sh 'bundle exec fastlane build'
      }
    }

  }
}
