#!/bin/bash
#===============================================================================
#
#          FILE:  normDate.sh
# 
#         USAGE:  ./normDate.sh 
# 
#   DESCRIPTION:  Normalizes month field in date specification to three letters,
#			first letter in caps, exit 0 status
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:   (), 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  11/11/2016 11:03:42 PM UTC
#      REVISION:  ---
#===============================================================================

function monthNumtoName ()
{
	# set the month var to the appropriate value

	case $1 in 
		1) month="Jan"	;; 
		2) month="Feb"  ;;
		3) month="Mar"  ;; 
		4) month="Apr"  ;;
		5) month="May"  ;;
		6) month="Jun"  ;;
		7) month="Jul"  ;;
		8) month="Aug"  ;;
		9) month="Sep"  ;;
		10) month="Oct"  ;;
		11) month="Nov"  ;;
		12) month="DEc"  ;;
		*) echo "$0 unknown month value $1" >&2
			exit 1
	esac    # --- end of case ---
	return 0
}	# ----------  end of function monthNumtoName  ----------

