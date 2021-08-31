pipeline {
    agent none
    stages {
        stage('build') {
            agent { docker { image 'php:7.2' } }
            steps {
                sh 'php --version'
            }
        }
        stage('task-2') {
            agent any
            steps {
                sh 'echo "starting executing tests..."'
            }
        }
        stage('task-3') {
            agent any
            steps {
                sh 'echo "starting packaging project..."'
            }
        }
    }
}
