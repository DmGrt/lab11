node{
    stage('SCM Checkout'){
        git credentialsId: 'git-creds', url: 'https://github.com/DmGrt/lab11.git'
    }
    stage('Mvn clean package'){
        sh 'mvn clean install'
        sh 'mvn -X exec:java -Dexec.mainClass=kpi.acts.appz.bot.hellobot.HelloWorldBot -Dexec.args="\'1628437518:AAHkDppuffbvv3g9ATXSlXa4N83iD-xBSA0\' \'laberman_bot\'"'
    }

}
