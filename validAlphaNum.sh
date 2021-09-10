#!/bin/bash
#===============================================================================
#
#          FILE:  validAlphaNum.sh
# 
#         USAGE:  ./validAlphaNum.sh 
# 
#   DESCRIPTION:  This will validiate user input, consistant input of alpha num characters no special char.
# 
#       OPTIONS:  ---use as a function in other scripts, for validation.
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:   (), 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  11/11/2016 06:48:09 PM UTC
#      REVISION:  ---
#===============================================================================

function validAlphaNum ()
{
	# Validate arg: returns 0 id all upper+lower+digits; 1 otherwise
	# sed 's/[^[:upper:] ,.]//g'  ##require uppercase, spaces, commas and periods.
	# sed 's/[^-[:digit:]\(\)]//g'  ## validate phone number

	#remove all unacceptable characters
	validchars="$(echo $1 | sed -e 's/[^[:alnum:]]//g')"

	if [ "$validchars" = "$1" ] ;
	then
		return 0
	else 
		return 1
	fi
}    # ----------  end of function validAlphaNum  ----------

##### BEGIN MAIN SCRIPT #######
###### Use the function in any other script #########

/bin/echo -n "Enter Input: "
read input

# Input validation
if ! validAlphaNum "$input" ; then
	echo "Please enter only letters and numbers." >&2
	exit 1
else
	echo "Input is valid"
fi

exit 0
