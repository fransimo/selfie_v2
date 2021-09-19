# Install (dev mode)

## On first boot

- Activate ssh and camera using rpi-config
- Increase video memory up to 256G
- Install basic packages
  - sudo apt-get install mc joe imagemagick retext
- If you're on a hidden wifi
  - sudo joe /etc/wpa_supplicant/wpa_supplicant.conf
- Clone the repo and setup user
  - git clone git@github.com:fransimo/selfie_v2
  - git config --global user.email "you@example.com"
  - git config --global user.name "Your Name"

## Set up Kiosk


```
sudo rm /etc/xdg/lxsession/LXDE-pi/autostart
sudo ln -s /home/pi/selfie_v2/autostart /etc/xdg/lxsession/LXDE-pi/autostart
```
