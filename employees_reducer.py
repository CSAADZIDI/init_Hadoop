#!/usr/bin/env python3
import sys

current = None
total = 0
count = 0


for line in sys.stdin:
    department, year = line.strip().split(",")
    year = int(year)

    # Nouvel "employee"
    if current and department != current:
        avg = total / count
        print(f"{current}\t{avg:.2f}")
        total = 0
        count = 0

    current = department
    total += year
    count += 1

if current:
    avg = total / count
    print(f"{current}\t{avg:.2f}")