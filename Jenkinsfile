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
                git branch: 'main', url: 'https://github.com/venky-2-003/HOTSTAR-Project.git'
            }
        }

        stage('Build with Maven') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh "docker build -t ${DOCKER_IMAGE}:${DOCKER_TAG} ."
            }
        }

        stage('Push Docker Image') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds',
                                                 usernameVariable: 'DOCKER_USER',
                                                 passwordVariable: 'DOCKER_PASS')]) {
                    sh """
                    echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
                    docker push ${DOCKER_IMAGE}:${DOCKER_TAG}
                    docker logout
                    """
                }
            }
        }

        stage('Run Container') {
            steps {
                sh """
                docker rm -f ${CONTAINER_NAME} || true
                docker run -d --name ${CONTAINER_NAME} -p 8080:8080 ${DOCKER_IMAGE}:${DOCKER_TAG}
                """
            }
        }
    }
}
