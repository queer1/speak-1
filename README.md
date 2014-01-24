Speak
=====

Little bash script that outputs spoken text through your speaker 
Made with love to freak out people at home

Requirements
------------

`mplayer`, `wget` and `lame` (for mp3)

	sudo apt-get install mplayer wget lame

Installation
------------

	git clone https://github.com/rodrigolc/speak.git speak
	chmod +x speak/speak.sh
	sudo cp speak/speak /usr/sbin/speak #or wherever

Usage
-----

	speak [-l LANG] text to output
	#LANG is "en"(american english) by default

Updating
--------

Pull the repository again and update the script

	cd speak
	git pull
	chmod +x speak.sh
	sudo cp speak.sh /usr/sbin/speak #again, wherever

