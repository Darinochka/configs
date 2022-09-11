#!/bin/bash
USER=darinka
VOLUME=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}')
VOLUME_INT=$(($(echo $VOLUME | grep -oP "\d{2}")))
LOW=30
ZERO=0

MUTE=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')
YES=yes

if [ $MUTE == $YES ]; then
    echo -e "<fn=2>\ufa80</fn>"
elif [ $VOLUME_INT -eq $ZERO ]; then 
    echo -e "<fn=2>\uf026</fn>"
elif [ $VOLUME_INT -le $LOW ]; then
    echo -e "<fn=2>\uf027</fn>" 
else
    echo -e "<fn=2>\uf028</fn>"
fi

exit 0
