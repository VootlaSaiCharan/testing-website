pipeline{
    agent any
    stages{
        stage('git clone'){
            steps{
                git 'https://github.com/VootlaSaiCharan/testing-website.git'
                sh  'cd testing-website'

            }
        }
        stage('clean'){
            steps{
                sh 'rm -rf /var/www/html/*'
            }
        }
        stage('deploy'){
            steps{
                sh 'cp -r testing-website/* /var/www/html/'
            }
        }
    }
}