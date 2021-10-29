#!/bin/bash

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`


cd ${HOME}/selfie_v2/on-site
source venv/bin/activate

pip install qrcode[pil]
