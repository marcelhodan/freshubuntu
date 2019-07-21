#/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo -e "\e[41mPlease use sudo or run as root...\e[0m"
    exit
fi

sudo apt update
echo ">> install dependencies"
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
echo ">> add docker GPG"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo ">> add docker repo to apt sources"
sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

sudo apt update
sudo apt install -y docker-ce
sudo usermod -aG docker ${USER}

sudo docker run hello-world
sudo docker rmi hello-world
