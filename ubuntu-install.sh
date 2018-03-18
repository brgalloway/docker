#!/bin/bash
#
# Installing Docker CE
# 

apt update

# allow apt to use https
apt-get install \
apt-transport-https \
ca-certificates \
curl \
software-properties-common

# Pull down Docker GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

read -p "Choose install type: [e for edge s for stable]" choice 

if [ choice = "s" ]
then
  add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"
  apt update

  apt install -y docker-ce
else
  curl -fsSL get.docker.com -o get-docker.sh; sh get-docker.sh
fi
