#!/bin/bash
#sudo -s
apt-get update
apt-get install -y git
ssh-keyscan github.com >> ~/.ssh/known_hosts
apt install -y maven
apt install openjdk-11-jdk-headless

git clone https://github.com/evermanisha/spring-petclinic-rest

cd spring-petclinic-rest/
mvn install
cd target

java -jar spring-petclinic-rest-2.4.2.jar



#cd spring-petclinic-rest/
#./mvnw spring-boot:run
#apt-get update
#
#sudo apt-get remove docker docker-engine
#
#sudo apt-get install \
#    apt-transport-https \
#    ca-certificates \
#    curl \
#    software-properties-common
#
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#sudo apt-key fingerprint 0EBFCD88
#
#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs) stable"
#sudo apt-get update
#sudo apt-get -y upgrade
#sudo apt-get install -y docker-ce
#
#sudo groupadd docker
#sudo usermod -aG docker ubuntu
#
#sudo systemctl enable docker
