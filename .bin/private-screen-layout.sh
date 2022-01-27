#!/bin/sh
xrandr \
    --output eDP-1 --off \
    --output HDMI-2 --mode 1920x1080 --primary \

feh --bg-scale ~/pictures/big-sur.jpeg

setxkbmap us # -variant altgr-intl
