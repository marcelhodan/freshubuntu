#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo -e "\e[41mPlease use sudo or run as root...\e[0m"
    exit
fi

sudo apt-get update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

exit 0
