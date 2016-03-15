#!/usr/bin/env bash

export ANSIBLE_SSH_CONTROL_PATH='%(directory)s/%%h-%%r'
export ANSIBLE_HOST_KEY_CHECKING="False"
ansible-playbook -i ../ansible/ansible_inventory.txt ../ansible/cdk.yml
