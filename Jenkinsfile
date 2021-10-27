pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'build success'
//         sh 'sudo bundle update --bundler'
//          sh 'sudo bundle install'
        sh '''
                    source $HOME/.zshrc
                   
                    bundle exec fastlane quality_gate_check
                '''

//         sh 'bundle exec fastlane build'
      }
    }

  }
}
