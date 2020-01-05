#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo -e "\e[41mPlease use sudo or run as root...\e[0m"
    exit
fi

sudo apt-get update
sudo apt-get install wget -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f -y
sudo rm -f google-chrome-stable_current_amd64.deb

exit 0
