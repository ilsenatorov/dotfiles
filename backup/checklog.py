#!/usr/bin/python3
import os
try:
    logs = open(os.environ['BACKUPLOG'], 'r')
except:
    logs = open('/backup/log.txt', 'r')
list_lines = logs.readlines()
for line in list_lines:
    if "total size" in line:
        print(list_lines[list_lines.index(line) - 1], end='')
        print(line)
    elif "connection unexpectedly closed" in line:
        print(line)
