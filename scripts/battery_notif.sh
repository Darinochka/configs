#!/bin/sh
USER=darinka
BATTERY=$(($(sh /home/$USER/scripts/show_battery.sh | sed 's/\%//')))
BATTERY_CHARGING=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | awk '/state/ {print $2}')

LOW=20
CRITICAL=5

if [ $BATTERY_CHARGING != discharging ]; then
    if [ $BATTERY -le $CRITICAL ]; then
        notify-send --urgency=critical 'You battery is below 5%' \
            'YOUR LAPTOP WILL TURN OFF SOON'
    elif [ $BATTERY -le $LOW ]; then
        notify-send --urgency=normal 'Your battery is below 20%' \
            'Please, put the laptop on charge'
    fi
fi

exit 0
