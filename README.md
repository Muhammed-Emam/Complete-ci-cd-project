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
            

    ◦ Configure Jenkins to use the bastion host as a slave: Set up Jenkins to utilize the bastion host as a remote slave for distributed builds and deployments.![Screenshot from 2023-06-01 01-50-12](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/d78b2807-532f-4535-a202-b878f94bf09e)

   
![Screenshot from 2023-06-01 01-55-55](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/08001bfb-2d19-42fe-b339-1043a6c053d3)


    ◦ Create a Jenkins pipeline: Define a pipeline in Jenkins that includes stages for building the Docker image, pushing it to a Docker Hub repository, and deploying the web app in a Kubernetes cluster using the Docker image.
    
    ![Screenshot from 2023-06-01 01-50-12](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/bfd4eaa3-35f3-4c30-846b-5252d9c60e2d)


![Screenshot from 2023-06-01 01-52-23](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/91de7ca8-f269-42fa-86cd-5fa800e0233a)


![Screenshot from 2023-06-01 01-52-58](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/8315cfab-cdca-400b-9a49-afe2937583fb)
![Screenshot from 2023-06-01 00-49-14](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/06128a16-5d18-44cb-b30e-97b6ca1b7ce8)
![Screenshot from 2023-06-01 00-50-14](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/b2fb4163-dc04-41ec-b49c-f007e0f32d7d)
![Screenshot from 2023-06-01 00-51-07](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/5a2bbe21-ef7e-4edd-a62d-43c8fa59670e)
![Screenshot from 2023-06-01 00-51-15](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/c0583971-2392-4461-8d85-46cb8444f55e)
![Screenshot from 2023-06-01 00-51-20](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/6e2a4734-b401-45d1-b4f5-1594cf84e6b5)
![Screenshot from 2023-06-01 00-51-51](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/6a2dc90b-3ced-4080-b300-f353e1f19f43)
![Screenshot from 2023-06-01 00-52-10](https://github.com/Muhammed-Emam/Complete-ci-cd-project/assets/118661263/cb947b87-770e-4961-af6a-96768f95de37)
