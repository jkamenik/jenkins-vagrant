#!/bin/bash

PATH=/usr/bin:/bin:/usr/sbin:/sbin
DEBIAN_FRONTEND=noninteractive

set -x

sudo bash -c 'echo LC_ALL="en_US.UTF-8" >> /etc/default/locale'

sudo apt-get -y autoremove
sudo apt-get -q update
sudo apt-get -y upgrade
sudo apt-get -y install build-essential wget curl git-core jq

# Add a CI user
sudo useradd -p jenkins -m -s /bin/bash jenkins

# install java
sudo apt-get -y install default-jre

# cleanup
sudo apt-get -y autoremove
