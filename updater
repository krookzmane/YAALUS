#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "Ce script doit être exécuté en tant que root."
   exit 1
fi

sudo pacman -Sy

sudo pacman -Su

sudo systemctl daemon-reload
sudo systemctl reboot

echo "The system is updatig and will restart if necessary"
