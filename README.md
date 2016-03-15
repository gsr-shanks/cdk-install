# cdk-install
Install Red Hat Container Development Kit using ansible playbook

Things to do before you run this playbook:

1. Update cdk-install/ansible/ansible_inventory.txt and list your hostname to install CDK under [RedHat] group.
2. Update cdk-install/ansible/group_vars/RedHat and provide 
    * rhn_method
    * rhn_username
    * rhn_password
    * rhn_org
    * rhn_activationkey
    * cdk_location
3. Change directory to cdk-install/scripts and execute "./install-cdk.sh"