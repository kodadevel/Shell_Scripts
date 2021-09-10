#!/bin/bash
#===============================================================================
#
#          FILE:  mirror_website.sh
# 
#         USAGE:  ./mirror_website.sh 
# 
#   DESCRIPTION:  Download a complete website, mirror the site.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Dave Vineis (dv), dave.vineis@gmail.com
#       COMPANY:  fortunato
#       VERSION:  1.0
#       CREATED:  08/03/2017 04:02:28 PM CDT
#      REVISION:  ---
#===============================================================================
## get url
read -p "Enter url of site: " SITE
wget -- mirror $SITE

#or use
#wget -r -N -1 DEPTH URL
#or use for ftp download
#wget --user username --password pass URL
