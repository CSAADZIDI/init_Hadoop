#!/usr/bin/env python3
import sys

for line in sys.stdin:
    line = line.strip()
    fruit, price = line.split(",")
    print(f"{fruit},{price}")