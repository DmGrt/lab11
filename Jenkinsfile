pipeline {
     agent any

    stages {

         stage('build Dockerfile') {

            steps {
                sh '''echo "FROM maven:3-alpine
                          RUN apk add --update docker openrc
                          RUN rc-update add docker boot" >/var/jenkins_home/workspace/Dockerfile'''

            }
         }

         stage('run Dockerfile') {
             agent{
                 dockerfile {
                            filename '/var/jenkins_home/workspace/Dockerfile'
                            args '--user root -v $HOME/.m2:/root/.m2  -v /var/run/docker.sock:/var/run/docker.sock'
                        }
             }

             steps {
                 sh 'docker version'
                 sh 'mvn -version'
                 sh 'java -version'
             }

         }

    }
}