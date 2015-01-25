#!/bin/sh

while [ "$run" = "" ];
do
run="rdy"
running="true"

pre="No"
apache="No"
php="No"
mysql="No"
phpma="No"
java="None"
ts="No"
multicraft="No"
mcmyadmin="No"
vnic="No"
dns="No"
cfgroot="No"
echo Ready to go
done

while [ "$running" = "true" ];
do

echo What would you like to do?
echo 1 = Pre-Tasks Complete= $pre
echo 2 = Install Apache Installed= $apache
echo 3 = Install PHP Installed= $php
echo 4 = Install MySQL -MariaDB- -Attended- Installed= $mysql
echo 5 = Install phpMyAdmin Installed= $phpma
echo 6 = Install Java7 Current= $java
echo 7 = Install Java8 Current= $java
echo 8 = Install Teamspeak Installed= $ts
echo 9 = Install Multicraft -Attended- Installed= $multicraft
echo 10 = Install McMyAdmin -Attended- Installed= $mcmyadmin
echo 11 = Install Virtual NIC -Attended- Installed= $vnic
echo 12 = Install DNS -Attended- Installed= $dns
echo 13 = Configure Root -Attended- Configured= $cfgroot
echo 0 = Exit

read task
case $task in
0)
running="false"
;;

1)
if [ "$pre" = "No" ];
then
pre="Yes"
core.sh pre
else echo Already Installed
fi
;;

2)
if [ "$apache" = "No" ];
then
apache="Yes"
core.sh apache
else echo Already Installed
fi
;;

3)
if [ "$php" = "No" ];
then
php="Yes"
core.sh php
else echo Already Installed
fi
;;

4)
if [ "$mysql" = "No" ];
then
mysql="Yes"
core.sh mysql
else echo Already Installed
fi
;;

5)
if [ "$phpma" = "No" ];
then
phpma="Yes"
core.sh phpmyadmin
else echo Already Installed
fi
;;

6)
if [ "$java" = "None" ];
then
java="Java7"
core.sh java7
else echo Java Is Already Installed
fi
;;

7)
if [ "$java" = "None" ];
then
java="Java8"
core.sh java8
else echo Java Is Already Installed
fi
;;

8)
if [ "$ts" = "No" ];
then
ts="Yes"
core.sh teamspeak
else echo Already Installed
fi
;;

9)
if [ "$multicraft" = "No" ];
then
multicraft="Yes"
core.sh multicraft
fi
;;

10)
if [ "$mcmyadmin" = "No" ];
then
mcmyadmin="Yes"
core.sh mcmyadmin
else echo Already Installed
fi
;;

11)
if [ "$vnic" = "No" ];
then
vnic="Yes"
core.sh vnic
else echo Already Installed
fi
;;

12)
if [ "$dns" = "No" ];
then
dns="Yes"
core.sh dns
else echo Already Installed
fi
;;

13)
if [ "$cfgroot" = "No" ];
then
cfgroot="Yes"
core.sh cfgroot
else echo Already Installed
fi
;;

*)
echo Please choose a valid option.
sleep 3
esac
done
