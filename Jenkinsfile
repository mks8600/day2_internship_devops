pipeline {
    agent any // Specifies where the pipeline will run. 'any' means on any available agent.

    stages {
        stage('Build Docker Image') { // First stage: build the Docker image
            steps {
                script {
                    echo 'Building Docker image...'
                    // Build the Docker image from the Dockerfile in the current directory
                    // Tag it as 'my-devops-app:latest'
                    sh 'docker build -t my-devops-app:latest .'
                    echo 'Docker image built successfully.'
                }
            }
        }

        stage('Run Docker Container') { // Second stage: deploy by running the Docker container
            steps {
                script {
                    echo 'Stopping and removing old container (if exists)...'
                    // Stop any running container named 'my-devops-app-container'
                    sh 'docker stop my-devops-app-container || true'
                    // Remove any stopped container named 'my-devops-app-container'
                    sh 'docker rm my-devops-app-container || true'

                    echo 'Running new Docker container...'
                    // Run the new Docker container in detached mode (-d)
                    // Name it 'my-devops-app-container'
                    // Map port 80 on the host to port 3000 inside the container
                    sh 'docker run -d --name my-devops-app-container -p 80:3000 my-devops-app:latest'
                    echo 'Docker container deployed and running on port 80.'
                }
            }
        }
    }

    post { // Actions to perform after the pipeline finishes
        always {
            echo 'Pipeline finished.'
        }
        success {
            echo 'Pipeline succeeded!'
        }
        failure {
            echo 'Pipeline failed! Check logs for details.'
        }
    }
}