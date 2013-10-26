#! /bin/bash

# Script works on CentOS server 

adduser alvaro
passwd alvaro
usermod -aG wheel alvaro

sudo sed -i "" 's/Defaults    requiretty/#Defaults    requiretty/g' /usr/sbin/visudo

sudo sed -i "" 's/Defaults    ! visiblepw/Defaults    visiblepw/g' /usr/sbin/visudo

# Disable the root login

sudo sed -i "" 's/#PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config

