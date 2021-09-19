# Install (dev mode)

## On first boot

- On rpi-config
  - Activate ssh and camera
  - Deactivate screen blanking
  - Increase video memory up to 256G
- Install basic packages
  - sudo apt-get update
  - sudo apt-get dist-upgrade
  - sudo apt-get install mc joe imagemagick retext nmap
- If you're on a hidden wifi
  - sudo joe /etc/wpa_supplicant/wpa_supplicant.conf
- Clone the repo and setup user
  - git clone git@github.com:fransimo/selfie_v2
  - git config --global user.email "you@example.com"
  - git config --global user.name "Your Name"
- For the screen 0 rotate the screen
  - https://www.raspberrypi-spy.co.uk/2017/11/how-to-rotate-the-raspberry-pi-display-output/
  - Edit /boot/config.txt and add
    - display_rotate=1
- For other touch screens
```
git clone https://github.com/goodtft/LCD-show.git
chmod -R 755 LCD-show
cd LCD-show/
sudo ./LCD35-show
```


## Set up Kiosk

[ref1](https://2021.jackbarber.co.uk/blog/2017-02-16-hide-raspberry-pi-mouse-cursor-in-raspbian-kiosk)[ref2](https://www.raspberrypi.org/forums/viewtopic.php?t=234879)


```
sudo rm /etc/xdg/lxsession/LXDE-pi/autostart
sudo ln -s /home/pi/selfie_v2/autostart /etc/xdg/lxsession/LXDE-pi/autostart

sudo apt-get install unclutter #hide cursor

```
