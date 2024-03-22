pipeline{
agent any 
 environment{
   SCANNER_HOME=tool 'Sonar-Scanner'
 }
 stages{
 stage(' Clean Workspace'){
  steps{
    cleanWs()
  }
 }
  stage('Git Checkout your Code'){
  steps{
    git branch: 'main', changelog: false, credentialsId: 'Git-Hub', poll: false, url: 'https://github.com/tirumalareddysanampudi/Geetha-school-2010.git'
  }
 }
  stage('mvn Compile'){
  steps{
    sh "mvn compile"
  }
 }
  stage('mvn Test'){
  steps{
    sh "mvn test"
  }
 }
  stage('TRIVY FS SCAN Filesystem Scan '){
  steps{
    sh "trivy fs --formate table -o trivy-fsreport.html"
  }
 }
  stage('SonarQube Analysis'){
  steps{
    withSonarQubeEnv(credentialsId: 'sonar-credential-token') {
     sh """ $SCANNER_HOME/bin/Sonar-Scanner -Dsonar.projectName=GeethaGurukulam -Dsonar.projectKey=GeethaKey \ -Dsonar.java.binaries='.'"""
}
  }
 }
  
 }
}
