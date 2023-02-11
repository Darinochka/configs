#!/bin/sh

USER=darinka
UID=$(id -u)
export XAUTHORITY=/home/$USER/.Xauthority
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$UID/bus"

/usr/bin/notify-send --urgency=critical "Your battery is below 5%" \
    "YOUR LAPTOP WILL TURN OFF SOON"
