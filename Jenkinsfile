pipeline{
    agentany
    stages{
        stage('git clone'){
            steps{
                git 'https://github.com/VootlaSaiCharan/testing-website.git'
            }
        }
        stage('clean'){
            steps{
                sh 'rm -rf /var/www/html/*'
            }
        }
        stage('deploy'){
            steps{
                sh 'cp -r * /var/www/html/'
            }
        }
    }
}