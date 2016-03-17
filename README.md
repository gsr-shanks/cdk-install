# cdk-install
Install Red Hat Container Development Kit using ansible playbook

Pre-requisite: ansible >= 2.0 ( Available at ftp://195.220.108.108/linux/epel/testing/7/x86_64/a/ansible-2.0.1.0-2.el7.noarch.rpm or pip )

Things to do before you run this playbook:

0. Ensure that you have ssh key based authentication setup to the host.
1. Update cdk-install/ansible_inventory.txt and list your hostname to install CDK under [cdk] group.
2. If your host is RedHat, then update cdk-install/group_vars/all and provide 
    * rhn_method
    * rhn_username
    * rhn_password
    * rhn_org
    * rhn_activationkey
    * cdk_location
3. If required, set 'rhn_server_hostname' in cdk-install/group_vars/all as appropriate.
4. Change directory to cdk-install/scripts and execute "./install-cdk.sh"