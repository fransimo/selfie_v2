#!/bin/bash

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`


sudo cp $SCRIPTPATH/wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf

bash $SCRIPTPATH/reboot.sh &

