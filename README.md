# Full CI/CD Project


    
## Tools
    • Users can create a project fundraising campaign, which includes the following information:
      
        ◦ Python: Used building and destroying the infrastructure.
        ◦ Docker: Used for containerization and packaging of the web app.
        ◦ Kubernetes: Orchestrates and manages the deployment of containers.
        ◦ Terraform: Automates the provisioning of infrastructure resources.
        ◦ Ansible: Configures and manages the infrastructure and deployment.
        ◦ Jenkins: Provides a continuous integration and delivery platform.
        ◦ Amazon Web Services (AWS): Cloud platform used for hosting infrastructure.


## Getting Started



    ◦ git clone the repo

 



## Steps:

    ◦ Create a simple web app: Develop a basic web application that will serve as the foundation for the project.
    ◦ Create a Dockerfile for the web app: Define the necessary instructions and dependencies to build a Docker  image of the web app.

    ◦ Provision infrastructure using Terraform: Automate the creation of infrastructure resources, such as virtual machines or containers, using Terraform.
        ◦ python3 infraUP.py

    ◦ Configure a bastion host using Ansible: Use Ansible to set up and configure a secure bastion host, which acts as a gateway for accessing other hosts in the network.
    


    ◦ Deploy Jenkins using Ansible: Automate the installation and configuration of Jenkins, a continuous integration and delivery tool, using Ansible.
        ◦ kubectl logs jenkins-deployment-2539456353-j00w5 (pod's name) --namespace=devops-tools
            this will display jenkins's password 
    ◦ Configure Jenkins to use the bastion host as a slave: Set up Jenkins to utilize the bastion host as a remote slave for distributed builds and deployments.
   
    

    ◦ Create a Jenkins pipeline: Define a pipeline in Jenkins that includes stages for building the Docker image, pushing it to a Docker Hub repository, and deploying the web app in a Kubernetes cluster using the Docker image.
   
