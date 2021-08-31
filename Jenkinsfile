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
            agent { docker { image 'httpd:2.4' } }
            steps {
                sh 'COPY * /usr/local/apache2/htdocs/'
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
