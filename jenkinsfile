pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout your source code
                checkout scm
            }
        }

        stage('Build') {
            when {
                expression {
                    // Check if the keyword "hema" is in the commit message
                    return currentBuild.changeSets.any { commit ->
                        commit.msg.toLowerCase().contains('hema')
                    }
                }
            }
            steps {
                // Run the work.bat script
                bat 'work.bat'

                // Archive the output.zip file
                archiveArtifacts artifacts: 'output.zip', allowEmptyArchive: true
            }
        }

        stage('Test') {
            steps {
                // Your test steps here
                sh 'echo "Testing..."'
            }
        }

        stage('Deploy') {
            steps {
                // Your deployment steps here
                sh 'echo "Deploying..."'
            }
        }
    }
}
