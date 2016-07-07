#!/usr/bin/env bash

export ANSIBLE_SSH_CONTROL_PATH='%(directory)s/%%h-%%r'
export ANSIBLE_HOST_KEY_CHECKING="False"

echo "1. Red Hat Enterprise Linux"
echo "2. Fedora"
echo "3. Mac OS X"
read -p "Select operating system option to install Container Development Kit: " OS

case "$OS" in
    1)
        ansible-playbook -i ../ansible_inventory.txt ../cdk.yml -t setup,rhel
        ;;
    2)
        ansible-playbook -i ../ansible_inventory.txt ../cdk.yml -t setup,fedora
        ;;
    3)
        ansible-playbook -i ../ansible_inventory.txt ../cdk.yml -t setup,osx 
        ;;
    *)
        echo "Unable to install on specified operating system"
        ;;
esac
