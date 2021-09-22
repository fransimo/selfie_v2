#!/bin/bash
export URL=http://localhost:8000/

cd ${HOME}/selfie_v2

# System

git pull

./check-names.sh

# Kiosk

cd on-site

python3 -m http.server &

/usr/bin/chromium-browser --noerrdialogs --kiosk ${URL}
