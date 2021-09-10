#!/bin/bash
#===============================================================================
#
#          FILE:  install_os.sh
# 
#         USAGE:  ./install_os.sh 
# 
#   DESCRIPTION:  
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Dave Vineis (dv), dave.vineis@gmail.com
#       COMPANY:  fortunato
#       VERSION:  1.0
#       CREATED:  07/24/2017 10:25:49 AM CDT
#      REVISION:  ---
#===============================================================================

#Check if user is in root or sudo
if [ $(id -u) -ne 0 ]
then
	echo 'Please run as sudo or as root user'
	exit 1
fi

read -p "enter filetype: " TYPE

read -p "enter path of drive" DRIVE


dd if={$TYPE} of={$DRIVE} BS=512

if [ dd -eq 1 ]
then
	echo "Complete"
else
	echo "something is wrong"
	echo $?
fi

exit 1

