#!/bin/bash

#Filename: image_help.sh

# bash script: image management
#How to use: ./image_help.sh -source dirname -percent 20%
# ./image_help.sh -source dirname -scale 1024x -ext png -dest newdir
## Enter source directory, then scale or use percent, then convert the filetype,
##  then save file in a new directory

if [ $# -ne 4 -a $# -ne 6 -a $# -ne 8 ];
then
	echo "Incorrect number of arguments"
	exit 2 #give exit status of 2
fi

while [ $# -ne 0 ];
do
	case $1 in
		-source) shift ; source_dir=$1 ; shift ;;
		-scale) shift ; scale=$1 ; shift ;;
		-percent) shift ; percent=$1 ; shift ;;
		-dest) shift ; dest_dir=$1 ; shift ;;
		-ext) shift ; ext=$1 ; shift ;;
		*) echo Wrong parameters; exit 2 ;;
	esac;

done

##loop though files in given directory###
for img in `echo $source_dir/*` ;
do
	source_file=$img
	if [[ -n $ext ]];
	then
		dest_file=${img%.*}.$ext
	else
		dest_file=$img
	fi

	if [[ -n $dest_dir ]];
	then
		dest_file=${dest_file##*/}
		dest_file="$dest_dir/$dest_file"
	fi

	if [[ -n $scale ]];
	then
		PARAM="-resize $scale"
	elif [[ -n $percent ]];
	then
		PARAM="-resize $percent%"
	fi

	echo Processing file : $source_file
	convert $source_file $PARAM $dest_file
done




