#!/bin/bash

# /usr/bin/vlc --fullscreen --loop /home/pi/selfie_v2/2016_05_27_pd_t2_tse_tra.mp4

#/usr/bin/chromium-browser --start-fullscreen file:///home/pi/selfie_v2/2016_05_27_t2_fl2d_cor.gif

#/usr/bin/chromium-browser --noerrdialogs --kiosk https://justpictures.es/


# https://raspberrypi.stackexchange.com/questions/9180/software-for-displaying-animated-gifs
#/usr/bin/animate file:///home/pi/selfie_v2/2016_05_27_t2_fl2d_cor.gif


# https://raspberrypi.stackexchange.com/questions/9180/software-for-displaying-animated-gifs
# identify -verbose 2016_05_27_t2_fl2d_cor.gif | grep Delay

#  convert -background none -rotate 90 -coalesce -delay 10x100  0_2016_05_27_t2_fl2d_cor.gif 2016_05_27_t2_fl2d_cor.gif 
# https://lifehacker.com/how-to-play-zooms-new-built-in-games-instead-of-working-1847457051
/usr/bin/chromium-browser --noerrdialogs --kiosk file:///home/pi/selfie_v2/2016_05_27_t2_fl2d_cor.gif

# nu funciona /usr/bin/dillo -f file:///home/pi/selfie_v2/2016_05_27_t2_fl2d_cor.gif

# https://learn.adafruit.com/raspi-animated-gif-picture-frame?view=all
#/usr/bin/chromium-browser --noerrdialogs --kiosk file:///home/pi/selfie_v2/gif_player.html

 