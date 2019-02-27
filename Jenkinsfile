pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                sh"""
                    echo "Hello World"
                    chmod +777 SetEnvVars.sh
                    ./SetEnvVars.sh
                    chmod -777
                    ch
                """
            }
        }
    }
}