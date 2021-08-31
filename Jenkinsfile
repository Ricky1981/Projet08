pipeline {
    agent none
    stages {
        stage('build') {
            agent any
            steps {
                sh 'phpunit tests/'
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
