#!/usr/bin/env bash

#!/usr/bin/env bash
sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get update -y &&
 sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -  &&

    sudo apt-key fingerprint 0EBFCD88 &&


sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"  -y &&

   sudo apt-get update -y &&

   sudo apt-get install docker-ce docker-ce-cli containerd.io  -y  &&

sudo docker version

sudo curl -L https://github.com/docker/compose/releases/download/1.25.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose


