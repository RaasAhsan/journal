#!/usr/bin/env python

import sys

import sys

lines = []
for line in sys.stdin:
    lines.append(line)

for l in lines[:-1]:
    sys.stdout.write(l)
