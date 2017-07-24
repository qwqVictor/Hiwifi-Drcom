#!/bin/sh
read -p "WARNING! Doing this will remove python, Drcom and your Drcom configuration! Would you like to continue? [Return/Ctrl+C]"
killall drsh
rm -rf /usr/bin/python*
rm -rf /usr/include/python2.7/
rm -rf /usr/lib/python2.7/
rm /etc/screenrc
rm /usr/sbin/screen
rm /usr/bin/nohup
rm /root/Drcom*
rm /etc/drcom.conf
echo "# Put your custom commands here that should be executed once" > /etc/rc.local
echo "# the system init finished. By default this file does nothing." >> /etc/rc.local
echo >> /etc/rc.local
read -p "Base removed. Would you like to remove bash? [Return/Ctrl+C]"
rm /bin/bash /bin/rbash