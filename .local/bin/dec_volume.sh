#!/bin/bash

pamixer -d 5
pkill -SIGRTMIN+11 i3blocks
