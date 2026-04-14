pipeline {
    agent any

    environment {
        APP_VERSION = "1.0"
        BUILD_TS = "${new Date().format('yyyy-MM-dd HH:mm:ss')}"
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh './app.sh'
            }
        }

        stage('Test') {
            steps {
                sh './test.sh'
            }
        }

        stage('Archive Artifacts') {
            steps {
                archiveArtifacts artifacts: 'app.sh', fingerprint: true
            }
        }
    }

    post {

        success {
            echo 'Build Successful'
        }

        failure {
            echo "Build Failed: ${env.BUILD_URL}"
        }

        always {
            cleanWs()
        }
    }
}
