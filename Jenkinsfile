node {
  stage ('Build') {
    git url: 'https://github.com/DmGrt/lab11'
    withMaven {
      sh "mvn clean install"
    } // withMaven will discover the generated Maven artifacts, JUnit Surefire & FailSafe reports and FindBugs reports
  }
}