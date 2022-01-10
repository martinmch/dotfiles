#!/bin/sh

xrandr \
    --output eDP-1 --primary --mode 1920x1080 \
    --output DP-2-1 --off \
    --output DP-2-2 --off \
    --output HDMI-1 --off \
    --output DP-2 --off \
    --output DP-1 --off 


bash $HOME/.fehbg

setxkbmap us