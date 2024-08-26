pipeline {
    agent any

    stages {
        stage('code cloning') {
            steps {
                git 'https://github.com/satyapujari06/Django-WebApp.git'
            }
        }
        stage('convert artifacts to docker image') {
            steps {
                sh 'docker build -t sree .'
            }
        }
        stage('upload docker image to hub') {
            steps {
                sh 'docker push satyapujari/django:latest '
            }
        }
    }
}
