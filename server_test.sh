#!/bin/bash

SERVERS=("webserver1" "webserver2" "webserver3")

COUNT=0

for INDEX in ${SERVERS[@]}; do 
	echo " Parsing servers: ${SERVERS[COUNT]}"
	COUNT=$(( COUNT + 1 ))
done
