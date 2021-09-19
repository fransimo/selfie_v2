# Install (dev mode)

## On first boot

- Activate ssh and camera using rpi-config
- Increase video memory up to 256G
- Install basic packages
  - sudo apt-get install mc joe imagemagick
- If you're on a hidden wifi
  - sudo joe /etc/wpa_supplicant/wpa_supplicant.conf
- Clone the repo
  - git clone git@github.com:fransimo/selfie_v2

## Set up Kiosk


``` 
sudo rm /etc/xdg/lxsession/LXDE-pi/autostart
sudo ln -s /home/pi/selfie_v2/autostart /etc/xdg/lxsession/LXDE-pi/autostart
´´´
