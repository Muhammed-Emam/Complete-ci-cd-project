import os
import subprocess

os.chdir('./Terraform')

subprocess.run(['terraform', 'destroy', '-auto-approve'])
