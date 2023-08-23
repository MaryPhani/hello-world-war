pipeline {
    agent any
    environment {
    AWS_ACCESS_KEY_ID = "aws"
    AWS_SECRET_ACCESS_KEY = "pass"
    }
    stages {
        stage('build') {
        steps {
            echo "Hello tfytf"
        }
    }
        stage('Semgrep-Scan') {
          steps {
            sh 'pip3 install semgrep'
            sh 'semgrep ci'
          }
      }
    }
  }
  }
