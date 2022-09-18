#!/bin/sh
USER=darinka
BATTERY=$(($(sh /home/$USER/scripts/show_battery.sh | sed 's/\%//')))

LOW=20
CRITICAL=5

if [ $BATTERY -le $CRITICAL ]; then
    notify-send --urgency=critical 'You battery is below 5%' \
        'YOUR LAPTOP WILL TURN OFF SOON'
elif [ $BATTERY -le $LOW ]; then
    notify-send --urgency=normal 'Your battery is below 20%' \
        'Please, put the laptop on charge'
fi

exit 0
