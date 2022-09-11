upower -i /org/freedesktop/UPower/devices/battery_BAT1 | awk '/percentage/ {print $2}'
