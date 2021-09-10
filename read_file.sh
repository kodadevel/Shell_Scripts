#!/bin/bash

read -p "Choose a file to read: " FILE

while read -r LINES; do
	echo "$LINES"
done < "$FILE"



