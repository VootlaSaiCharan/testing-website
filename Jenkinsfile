pipeline{
    agent any
    stages{
        stage (clone){
            steps{
                script{
                    git 'https://github.com/VootlaSaiCharan/testing-website.git'
                }
            }
        }
        stage (clean) {
            steps{
                script{
                    sh 'rm -rf /var/www/html/*'
                }
            }
        }
        stage (deploy) {
            steps{
                script{
                    sh 'mv * /var/www/html'
                }
            }
        }
    }
}