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
                    projectName: 'Snyk_security_tool', 
                    snykInstallation: 'snyk@latest', 
                    snykTokenId: 'snyk_api',
                    failOnIssues: false
                    
                )
            }
        }

  }
}
