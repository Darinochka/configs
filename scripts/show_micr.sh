#!/bin/bash
USER=darinka
MICR=$(pactl get-source-mute @DEFAULT_SOURCE@ | awk '{print $2}')
MUTE=yes

if [ $MICR == $MUTE ]; then 
    echo -e "<fn=2>\uf131</fn>"
else
    echo -e "<fn=2>\uf130</fn>"
fi

exit 0
