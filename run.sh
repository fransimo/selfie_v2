#!/bin/bash
export URL=file://${HOME}/selfie_v2/on-site/index.html

/usr/bin/chromium-browser --noerrdialogs --kiosk ${URL}
