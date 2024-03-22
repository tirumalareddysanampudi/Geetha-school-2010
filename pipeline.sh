pipeline{
agent any 
 tools{
 
 }
 environment{
 
 }
 stages{
 stage(' Clean Workspace'){
  steps{
    cleanWs()
  }
 }
  stage('Git Checkout your Code'){
  steps{
    //shell 
  }
 }
  stage('mvn Compile'){
  steps{
    //shell 
  }
 }
  stage('mvn Test'){
  steps{
    //shell 
  }
 }
  stage('mvn Filesystem Scan '){
  steps{
    //shell 
  }
 }
  stage('SonarQube Analysis'){
  steps{
    //shell 
  }
 }
  stage('Quality-Gate'){
  steps{
    //shell 
  }
 }
  stage('mvn Build'){
  steps{
    //shell 
  }
 }
  stage('Publish To Nexus'){
  steps{
    //shell 
  }
 }
  stage('Build & Tag Docker Images'){
  steps{
    //shell 
  }
 }
  stage('Docker Image Scan'){
  steps{
    //shell 
  }
 }
  stage('Push Docker Image'){
  steps{
    //shell 
  }
 }
  stage('Deploy To Kubernetes'){
  steps{
    //shell 
  }
 }
  stage('Verify the Deployment'){
  steps{
    //shell 
  }
 }

post {

}
 }
}
