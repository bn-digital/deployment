#!/bin/bash

set -e

SSH_KEY="~/.ssh/id_ed25519"

cd terraform
terraform init
terraform apply --auto-approve
droplet_ip=$(terraform output -raw droplet_ip)

cd ../playbooks
echo "[droplets]" > inventory.ini
echo "$droplet_ip ansible_ssh_private_key_file=$SSH_KEY ansible_user=root" >> inventory.ini
ansible-playbook site.yaml
