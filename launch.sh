#!/bin/sh

while [ true ] 
do

echo What would you like to do?
echo 1 = Install Apache
echo 2 = Install PHP
echo 3 = Install MySQL (MariaDB) (Attended)
echo 4 = Install phpMyAdmin
echo 5 = Install Java7
echo 6 = Install Java8
echo 7 = Install Teamspeak
echo 8 = Install Virtual NIC (Attended)
echo 9 = Install DNS (Attended)
echo 10 = Configure Root (Attended)
echo 0 = Exit

read task
case $task in
1)

