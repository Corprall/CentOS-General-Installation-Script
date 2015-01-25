#!/bin/sh

#Help
function help (){
echo commands: pre, apache, php, mysql, phpmyadmin, java7, java8, teamspeak, multicraft, mcmyadmin, vnic, dns, cfgroot.
exit 0
}

#Pre-Tasks
function pre (){
yum -y update
yum -y install nano
echo ~~Inital Tasks Complete~~
sleep 2
exit 0
}

#--------------------------------------------------

#Apache
function apache (){

echo ~~Now Installing Apache~~
sleep 1
yum -y install httpd
systemctl start httpd.service
systemctl enable httpd.service
echo ~~Apache Installation Complete~~
sleep 2
exit 0
} #Apache End

#--------------------------------------------------

#PHP
function php (){
echo ~~Now Installing PHP~~
sleep 1
yum -y install php php-mysql
echo Which php extentions would you like? php-mysql included by default
read phpe
if [ "$phpe" = "" ];
then
systemctl restart httpd.service
echo ~~PHP Installation Complete~~
sleep 2
else
yum install -y "$phpe"
systemctl restart httpd.service
echo ~~PHP Installation Complete~~
sleep 2
fi
exit 0
} #PHP End

#--------------------------------------------------

#MySQL (MariaDB)
function mysql (){
echo ~~Now Installing MySQL -Attended Installation~~
sleep 1
yum -y install mariadb-server mariadb
systemctl start mariadb
mysql_secure_installation
systemctl enable mariadb.service
echo ~~MySQL Installation Complete~~
sleep 2
exit 0
} #MySQL End

#--------------------------------------------------

#phpMyAdmin
function phpmyadmin (){
echo ~~Now Installing phpMyAdmin~~
sleep 1
yum -y install epel-release
yum -y install phpmyadmin
#Need to make it edit file.
systemctl restart httpd.service
echo ~~phpMyAdmin Installation Complete~~
sleep 2
exit 0
} #phpMyAdmin End

#--------------------------------------------------

#Java7
function java7 (){
yum -y install java-1.7.0-openjdk
}#Java7 End

#--------------------------------------------------

#Java8
function java8 (){
echo disabled
}#Java8 End

#--------------------------------------------------

#Teamspeak
function (){
echo disabled
}#Teamspeak End

#--------------------------------------------------

#Multicraft
function (){
echo disabled
}#Multicraft End

#--------------------------------------------------

#McMyAdmin
function (){
echo disabled
}#McMyAdmin End

#--------------------------------------------------

#Virtual NIC
function (){
echo disabled
}#Virtual NIC End

#--------------------------------------------------

#DNS
function (){
echo disabled
}#DNS End

#--------------------------------------------------

#Configure Root
function (){
echo disabled
}#Configure Root End

#--------------------------------------------------

case $1 in
help) help ;;
pre) pre ;;
apache) apache ;;
php) php ;;
mysql) mysql ;;
phpmyadmin) phpmyadmin ;;

everything)
pre
apache
php
java7
mcmyadmin
cfgroot


*) echo Invalid, Try help
esac
