#!/bin/bash

FREE="$(free | awk 'FNR == 2 {print (($2-$7)*100/$2)}')"
NORMALIZED="${FREE/./,}"
ROUNDED=$(printf '%.*f\n' 0 ${NORMALIZED})
echo "MEM ${ROUNDED}%"
