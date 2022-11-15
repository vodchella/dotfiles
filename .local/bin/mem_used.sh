#!/bin/bash

USED="$(free | awk 'FNR == 2 {print (($2-$7)*100/$2)}')"
NORMALIZED="${USED/./,}"
ROUNDED=$(printf '%.*f\n' 0 ${NORMALIZED})
echo "MEM USED ${ROUNDED}%"
