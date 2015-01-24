#!/bin/sh

running="true"

pre="no"
apache="no"
php="no"
mysql="no"
phpma="no"
java="none"
ts="no"
multicraft="no"
mcmyadmin="no"
vnic="no"
dns="no"
cfgroot="no"

while : $running=true
do

echo What would you like to do?
echo 1 = Pre-Tasks Complete-$pre
echo 2 = Install Apache Installed-$apache
echo 3 = Install PHP Installed-$php
echo 4 = Install MySQL (MariaDB) (Attended) Installed-$mysql
echo 5 = Install phpMyAdmin Installed-$phpma
echo 6 = Install Java7 Current-$java
echo 7 = Install Java8 Current-$java
echo 8 = Install Teamspeak Installed-$ts
echo 9 = Install Multicraft Installed-$multicraft
echo 10 = Install McMyAdmin Installed-$mcmyadmin
echo 11 = Install Virtual NIC (Attended) Installed-$vnic
echo 12 = Install DNS (Attended) Installed-$dns
echo 13 = Configure Root (Attended) Installed-$cfgroot
echo 0 = Exit

read task
case $task in
0)
running="false"

1)
if $pre = No
then
pre="Yes"
core.sh pre
else echo Already Installed
;;

2)
if $apache = No
then
apache="Yes"
core.sh apache
else echo Already Installed
;;

3)
if $php = No
then
php="Yes"
core.sh php
else echo Already Installed

4)
core.sh mysql

5)
core.sh phpmyadmin

6)
core.sh java7

7)
core.sh java8

8)
core.sh teamspeak

9)
core.sh multicraft

10)
core.sh mcmyadmin

11)
core.sh vnic

12)
core.sh dns

13)
core.sh cfgroot

*) echo Please choose a valid option.
esac
