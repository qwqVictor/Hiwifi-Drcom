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
rm /etc/rc.local
mv /etc/rc.local.hiwifi_backup /etc/rc.local
read -p "Base removed. Would you like to remove bash? [Return/Ctrl+C]"
rm /bin/bash /bin/rbash