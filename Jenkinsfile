pipeline {
    agent none
    stages {
        stage('Pre-Build') {
            agent any
            steps {
                sh 'phpunit tests/'
            }
        }
        stage('Build') {
            agent any
            steps {
                // dir ('package/phpApache/') {
                  sh 'docker build -t prestashop .'
                // }
                dir ('package/mariadb/') {
                  sh 'docker build -t mariadbpresta .'
                }
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
