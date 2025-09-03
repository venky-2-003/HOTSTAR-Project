pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "your-dockerhub-username/java-project-maven-new"
        DOCKER_TAG = "latest"
        CONTAINER_NAME = "HOTSTAR-CONTAINER"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Naveen1-6/HOTSTAR-Project.git'
            }
        }

        stage('Build with Maven') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh """
                    docker build -t ${DOCKER_IMAGE}:${DOCKER_TAG} .
                    """
                }
            }
        }

        stage('Deploy Container') {
            steps {
                script {
                    sh """
                    # Remove old container if it exists
                    docker rm -f ${CONTAINER_NAME} || true

                    # Run new container
                    docker run -d --name ${CONTAINER_NAME} -p 8085:8080 ${DOCKER_IMAGE}:${DOCKER_TAG}
                    """
                }
            }
        }
    }
}
