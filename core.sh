#Pre-Tasks
function pre {
yum -y update
yum -y install nano
echo ~~Inital Tasks Complete~~
sleep 2
}

#--------------------------------------------------

#Apache
function apache {

echo ~~Now Installing Apache~~
sleep 1
yum -y install httpd
systemctl start httpd.service
systemctl enable httpd.service
echo ~~Apache Installation Complete~~
sleep 2
} #Apache End

#--------------------------------------------------

#PHP
function php {
echo ~~Now Installing PHP~~
sleep 1
yum -y install php php-mysql
echo Which php extentions would you like? [php-mysql included]
read phpe
if [$phpe = ""];
then
systemctl restart httpd.service
echo ~~PHP Installation Complete~~
sleep 2
else
yum install -y $phpe
systemctl restart httpd.service
echo ~~PHP Installation Complete~~
sleep 2
fi
} #PHP End

#--------------------------------------------------

#MySQL (MariaDB)
function mysql {
echo ~~Now Installing MySQL (Attended Installation)~~
sleep 5
yum -y install mariadb-server mariadb
systemctl start mariadb
mysql_secure_installation
systemctl enable mariadb.service
echo ~~MySQL Installation Complete~~
sleep 2
}#MySQL End

#--------------------------------------------------

#phpMyAdmin
function phpmyadmin {
echo ~~Now Installing phpMyAdmin~~
sleep 1
yum -y install epel-release
yum -y install phpmyadmin
#Need to make it edit file.
systemctl restart httpd.service
echo ~~phpMyAdmin Installation Complete~~
sleep 2
} #phpMyAdmin End

#--------------------------------------------------

#Java7
function java7 {

}#Java7 End

#--------------------------------------------------

#Java8
function java8 {

}#Java8 End
