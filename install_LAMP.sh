#!/bin/bash
#This script is for installing the LAMP stack on Ubuntu 16.04 server

#This will use php7

#Check if user is in root or sudo
if [ $(id -u) -ne 0 ]
then
	echo 'Please run as sudo or as root user'
	exit 1
fi

#Install Apache
echo "Installing Apache webserver"
apt-get install -y apache2

#Install MySQL
echo "Installing mysql-server"
apt-get install -y mysql-server

echo "Make sure mysql is secure"
mysql_secure_installation

# Install PHP and dependencies
apt-get install -y php libapache2-mod-php php-mysql php-mcrypt

# Download and extract WordPress
TMP_DIR=$(mktemp -d)
cd $TMP_DIR
curl -sOL https://wordpress.org/latest.tar.gz
tar zxf latest.tar.gz
mv wordpress/* /var/www/html

# Clean up
cd /
rm -rf $TMP_DIR

exit 0
