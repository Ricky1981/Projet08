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
                '''
                    docker exec -i mariadbpresta bash < package/pingmaria.sh'
                    pip3 install pytest-html 
                '''
                timeout(time: 3, unit: 'MINUTES') {
                    sh 'pytest --html=report.html --self-contained-html test_projet08.py'
                }
                // dir ('package/') {
                //   sh 'docker-compose down'
                // }
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
