#!/bin/bash

# basic patching
sudo yum -y update

# docker
sudo yum -y install docker
sudo service docker start

# docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# git
sudo yum install git

# clone repo
git clone https://github.com/rafaelmarques7/multi-docker-hello.git

# cd to repo
cd multi-docker-hello/

# run app
sudo docker-compsoe up