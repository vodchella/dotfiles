#!/bin/bash

OS=$(~/.local/bin/os.sh)
if [ "$OS" == "Ubuntu" ]; then
    ICON=""
else
    ICON=""
fi

echo "%{T4}$ICON%{T-}"
