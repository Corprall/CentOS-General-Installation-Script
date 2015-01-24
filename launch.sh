#!/bin/sh
running = true
while : $running=true
do

echo What would you like to do?
echo 1 = Pre-Tasks
echo 2 = Install Apache
echo 3 = Install PHP
echo 4 = Install MySQL (MariaDB) (Attended)
echo 5 = Install phpMyAdmin
echo 6 = Install Java7
echo 7 = Install Java8
echo 8 = Install Teamspeak
echo 9 = Install Multicraft
echo 10 = Install McMyAdmin
echo 11 = Install Virtual NIC (Attended)
echo 12 = Install DNS (Attended)
echo 13 = Configure Root (Attended)
echo 0 = Exit

read task
case $task in
0)  running = false
1)  core.sh pre
2)  core.sh apache
3)  core.sh php
4)  core.sh mysql
5)  core.sh phpmyadmin
6)  core.sh java7
7)  core.sh java8
8)  core.sh teamspeak
9)  core.sh multicraft
10) core.sh mcmyadmin
11)  core.sh vnic
12) core.sh dns
13) core.sh cfgroot
*) echo Please choose a valid option.
esac
