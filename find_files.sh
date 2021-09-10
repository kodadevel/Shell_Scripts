#!/bin/bash

if [ $USER != "root" ]
then
	echo "sorry tou must be in root, or use sudo"
else
	
	read -p "Please enter file name: " FILE
	echo "Searching..."
	FIND=$(find / -iname "$FILE*" 2> /dev/null)
	for file in $FIND; do
		echo "Found: $file"
	done
fi
exit 0


