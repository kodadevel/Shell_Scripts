#!/bin/bash

# inpath-- this is used to see if a program is valid and also if
# the program is in tbe current user path.

in_path() 
{
# Given a command and a PATH, tries to find the command.
# If found and executable returns a exit status of 0, if not 1
# This script temporarily modifies the IFS (internal field seperator)
# but will restore upon completion.

	cmd=$1		ourpath=$2	result=1
	oldIFS=$IFS	IFS=":"
	
	for directory in $ourpath
	do
		if [ -x $directory/$cmd ]; then
			$result=0 #if we are here, the command was found
		fi
	done

IFS=$oldIFS
return $result

}

checkForCmdInPath()
{
var=$1

if [ $var != "" ]; then
	if [ "${var:0:1}" = "/" ]; then # this uses variable slicing syntax
		if [ ! -x $var ]; then
			return 1
		fi
	elif ! in_path $var "PATH" ; then
		return 2
	fi
fi

}

if [ $# -ne 1 ] ; then 
	echo "Usage: $0 command" >&2
	exit 1
fi

checkForCmdInPath "$1"

case $? in
	0 ) echo "$1 found in path"			;;
	1 ) echo "$1 not found and not executable"	;;
	2 ) echo "$1 not found in PATH"			;;
esac

exit 0

