#!/bin/bash

cd wifi/rtl88x2BU_WiFi_linux_v5.8.7.4_37264.20200922_COEX20191120-7777/
sudo make
sudo make install
sudo modprobe -r 88x2bu
sudo modprobe 88x2bu

echo "wifi is active dude"

#sudo reboot
