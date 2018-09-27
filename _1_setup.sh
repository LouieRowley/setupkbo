#!/bin/bash
echo "get latest updates"
sudo apt-get update

echo "install keys"
sudo apt-key adv --keyserver hkp://p80.POOL.SKS-KEYSERVERS.NET:80 --recv-keys 58118e89f3a912897c070adbf76221572c52609d

echo "instal docker repo"
sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'

echo "get latest updates"
sudo apt-get update

#echo "show docker as candidate"
#apt-cache policy docker-engine
echo "install docker engine and start"
sudo apt-get install -y docker-engine
sudo systemctl status docker > status.log
nano status.log

echo "get toolbox docker"
sudo docker pull kobotoolbox/kobocat

