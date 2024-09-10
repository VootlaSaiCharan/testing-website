pipeline {
    agent any
    stages {
        stage('Clean') {
            steps {
                script {
                    sh 'rm -rf /var/www/html/*'
                }
            }
        }
        stage('Deploy') {
            steps {
                sh 'mv * /var/www/html/'
            }
        }
    }
}