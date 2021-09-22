#!/bin/bash

# Change host name 

export newname=selfie-$(cat /sys/class/net/eth0/address | tr -d ":") 
echo $newname

export currentname=$(cat /proc/sys/kernel/hostname)
echo $currentname

if [ ! "$newname" == "$currentname" ] ; then
	echo "Name is different"
	echo "127.0.1.1	$newname" | sudo tee -a /etc/hosts
	echo "$newname" | sudo tee /etc/hostname
	sudo hostname $newname
	# sudo sed -i "s/${currentname}/${newname}/" /etc/hosts
else
	echo "Name is OK"	
fi
