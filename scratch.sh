#!/bin/bash

hash brew &> /dev/null;
if [ $? -eq 1 ]; then
	ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
	brew doctor
fi

hash git &> /dev/null
if [ $? -eq 1 ]; then
	brew install git
	brew upgrade git
	brew update
fi

hash node &> /dev/null
if [ $? -eq 1 ]; then
	brew install node
fi

hash npm &> /dev/null
if [ $? -eq 1 ]; then
	curl http://npmjs.org/install.sh | sh
	export NODE_PATH="/usr/local/lib/node"
	export PATH="/usr/local/share/npm/bin:$PATH"
fi

hash bower &> /dev/null
if [ $? -eq 1 ]; then
	npm install -g bower
fi

hash wget &> /dev/null
if [ $? -eq 1 ]; then
	brew install wget
fi

if [ ! -d /Applications/Filezilla.app ]; then
	wget http://ncu.dl.sourceforge.net/project/filezilla/FileZilla_Client/3.7.3/FileZilla_3.7.3_i686-apple-darwin9.app.tar.bz2
	tar -xjvf FileZilla_3.7.3_i686-apple-darwin9.app.tar.bz2
	mv Filezilla.app /Applications/
	rm FileZilla_3.7.3_i686-apple-darwin9.app.tar.bz2
fi

brew search python &> /dev/null
if [ $? -eq 1 ]; then
	brew install python
fi

if [ ! -d /Applications/MAMP ]; then

	wget http://downloads.mamp.info/MAMP-PRO/releases/2.2/MAMP_MAMP_PRO_2.2.zip
	tar -xjvf MAMP_MAMP_PRO_2.2.zip
	mv Mamp.app /Applications/
	rm MAMP_MAMP_PRO_2.2.zip
fi

if [ ! -d /Applications/Dash.app ]; then
	wget http://kapeli.com/Dash.zip
	tar -xjvf Dash.zip
	mv Dash.app /Applications/
	rm Dash.zip
	rm -r __MACOSX
fi

#fixme  its for zipeg
if [ ! -d /Applications/Zipeg.app ]; then
	wget http://www.zipeg.net/downloads/zipeg_mac.dmg
	hdiutil mount zipeg_mac.dmg
	sudo cp -R /Volumes/Zipeg/Zipeg.app /Applications/
	hdiutil unmount /Volumes/Zipeg/
	rm zipeg_mac.dmg
fi

# Install specific Web aplications 

if ! hash node 2> /dev/null; then
  	echo "[install] Node.js"
  	brew install node
fi

if ! hash npm 2> /dev/null; then
  	echo "[install] Node Packet Manager"
	brew install npm
  	echo "export NODE_PATH=/usr/local/lib/node" >> ~/.bash_profile
  	export PATH=/usr/local/share/npm/bin:$PATH
	echo "dont forget to add this variable in your env"
	echo "PATH=/usr/local/share/npm/bin:\$PATH"
fi

hash mongod &> /dev/null
if [ $? -eq 1 ]; then
	brew install mongodb
	brew install bzr
fi

hash go &> /dev/null
if [ $? -eq 1 ]; then
	brew install go
	mkdir $HOME/Documents/go
	echo "export GOROOT=$HOME/go" >> ~/.bash_profile
	echo "export GOPATH=$HOME/Documents/go" >> ~/.bash_profile
	brew install python
	echo "export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH" >> ~/.bash_profile
	go get labix.org/v2/mgo
	go get labix.org/v2/mgo/bson
fi
