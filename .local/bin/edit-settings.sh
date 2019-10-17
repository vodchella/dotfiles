#!/bin/bash

SELECTED=$(cat ~/.config/configs.list | sort -ui | rofi -dmenu -theme '~/.local/share/rofi/themes/Arc-Dark.rasi')
[ ! -z "$SELECTED" ] && tilix -a app-new-window -x vim "${HOME}/${SELECTED}"
