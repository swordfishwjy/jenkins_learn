/* Requires the Docker Pipeline plugin */
// pipeline {
//     agent { docker { image 'node:20.10.0-alpine3.19' } }
//     stages {
//         stage('build') {
//             steps {
//                 sh 'node --version'
//             }
//         }
//     }
// }


pipeline {
    agent any
    stages {
        stage('No-op') {
            steps {
                sh 'ls'
            }
        }
    }
    post {
        always {
            echo 'One way or another, I have finished'
            deleteDir() /* clean up our workspace */
        }
        success {
            echo 'I succeeded!'
        }
        unstable {
            echo 'I am unstable :/'
        }
        failure {
            echo 'I failed :('
        }
        changed {
            echo 'Things were different before...'
        }
    }
}