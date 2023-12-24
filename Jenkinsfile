pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                script {
                    // Checkout the code from your GitLab repository
                    git 'https://github.com/VootlaSaiCharan/testing-website.git'
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                // Build Docker image with a version tag
                sh 'docker build -t vootlasaicharan/testing-image:v1 .'
            }
        }
        stage('pushing image'){
            steps {
                sh 'docker login -u "vootlasaicharan" -p "charan@Akash.98" docker.io'
                sh 'docker push vootlasaicharan/testing-image:v1'
            }
        }
        stage('Create Container and run') {
            steps {
                // Run Docker container
                sh 'docker run -d --name fwebsite -p 80:80 vootlasaicharan/testing-image:v1'
            }
        }
    }
}