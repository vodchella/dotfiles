#!/bin/bash

LAYOUT=$(setxkbmap -query | grep layout | awk '{ print $2 }')
if [ "$LAYOUT" != "us"  ]; then
    i3-nagbar -t warning -m 'Не стоит блокировать экран при русской раскладке'
else
    scrot /tmp/screen.png
    convert /tmp/screen.png -filter Gaussian -blur 0x8 /tmp/screen.png
    [[ -f $1  ]] && convert /tmp/screen.png -font 'Karumbi' -pointsize 180 -fill white -gravity center -annotate +60+280 "Achtung! Angry Max!" $1 -gravity center -composite -matte /tmp/screen.png
    #dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop
    i3lock -u -i /tmp/screen.png
    rm /tmp/screen.png
fi
