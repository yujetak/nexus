pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-credentials')
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Images') {
            steps {
                dir('k8s') {
                    // Makefile의 all 타겟이 이미지 빌드, 설정, 배포를 모두 포함하므로 
                    // Jenkins에서는 개별 단계를 제어하기 위해 build만 따로 호출할 수도 있습니다.
                    sh 'make build' 
                }
            }
        }

        stage('Push to DockerHub') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                sh 'docker push yuje123/my-fastapi'
                sh 'docker push yuje123/my-spring'
                sh 'docker push yuje123/my-nextjs'
                sh 'docker push yuje123/my-postgres'
            }
        }

        stage('Deploy') {
            steps {
                dir('k8s') {
                    // sh 'make config'
                    sh 'make up'
                }
            }
        }
    }

    post {
        always {
            sh 'docker logout'
        }
        success {
            echo '배포 성공'
        }
        failure {
            echo '배포 실패'
        }
    }
}