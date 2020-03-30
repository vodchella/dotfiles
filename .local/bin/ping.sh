#!/bin/bash

VALUE=$(ping mail.ru -c1 2> /dev/null | grep 'time=' | awk '{print substr($8, 6)}')
if [ -z "$VALUE"  ]; then
    echo "?"
else
    echo $VALUE
fi
