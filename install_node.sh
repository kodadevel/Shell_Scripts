#!/bin/bash
#===============================================================================
#
#          FILE:  install_node.sh
# 
#         USAGE:  ./install_node.sh 
# 
#   DESCRIPTION:  Install nodejs and npm
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Dave Vineis (dv), dave.vineis@gmail.com
#       COMPANY:  fortunato
#       VERSION:  1.0
#       CREATED:  09/15/2017 10:34:36 AM CDT
#      REVISION:  ---
#===============================================================================

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
#install builds for npm
sudo apt-get install -y build-essential
