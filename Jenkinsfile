pipeline {
    agent any
    stages {
        stage('build') {
        steps {
            echo "Hello world"
        }
    }
    stage('Snyk Test') {
            steps {
                echo 'Snyk Testing...'
                snykSecurity (
                    projectName: 'snyk_api', 
                    snykInstallation: 'snyk@latest', 
                    snykTokenId: 'Snyk_security_tool',
                    failOnIssues: false
                    
                )
            }
        }

  }
}
