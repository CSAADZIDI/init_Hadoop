#!/usr/bin/env python3
import sys

current = None
total = 0

for line in sys.stdin:
    fruit, price = line.strip().split(",")
    price = float(price)

    # Nouveau fruit
    if current and fruit != current:
        print(f"{current}\t{total:.2f}")
        total = 0

    current = fruit
    total += price

if current:
    print(f"{current}\t{total:.2f}")