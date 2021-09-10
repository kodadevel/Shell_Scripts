#!/bin/bash
#===============================================================================
#
#          FILE:  website_as_text.sh
# 
#         USAGE:  ./website_as_text.sh 
# 
#   DESCRIPTION:  Download web page as plain text
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Dave Vineis (dv), dave.vineis@gmail.com
#       COMPANY:  fortunato
#       VERSION:  1.0
#       CREATED:  08/03/2017 04:19:07 PM CDT
#      REVISION:  ---
#===============================================================================
read -p "Enter URL " SITENAME

lynx -dump $SITENAME > ${SITENAME}.txt

