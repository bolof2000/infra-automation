pipeline{

    agent any

    tools {
        terraform 'jenkins-terraform'
    }
    stages{
        stage("Checkout from GIT"){

       steps{

        git credentialsId: 'GIT_HUB_CREDENTIALS',url:'https://github.com/bolof2000/CICD-Docker-kubernetes.git'
    }
        }
     stage("terraform init"){ 
         steps{
             sh 'terraform init'
         }          
     }
      stage("terraform fmt"){ 
         steps{
             sh 'terraform fmt'
         }          
     }

      stage("terraform validate"){ 
         steps{
             sh 'terraform validate'
         }          
     }

      stage("terraform plan"){ 
         steps{
             sh 'terraform plan'
         }          
     }

      stage("terraform apply"){ 
         steps{
             sh 'terraform apply --auto-approve'
         }          
     }         
}
}