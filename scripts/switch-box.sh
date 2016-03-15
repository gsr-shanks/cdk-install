#!/usr/bin/env bash

while true; do
    read -p "Switch to: " input
    case $input in
        "k8s" ) cd ~/cdk/components/rhel/misc/rhel-k8s-singlenode-setup; vagrant ssh; cd ~;;
     	"ose" ) cd ~/cdk/components/rhel/rhel-ose; vagrant ssh; cd ~;;
        * ) echo "Un-supported input"
    esac
done