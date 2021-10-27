pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'build success'
        sh '''xcodebuild -scheme SwiftUIdemo -configuration Debug build test \\
  -destination \'platform=iOS Simulator,name=iPhone 12 mini\'
'''
      }
    }

  }
}
