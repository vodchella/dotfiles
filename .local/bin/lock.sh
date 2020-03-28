#!/bin/bash

LAYOUT=$(setxkbmap -query | grep layout | awk '{ print $2 }')
if [ "$LAYOUT" != "us"  ]; then
    i3-nagbar -t warning -m 'Не стоит блокировать экран при русской раскладке'
else
    HEIGHT=$(xrandr | grep \* | awk '{print $1}' | cut -d "x" -f1)
    CIRCLE_TOP=$((HEIGHT-700))
    scrot /tmp/screen.png
    convert /tmp/screen.png -filter Gaussian -blur 0x8 /tmp/screen.png
    [[ -f $1  ]] && convert /tmp/screen.png -font 'Karumbi' -pointsize 180 -fill white -gravity center -annotate +60+280 "Achtung! Angry Max!" $1 -gravity center -composite -matte /tmp/screen.png
    #dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop
    i3lock -n -i /tmp/screen.png  \
      --insidecolor=373445ff --ringcolor=ffffffff --line-uses-inside \
      --keyhlcolor=d23c3dff --bshlcolor=d23c3dff --separatorcolor=00000000 \
      --insidevercolor=fecf4dff --insidewrongcolor=d23c3dff \
      --ringvercolor=ffffffff --ringwrongcolor=ffffffff --indpos="x+86:y+${CIRCLE_TOP}" \
      --radius=25 --veriftext="" --wrongtext="" \
      --screen=1 --indicator --clock --verifcolor=9b9b9bff --wrongcolor=9b9b9bff \
      --timepos="x+90:y+920" --timecolor=9b9b9bff --datecolor=9b9b9bff
    rm /tmp/screen.png
fi
