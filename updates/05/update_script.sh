#!/bin/bash

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`


cd ${HOME}/selfie_v2/on-site

python3 -m venv venv
source venv/bin/activate

pip install -U pip setuptools wheel
pip install Flask

bash $SCRIPTPATH/reboot.sh &
