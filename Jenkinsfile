pipeline {
    agent none
    stages {
        stage('Pre-Build') {
            agent any
            steps {
                sh 'phpunit tests/'
            }
        }
        stage('Build PHP') {
            agent any
            steps {
                def testImage = docker.build("prestashop", "./package/phpApache")
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
