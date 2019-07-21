#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo -e "\e[41mPlease use sudo or run as root...\e[0m"
    exit
fi

sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:team-xbmc/ppa -y
sudo apt-get update -y
sudo apt-get install kodi kodi-pvr-mythtv -y

exit 0
