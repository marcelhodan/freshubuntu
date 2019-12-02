#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo -e "\e[41mPlease use sudo or run as root...\e[0m"
    exit
fi

sudo curl https://downloads.plex.tv/plex-keys/PlexSign.key | apt-key add -
sudo echo deb https://downloads.plex.tv/repo/deb public main | tee /etc/apt/sources.list.d/plex.list
sudo apt-get update -y
sudo apt-get install plexmediaserver -y
IP_ADDRESS=($(hostname -I)) # read first IP address
sudo systemctl status plexmediaserver && echo "start web ui via: http://$(IP_ADDRESS):32400/web

exit 0
