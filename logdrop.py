#!/usr/bin/env python

import sys

lines = []
with open('log.txt', 'r') as file:
    lines = file.readlines()

for l in lines[:-1]:
    sys.stdout.write(l)

# sys.stdout.write(lines[-1])
