#!/bin/bash

#AWS CLI installation package
sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-2.8.9.zip" -o "awscliv2.zip"

# update the package repositories and install the unzip and openjdk-11-jdk
sudo apt update
sudo apt install unzip -y
sudo apt install openjdk-11-jdk -y

# unzip the AWS CLI package and install it
sudo unzip awscliv2.zip
sudo ./aws/install

# create directories and a credentials file in the /home/ubuntu/ directory
sudo mkdir /home/ubuntu/.aws/
sudo mkdir /home/ubuntu/jenkins/
sudo touch /home/ubuntu/.aws/credentials



# save the private key in the bastion
echo '${tls_private_key.rsa.private_key_openssh}' > /home/ubuntu/bastion.pem
chmod 0400 /home/ubuntu/bastion.pem

# download the kubectl binary, make it executable, and move it to the $HOME/bin directory, put it in bashrc to use it as ENV.
curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.26.2/2023-03-17/bin/linux/amd64/kubectl
chmod +x ./kubectl
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$HOME/bin:$PATH
echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc


