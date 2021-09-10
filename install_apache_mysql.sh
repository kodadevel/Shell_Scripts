#!/bin/bash
#===============================================================================
#
#          FILE:  install_apache_mysql.sh
# 
#         USAGE:  ./install_apache_mysql.sh 
# 
#   DESCRIPTION:  Install only apache2 and mysql server
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Dave Vineis (dv), dave.vineis@gmail.com
#       COMPANY:  fortunato
#       VERSION:  1.0
#       CREATED:  08/24/2017 11:33:41 AM CDT
#      REVISION:  ---
#===============================================================================

#Check if user is in root or sudo
if [ $(id -u) -ne 0 ]
then
	echo 'Please run as sudo or as root user'
	exit 1
fi
		
#Install Apache
echo "Installing Apache webserver"
apt-get install -y apache2

echo "Installing libapache2-mod-wsgi-py3"
apt-get install -y libapache2-mod-wsgi-py3
		
#Install MySQL
echo "Installing mysql-server"
apt-get install -y mysql-server
		
echo "Make sure mysql is secure"
mysql_secure_installation

exit 0
