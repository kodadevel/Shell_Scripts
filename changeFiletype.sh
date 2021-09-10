#!/bin/bash
#===============================================================================
#
#          FILE:  change_name_func.sh
# 
#         USAGE:  ./change_name_func.sh 
# 
#   DESCRIPTION:  Change name of named file type, should be used with other scripts to select directory.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Dave Vineis (dv), dave.vineis@gmail.com
#       COMPANY:  fortunato
#       VERSION:  1.0
#       CREATED:  12/08/2016 07:15:28 PM CST
#      REVISION:  ---
#===============================================================================

read -p "enter filetype: " TYPE
FILENAME=$(ls *$TYPE)

DATE=$(date +%F)
## insert some if else statements ##
for FILE in $FILENAME
do
	if [ "$FILE" == " " ]
	then
		echo "You must enter a filetype to change"
	else
		echo "Renaming ${FILE} to ${DATE}-${FILE}"
		cp ${FILE} ${DATE}-${FILE}
	fi
done