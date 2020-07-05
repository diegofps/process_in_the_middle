#!/usr/bin/python3

import datetime
import sys
import os

myname = os.path.realpath(sys.argv[0])
realname = myname + ".real"
logname = myname + ".log"
username = os.path.expandvars("$USER")
time = str(datetime.datetime.now())
cmd = realname + " " + " ".join(sys.argv[1:])

status = os.system(cmd)

with open(logname, "a") as fout:
    fout.write("{} {} {} {}\n".format(time, username, str(status), cmd))

exit(status)
