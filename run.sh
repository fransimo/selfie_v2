#!/bin/bash
export URL=http://localhost:8000/

cd ${HOME}/selfie_v2

# System

./update_cron.sh &

./check-names.sh

# Kiosk

cd on-site

python3 -m http.server &

/usr/bin/chromium-browser --disk-cache-dir=/dev/null --disk-cache-size=1 --noerrdialogs --kiosk ${URL}
