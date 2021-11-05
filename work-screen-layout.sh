#!/bin/sh
xrandr \
    --output DP-2-1 --mode 2560x1440 --right-of DP-2-2 \
    --output DP-2-2 --primary --mode 2560x1440 \
    --output eDP-1 --off \
    --output HDMI-1 --off \
    --output DP-2 --off \
    --output DP-1 --off 

# xrandr \
#     --output DP-2-1 --off \
#     --output DP-2-2 --off \
#     --output eDP-1 --primary --mode 1920x1080 \
#     --output HDMI-1 --off \
#     --output DP-2 --off \
#     --output DP-1 --off 


feh --bg-scale ~/pictures/big-sur.jpeg

setxkbmap us # -variant altgr-intl
