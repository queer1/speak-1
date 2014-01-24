#!/bin/bash
# write an English text string as an audio file using Google Translate
# usage: en2audio.sh <text>
lang="en"
if [[ $1 = "-l" ]]; then
	lang=$2
	shift 2
fi
echo "speaking in $lang"
echo $@ > >(wget -q -U Mozilla "http://translate.google.com/translate_tts?ie=UTF-8&tl=$lang&q=$*" -O - | mplayer -cache 8192 - 2>1 > /dev/null)
