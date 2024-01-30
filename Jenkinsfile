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
                script {
                    // Adjusted the credential ID to 'snyk_org_token'
                    snykSecurity (
                        projectName: 'eposhybrid23', 
                        snykInstallation: 'snyk_security', 
                        snykTokenId: 'SNYK-TOKEN',
                        failOnIssues: false
                    )
                }
            }
        }
    stage('sample') {
        steps{
                sh 'echo $AWS_ACCESS_KEY_ID'
                sh 'echo $AWS_SECRET_ACCESS_KEY'
        }
    }
   /* stage('SonarQube analysis') {
//    def scannerHome = tool 'SonarScanner 4.0';
        steps{
        withSonarQubeEnv('sonarqube-9.9.1') { 
        // If you have configured more than one global server connection, you can specify its name
//      sh "${scannerHome}/bin/sonar-scanner"
        sh "mvn sonar:sonar"
    }
        }
        } */
    }
}
