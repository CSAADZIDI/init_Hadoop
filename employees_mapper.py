#!/usr/bin/env python3
import sys

for line in sys.stdin:
    line = line.strip()
    id, name, age, department, salary, year = line.split(",")
    print(f"{department},{year}")