#!/usr/bin/env python

from datetime import datetime
import sys

now = datetime.now()
timestamp = now.strftime('%m-%d-%Y %H:%M:%S%z')
message = ' '.join(sys.argv[1:])
log = '[{}] {}\n'.format(timestamp, message)

sys.stdout.write(log)
