#!/bin/bash

OS=$(lsb_release -a 2> /dev/null | grep 'Distributor ID' | awk -F ':' '{print $2}' | sed 's/^[ \t]*//;s/[ \t]*$//')
echo $OS

