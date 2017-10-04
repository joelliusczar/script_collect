#!/bin/bash
clear
for fileItem in /usr/share/cows/* ;do
	cowItem=$(echo $(basename "$fileItem") | sed 's/\([a-zA-Z\-]\+\)\.cow/\1/')
	echo "$cowItem"
	cowsay -f "$cowItem" hello
	echo "Keep?"
	read usrAns
	clear
	[ "$usrAns" = "n" ] && sudo rm "$fileItem" && echo "deleted" || echo "Kept"
done
