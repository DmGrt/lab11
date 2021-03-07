pipeline {
    agent any
    tools { 
        maven 'Maven 3.6.3'
        jdk 'jdk-1.8.101'
    }
    stages {
        stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                ''' 
            }
        }
    }
}