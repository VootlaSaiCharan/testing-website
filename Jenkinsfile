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
        // stage (clean) {
        //     steps{
        //         script{
        //             sh 'rm -rf /var/www/html/*'
        //         }
        //     }
        // }
        // stage (deploy) {
        //     steps{
        //         script{
        //             sh 'mv * /var/www/html'
        //         }
        //     }
        // }
        stage (Image Creation) {
            steps{
                script{
                    sh 'docker build -t vootlasaicharan/testing-image:v1 .'
                }
            }
        }
        stage (pushing image){
            steps{
                script{
                    sh 'docker push vootlasaicharan/testing-image:v1'
                }
            }
        }
        stage (run the image){
            steps{
                script{
                    sh 'docker run -d --name website-test -p 80:80 vootlasaicharan/testing-image:v1'
                }
            }
        }
    }
}