#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script needs to be executed as root. Please use sudo when executing this script."
   exit 1
fi
sudo pacman -S yay

yay -Sy

yay -Su

sudo systemctl daemon-reload
sudo systemctl reboot

echo "The system is updatig and will restart if necessary"
