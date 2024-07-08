pipeline {
    agent any
    stages {
        stage('build') {
            when {
                expression {
                    env.BRANCH_NAME == 'master'
                }
            }
            steps {
                echo 'Building the application...'
            }
        }
        stage('test') {
            when {
                expression {
                    env.BRANCH_NAME == 'test'
                }
            }
            steps {
                echo 'Testing the application...'
            }
        }
        stage('deploy') {
            steps {
                echo 'Deploying the application...'
            }
        }
    }
}
