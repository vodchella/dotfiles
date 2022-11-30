#!/bin/bash

LAYOUT=$(setxkbmap -query | grep layout | awk '{ print $2 }')
if [ "$LAYOUT" != "us"  ]; then
    i3-nagbar -t warning -m 'Не стоит блокировать экран при русской раскладке'
else
    HEIGHT=$(xrandr | grep \* | awk '{print $1}' | cut -d "x" -f1 | head -1)
    MACHINE=$(xrdb -query | grep "this.machine" | cut -f 2)
    PADDING=0
    if [ "$MACHINE" == "home" ]; then
        PADDING=260
    fi
    if [ "$MACHINE" == "work" ]; then
        PADDING=60
    fi
    if [ "$MACHINE" == "notebook" ]; then
        PADDING=10
    fi
    CIRCLE_TOP=$((HEIGHT/2+PADDING))

    if [ "$XDG_SESSION_TYPE" == "wayland"  ]; then
        grim /tmp/screen.png
    else
        scrot /tmp/screen.png
    fi

    convert /tmp/screen.png -filter Gaussian -blur 0x8 /tmp/screen.png
    [[ -f $1  ]] && convert /tmp/screen.png -font 'Karumbi' -pointsize 180 -fill white -gravity center -annotate +60+280 "" $1 -gravity center -composite -matte /tmp/screen.png
    #dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop

    if [ "$XDG_SESSION_TYPE" == "wayland"  ]; then
        swaylock -k -n -i /tmp/screen.png  \
          --inside-color=373445ff --ring-color=ffffffff --line-uses-inside \
          --key-hl-color=d23c3dff --bs-hl-color=d23c3dff --separator-color=00000000 \
          --inside-ver-color=fecf4dff --inside-wrong-color=d23c3dff \
          --ring-ver-color=ffffffff --ring-wrong-color=ffffffff --indicator-x-position=86 --indicator-y-position=${CIRCLE_TOP} \
          --indicator-radius=25 \
          --text-ver-color=9b9b9bff --text-wrong-color=9b9b9bff
    else
        i3lock -n -i /tmp/screen.png  \
          --insidecolor=373445ff --ringcolor=ffffffff --line-uses-inside \
          --keyhlcolor=d23c3dff --bshlcolor=d23c3dff --separatorcolor=00000000 \
          --insidevercolor=fecf4dff --insidewrongcolor=d23c3dff \
          --ringvercolor=ffffffff --ringwrongcolor=ffffffff --indpos="x+86:y+${CIRCLE_TOP}" \
          --radius=25 --veriftext="" --wrongtext="" \
          --screen=1 --indicator --clock --verifcolor=9b9b9bff --wrongcolor=9b9b9bff \
          --timepos="x+90:y+${CIRCLE_TOP}-80" --timecolor=9b9b9bff --datecolor=9b9b9bff
    fi

    rm /tmp/screen.png
fi
