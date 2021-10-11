#!/bin/bash
export FLASK_APP=selfie_on_site_server
export URL=http://localhost:5000/static/index.html


cd ${HOME}/selfie_v2

# System
./check-names.sh

./update_cron.sh &


# Local server

cd on-site

source venv/bin/activate
flask run &

 # Kiosk
 
/usr/bin/chromium-browser --disk-cache-dir=/dev/null --disk-cache-size=1 --noerrdialogs --kiosk ${URL}
