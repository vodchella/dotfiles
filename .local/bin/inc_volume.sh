#!/bin/bash

amixer -D pulse sset Master $1 # 5%+ or 5%-
pkill -SIGRTMIN+11 i3blocks
