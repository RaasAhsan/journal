#!/usr/bin/env python

import sys

journal = sys.argv[1]

lines = []
with open(journal, 'r') as file:
    lines = file.readlines()

for l in lines[:-1]:
    sys.stdout.write(l)

# sys.stdout.write(lines[-1])
