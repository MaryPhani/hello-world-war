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
    stage('Snyk Test') {
            steps {
                echo 'Snyk Testing...'
                snykSecurity (
                    projectName: 'Snyk_security_tool', 
                    snykInstallation: 'snyk@latest', 
                    snykTokenId: 'snyk_api',
                    failOnIssues: false
                )
            }
        }
    stage('sample') {
        steps{
                sh 'echo $AWS_ACCESS_KEY_ID'
                sh 'echo $AWS_SECRET_ACCESS_KEY'
        }
    }
    stage('Dockerbuild'){
           steps {
               sh 'docker build -t mary -'
  }
}
