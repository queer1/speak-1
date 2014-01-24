Speak
=====

Little bash script that outputs spoken text through your speaker

Requirements
------------

`mplayer`, `wget` and `lame` (for mp3)

	sudo apt-get install mplayer wget lame

Installation
------------

	git clone https://github.com/rodrigolc/speak.git speak
	chmod +x speak/speak.sh
	sudo cp speak/speak /usr/sbin/speak #or wherever you want

Usage
-----

	speak [-l LANG] text to output
	#LANG is "en"(american english) by default


