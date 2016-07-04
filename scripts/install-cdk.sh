#!/usr/bin/env bash

export ANSIBLE_SSH_CONTROL_PATH='%(directory)s/%%h-%%r'
export ANSIBLE_HOST_KEY_CHECKING="False"

echo "1. Red Hat Enterprise Linux"
echo "2. Fedora"
echo "3. Mac OS X"
read -p "Select operating system option to install Container Development Kit: " OS

case "$OS" in
    1)
        ansible-playbook -i ../ansible_inventory.txt ../cdk.yml -t setup,rhel -e "skip_registration=true"
        ;;
    2)
        ansible-playbook -i ../ansible_inventory.txt ../cdk.yml -t setup,fedora -e "skip_registration=true"
        ;;
    3)
        ansible-playbook -i ../ansible_inventory.txt ../cdk.yml -t setup,osx -e "skip_registration=true"
        ;;
    *)
        echo "Unabled to install on specified operating system"
        ;;
esac