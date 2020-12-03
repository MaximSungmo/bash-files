#!/bin/bash

echo "This file is for easy docker installation"
echo "Made by MaximSungMo ^_^"

echo "-------------yum update-------------"
sudo yum -y update

echo "-------------check and remove the previous docker file-------------"
sudo yum remove -y docker docker-common docker-selinux docker-engine

echo "-------------install mandatory package for docker installation-------------"
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

echo "-------------install docker-------------"
sudo yum install -y docker-ce

echo "-------------docker start and enroll docker service -------------"
sudo systemctl start docker
sudo systemctl enable docker

echo "-------------add current user on docker group-------------"
sudo usermod -aG docker $USER

echo "-------------example run-------------"
sudo docker run --rm hello-world

echo "-------------Congratulations. Installation is complete. -------------"
