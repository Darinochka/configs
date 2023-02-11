#!/bin/sh

pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}'
