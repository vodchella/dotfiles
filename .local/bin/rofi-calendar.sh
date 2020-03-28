#! /bin/bash

#
# Inspired by:
#   https://github.com/vivien/i3blocks-contrib/blob/master/rofi-calendar/rofi-calendar
#

cur_date_time=$(date '+%e %b %H:%M  ')

if [[ "$BLOCK_BUTTON" -eq 1 ]]; then
		ncal -M \
				| sed 's/\x1b\[[7;]*m/\<b\>\<u\>/g' \
				| sed 's/\x1b\[[27;]*m/\<\/u\>\<\/b\>/g' \
				| tail -n +2 \
				| rofi \
						-dmenu \
						-markup-rows \
						-no-fullscreen \
						-font "Monospace 12" \
						-hide-scrollbar \
						-bw 2 \
						-monitor -3 \
						-xoffset -180 \
						-yoffset +5 \
						-theme '~/.local/share/rofi/themes/Arc-Dark.rasi' \
						-eh 1 \
						-width -23 \
						-no-custom \
						-lines 7 \
						-p "" > /dev/null
fi

echo "$cur_date_time"
