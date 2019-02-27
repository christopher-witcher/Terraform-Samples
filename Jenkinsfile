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
                    
                    chmod +777 Deploy.sh
                    echo "Setting environment variables for Terraform"
                    export ARM_SUBSCRIPTION_ID='ba158891-56de-4b98-99c6-b72bdcf8fc5a'
                    export ARM_CLIENT_ID='343df15a-7d73-4f71-a85c-8452ea8ebd9a'
                    export ARM_CLIENT_SECRET='WG1DLaGaeE8XBGbrt65qKEddHSO3IqfIprGOkFu4K38='
                    export ARM_TENANT_ID='7ed6efe3-5423-4a59-b268-750ff1a73525'

                    #disable SSL Pass Through for Login Az Cli
                    export ADAL_PYTHON_SSL_NO_VERIFY=1
                    export AZURE_CLI_DISABLE_CONNECTION_VERIFICATION=1

                    ./Deploy.sh
                    
                """
            }
        }
    }
}