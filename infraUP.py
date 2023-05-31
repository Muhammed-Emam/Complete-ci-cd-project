import os
import subprocess

os.chdir('./Terraform')

subprocess.run(['terraform', 'init'])

subprocess.run(['terraform', 'apply', '-auto-approve'])

subprocess.run(['chmod', '400', '/home/emam/iti/complete-ci-cd/Complete-ci-cd-project/terraform/bastion.pem'])

os.chdir('../Ansible')

subprocess.run(['ansible-playbook', 'playbook.yaml'])
