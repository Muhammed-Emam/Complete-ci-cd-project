# Full CI/CD Project
![hqdefault](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/5108b8fa-21ef-4b93-8b85-9439441cc787)
![image](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/43ea424a-4eb4-444d-9d41-45534581c8f3)

    
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
            
            ![Screenshot from 2023-06-01 01-48-22](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/bf9b68e1-9b95-4a70-b0d3-07b180e76e22)
            [Screenshot from 2023-06-01 01-49-35](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/d20ad762-3bfb-4fcb-98df-da922217e66a)

    ◦ Configure Jenkins to use the bastion host as a slave: Set up Jenkins to utilize the bastion host as a remote slave for distributed builds and deployments.
   
             ![Screenshot from 2023-06-01 01-55-55](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/a09b688d-d3cc-4ac6-809c-aa46d6e5a117)


    ◦ Create a Jenkins pipeline: Define a pipeline in Jenkins that includes stages for building the Docker image, pushing it to a Docker Hub repository, and deploying the web app in a Kubernetes cluster using the Docker image.
    ![Screenshot from 2023-06-01 01-50-12](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/ed2a8c76-dee9-441f-baf7-cdbc67a1bbcb)
            ![Screenshot from 2023-06-01 01-52-23](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/7012c2cf-86c9-4842-a9e6-b09bb8bd0046)
            ![Screenshot from 2023-06-01 01-52-58](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/dbfb790b-8658-44a4-8c1a-7fb5d8d58b1f)
            ![Screenshot from 2023-06-01 00-49-14](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/3282a44a-b2d1-4518-bd11-7334a48381ef)

    ![Screenshot from 2023-06-01 00-50-14](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/266ac439-4923-4faa-9198-37d253edd59e)

            ![Screenshot from 2023-06-01 00-51-07](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/d9b0dad8-c2a5-44ff-a881-1ab95801e3c4)
            ![Screenshot from 2023-06-01 00-51-51](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/a47a97cf-1f51-419b-bbcf-c687e3f9d072)
            ![Screenshot from 2023-06-01 00-52-10](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/84f5ffc9-f6d9-42f8-a10d-389bf10b1134)



