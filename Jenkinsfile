pipeline {
  agent {
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t taskmanager-db:1.0 .'
		sh 'docker run -d -p 3306:3306 --name taskmanager-db taskmanager-db:1.0'
      }
    }
  }
}