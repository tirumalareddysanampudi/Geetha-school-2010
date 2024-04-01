pipeline{
agent any 
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
 
}
}
