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
                dir ('package/') {
                  sh 'docker-compose up'
                }
            }
        }
        stage('Test') {
            agent any
            steps {
                sh 'echo "On est pas mal..."'
            }
        }
    }
}
