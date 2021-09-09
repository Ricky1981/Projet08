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
                  // On ajoute le -d pour le mode detached car sinon jenkins ne s'arrete jamais...  
                  sh 'docker-compose up -d'
                }
            }
        }
        stage('Test') {
            agent any
            steps {
                sh 'pytest test_projet08.py'
            }
        }
    }
}
