pipeline {
  agent {
	docker {
      image 'maven:3-alpine'
      args '-v /root/.m2:/root/.m2'
    }
  }
  stages {
    stage('Docker Build') {
      steps {
        sh 'docker build -t taskmanager-db:1.0 .'
      }
    }
	
	stage('Docker Run') {
      steps {
		sh 'docker run -d -p 3306:3306 --name taskmanager-db taskmanager-db:1.0'
      }
    }
  }
}