#!/usr/bin/env bash

alias mpc='mpc -f "\[%position%\] [[[%artist% - ][%album% - ]%title%]|[%file%]]"'

alias mpc-queue='mpc playlist -f "%position% %artist% - %title%" \
        | grep --color=always -B 5 -A 5 -E "$(mpc current)"'
