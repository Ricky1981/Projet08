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
                  sh 'docker build -t prestashopsry .'
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
                sh '''
                    docker exec -i mariadbpresta bash < package/pingmaria.sh
                    echo "OK on est pas mal"
                '''
                timeout(time: 3, unit: 'MINUTES') {
                    sh '''
                        pip3 install junit-xml
                        pytest --junitxml="report.xml" test_projet08.py
                    '''
                }
                // dir ('package/') {
                //   sh 'docker-compose down'
                // }
            }
        }
        post {
        always {
            junit 'build/reports/**/*.xml'
        }
    }
        // stage('PublishReport') {
        //     steps {
        //         publishHTML (target: [
        //         allowMissing: false,
        //         alwaysLinkToLastBuild: false,
        //         keepAll: true,
        //         reportDir: 'coverage',
        //         reportFiles: 'report.html',
        //         reportName: "RCov Report"
        //         ])
        //     }
        // }
    }
}
