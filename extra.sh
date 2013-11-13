#!/bin/bash

if [ ! -d /Applications/Ifunbox.app ]; then
	wget http://dl.i-funbox.com/mac/ifunboxmac.1.2.dmg
	hdiutil mount ifunboxmac.1.2.dmg
	sudo cp -R /Volumes/iFunBox/iFunBox.app/ /Applications/
	hdiutil unmount /Volumes/iFunBox
	rm ifunboxmac.1.2.dmg
fi
