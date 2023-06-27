#!/usr/bin/env bash

while true; do
    IP=$(curl icanhazip.com 2> /dev/null)
    if [ "$IP" == "23.88.105.247" ]; then
        STATUS="On"
    else
        STATUS="Off"
    fi
    echo "VPN: $STATUS"
    sleep 10
done
