#!/bin/bash

# Change host name 

export newname=selfie-$(cat /sys/class/net/eth0/address | tr -d ":") 
echo $newname

echo "127.0.1.1	$newname" | sudo tee -a /etc/hosts
echo "$newname" | sudo tee /etc/hostname
sudo hostname $newname

# export oldname=$(cat /proc/sys/kernel/hostname)
# echo $oldname
# sudo sed -i "s/${oldname}/${newname}/" /etc/hosts

