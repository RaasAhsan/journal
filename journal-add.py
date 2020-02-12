#!/usr/bin/env python

from datetime import datetime
import sys

journal = sys.argv[1]

now = datetime.now()
timestamp = now.strftime('%m/%d/%Y %H:%M:%S')
message = ' '.join(sys.argv[2:])
log = '[{}] {}\n'.format(timestamp, message)

with open(journal, 'a') as file:
    file.write(log)

sys.stdout.write(log)
