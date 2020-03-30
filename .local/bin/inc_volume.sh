#!/bin/bash

AMIXER=$(which amixer)
if [ -x $AMIXER  ]; then
    amixer -D pulse sset Master $1%$2 # 5%+ or 5%-
else
    PAMIXER=$(which pamixer)
    if [ -x $PAMIXER  ]; then
        if [ "$2" == "+"  ]; then
            pamixer -i $1
        fi
        if [ "$2" == "-"  ]; then
            pamixer -d $1
        fi
    fi
fi

pkill -SIGRTMIN+11 i3blocks
