#!/usr/bin/env python

from datetime import datetime
import sys

now = datetime.now()
timestamp = now.strftime('%m/%d/%Y %H:%M:%S')
message = ' '.join(sys.argv[1:])
log = '[{}] {}\n'.format(timestamp, message)

with open('log.txt', 'a') as file:
    file.write(log)

sys.stdout.write(log)
