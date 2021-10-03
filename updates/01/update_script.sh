#!/bin/bash

cd $HOME

git clone https://github.com/fransimo/selfie_v2.git selfie_v2_tmp

mv selfie_v2 ssh_selfie_v2
mv selfie_v2_tmp selfie_v2

sudo reboot
