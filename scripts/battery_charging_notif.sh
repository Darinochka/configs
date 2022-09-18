#!/bin/sh
USER=darinka
BATTERY_CHARGING=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | awk '/state/ {print $2}')
IS_NOTIF_BATTERY=/home/$USER/.config/state_notif_battery
STATE=$(cat $IS_NOTIF_BATTERY)

if [ $BATTERY_CHARGING != discharging ] && [ $STATE != + ]; then
    notify-send --urgency=normal 'Your battery is charging' \
        '%>>>>>>>>'
    echo "+" >| $IS_NOTIF_BATTERY 
elif [ $BATTERY_CHARGING = discharging ]; then
    echo "-" >| $IS_NOTIF_BATTERY
fi

exit 0
