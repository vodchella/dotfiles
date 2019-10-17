#!/usr/bin/python3
# -*- coding: utf-8 -*-

import sys
import platform

is_ubuntu = len([x for x in platform.os.uname() if "ubuntu" in x.lower()]) > 0
if not is_ubuntu:
    sys.stderr.write("Only Ubuntu Linux supported\n")
    sys.exit(1)

try:
    from sh import ping, grep, awk
except:
    sys.stderr.write(
        "Module 'sh' isn't installed. Install it with 'sudo pip install sh' (https://github.com/amoffat/sh)\n")
    sys.exit(1)

HOST = "mail.ru"


def get_ping_value():
    try:
        # bash: ping mail.ru -c1 | grep "time=" | awk '{print substr($8, 6)}'
        return float(awk(grep(ping(HOST, c=1), "time="), "{print substr($8, 6)}"))
    except:
        return "?"


if __name__ == "__main__":
    print(get_ping_value())
