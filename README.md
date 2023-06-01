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

=
            
            

![Screenshot from 2023-06-01 00-49-14](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/a3c70e04-6f1c-40f3-a418-9b601a397f08)
![Screenshot from 2023-06-01 00-50-14](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/62ace282-c13f-408e-9951-83fac6c5aef7)
![Screenshot from 2023-06-01 00-51-07](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/6f4c135c-2775-4c3a-81fe-600046cafc67)
![Screenshot from 2023-06-01 00-51-15](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/7bd88c9c-a414-49c2-baa8-4bbeb7e728a4)
![Screenshot from 2023-06-01 00-51-20](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/1793af51-dbdc-4e12-a2e5-0a1e3157e24a)
![Screenshot from 2023-06-01 00-51-51](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/0a50386d-e7f3-4fac-b1e0-d7b79cb7f1d0)
![Screenshot from 2023-06-01 00-52-10](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/dbd1cfb6-deeb-4fa0-b7e9-162174e81f60)


