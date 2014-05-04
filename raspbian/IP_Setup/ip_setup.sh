#! /bin/bash

clear
echo "Raspberry Pi Setup Script"
echo "Written By: Inderpreet Singh"

echo "Please run this script with sudo"

cp -f -v ./network/interfaces /etc/network/interfaces
cp -f -v ./network/wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf

chmod 755 ./shutdown/Shutdown.sh

match = '# By default this script does nothing.'
insert = 'sudo /home/pi/ip_setup/shutdown/Shutdown.sh'
file = '/etc/rc.local'
sed -i "s/$match/$match\n$insert/" $file

