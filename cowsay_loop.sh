#!/bin/bash
#this loops through all the cowsay files, prints them to the console, and prompts the user if the cow should be kept.
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
