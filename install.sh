#!/bin/sh
cp -R Package/python/usr /
rm /usr/bin/python
ln -s /usr/bin/python2.7 /usr/bin/python
cp -R Package/bash/bin /
cp -R Package/screen/* /
ln -s /bin/bash /bin/drsh
cp Package/drcom/Drcom.py /root/
cp Package/drcom/Drcom.sh /root/
cp Package/drcom/drcom.conf /etc/
cp Package/boot/rc.local /etc/rc.local
read -p "Username: " username
read -p "Password: " -s password
echo
read -p "IP Address: " IP
echo "Your config: "
echo "Username: "$username
echo "Password: "$password
echo "IP Address: "$IP
read -p "Are you sure your configuration is right? [Return/Ctrl+C]: " -n1
clear
echo "username = '"$username"'" >> /etc/drcom.conf
echo "password = '"$password"'" >> /etc/drcom.conf
echo "host_ip = '"$IP"'" >> /etc/drcom.conf
echo "Installation Succeeded!"
read -p "Would you like to reboot now? [Return/Ctrl+C]: " -n1
reboot