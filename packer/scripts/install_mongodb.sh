#!/bin/bash
set -e

# Install MongoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv E52529D4
sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.0 multiverse" > /etc/apt/sources.list.d/mongodb-org-4.0.list'
sudo apt update
sudo apt install -y mongodb-org
sudo mv /etc/mongod.conf /etc/mongod.conf.backup
sudo mv /tmp/mongod.conf /etc/mongod.conf
sudo systemctl enable mongod.service
sudo systemctl start mongod.service
