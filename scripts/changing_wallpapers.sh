#!/bin/sh
USER=darinka
WALLPAPERS_DIR=/usr/share/backgrounds/anime
export DISPLAY=":0.0"
export XAUTHORITY="/home/$USER/.Xauthority"

nitrogen --set-zoom-fill --random $WALLPAPERS_DIR
