#!/bin/bash

AMIXER=$(which amixer 2> /dev/null)
if [ -x "$AMIXER"  ]; then
    amixer -D pulse get Master | grep 'Right:' | awk -F'[][]' '{ print $2  }'
else
    PAMIXER=$(which pamixer 2> /dev/null)
    if [ -x "$PAMIXER"  ]; then
        pamixer --get-volume
    fi
fi

pkill -SIGRTMIN+11 i3blocks
