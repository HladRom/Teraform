#!/bin/bash
terraform -chdir=./terraform plan
terraform -chdir=./terraform apply
ansible-playbook ./ansible/main.yml -i ./ansible/inventory