pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: 'main']], extensions: [], 
                userRemoteConfigs: [[url: 'https://github.com/AnandJVishwakarma/django_crud.git']]])
            }
        }
        stage('Build') {
            steps {
                git branch: 'main', url: 'https://github.com/AnandJVishwakarma/django_crud.git'
                sh 'docker build -t anand7715/devopslearning:djangocrud .'
            }
        }
        stage('Push') {
            steps {
                sh 'docker push anand7715/devopslearning:djangocrud'
            }
        }

        stage('deploy') {
            steps {
                 sh 'docker run -d -p 5000:5000 anand7715/devopslearning:djangocrud'
            }
        }
    }
}
