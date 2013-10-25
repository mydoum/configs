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

if [ ! -d /Applications/Mamp.app ]; then

	wget http://downloads.mamp.info/MAMP-PRO/releases/2.2/MAMP_MAMP_PRO_2.2.zip
	tar -xjvf MAMP_MAMP_PRO_2.2.zip
	mv Mamp.app /Applications/
	rm MAMP_MAMP_PRO_2.2.zip
fi
