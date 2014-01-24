#!/bin/bash
# outputs text through your speakers using Google Translate
# usage: speak.sh [-l LANG] <text>
# LANG is en (american english) by default
#
# Author: Rodrigo Lopes, rodrigolpscarvalho@gmail.com

lang="en"
if [[ $1 = "-l" ]]; then
	lang=$2
	shift 2
fi
echo "speaking $@ in $lang"
echo $@ > >(wget -q -U Mozilla "http://translate.google.com/translate_tts?ie=UTF-8&tl=$lang&q=$*" -O - | mplayer -cache 8192 - > /dev/null 2>&1)
