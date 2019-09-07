#/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo -e "\e[41mPlease use sudo or run as root...\e[0m"
    exit
fi

echo ">> download stable version"
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
echo ">> make binary executable"
sudo chmod +x /usr/local/bin/docker-compose
echo ">> test installation"
docker-compose --version
