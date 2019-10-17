#!/usr/bin/python
# -*- coding: utf-8 -*-

import sys
import platform

is_ubuntu = len([x for x in platform.os.uname() if "ubuntu" in x.lower()]) > 0
if not is_ubuntu:
    sys.stderr.write("Only Ubuntu Linux supported\n")
    sys.exit(1)

try:
    from sh import free, awk
except:
    sys.stderr.write(
        "Module 'sh' isn't installed. Install it with 'sudo pip install sh' (https://github.com/amoffat/sh)\n")
    sys.exit(1)


def get_mem_used():
    try:
        # free | awk 'FNR == 2 {print (($2-$7)*100/$2)}'
        mem_used = awk(free(), "FNR == 2 {print (($2-$7)*100/$2)}")
        return str(round(mem_used, 1)) + "%"
    except:
        return "?"


if __name__ == "__main__":
    print(get_mem_used())
