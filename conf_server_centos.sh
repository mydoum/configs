#! /bin/bash

# Script works on CentOS server 

adduser alvaro
passwd alvaro
usermod -aG wheel alvaro

sudo sed -i "" 's/Defaults    requiretty/#Defaults    requiretty/g' /usr/sbin/visudo

sudo sed -i "" 's/Defaults    ! visiblepw/Defaults    visiblepw/g' /usr/sbin/visudo

# Disable the root login

sudo sed -i "" 's/#PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config

sudo /etc/init.d/sshd restart

# Install App

sudo yum install git
sudo yum install zsh

# Add repos

sudo echo -e "[nginx]\
\nname=nginx repo\
\nbaseurl=http://nginx.org/packages/centos/$releasever/$basearch/\
\ngpgcheck=0\
\nenabled=1" > /etc/yum.repos.d/nginx.repo

sudo echo -e "[mongodb]\
\nname=MongoDB Repository\
\nbaseurl=http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/\
\ngpgcheck=0\
\nenabled=1" > /etc/yum.repos.d/mongodb.repo

# Install website services

sudo yum install nginx
sudo /etc/init.d/nginx start
