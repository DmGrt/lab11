pipeline {
    agent {
        docker {
            image '3.6.3-jdk-8'
            args '-p 3000:3000 -p 5000:5000'
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
            sh "mvn clean install exec:java -Dexec.mainClass=kpi.acts.appz.bot.hellobot.HelloWorldBot -Dexec.args="'1628437518:AAHkDppuffbvv3g9ATXSlXa4N83iD-xBSA0' 'laberman_bot'""
                 }
        }
    }
}