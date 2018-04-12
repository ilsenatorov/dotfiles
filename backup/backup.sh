#!/bin/bash
cd /home/ilya/dotfiles/backup
rsync -aAvzh --log-file="/tmp/backupslog.txt" --delete --exclude-from './.exclude-list.txt' / -e ssh pi@192.168.0.20:/home/pi/backups/ilya-laptop 
cat /tmp/backupslog.txt | grep --colour='never' -e "sent" -e "total size" -e "connection unexpectedly closed" >> ./shortlog.txt
rm /tmp/backupslog.txt
rsync -av ./shortlog.txt -e ssh pi@192.168.0.20:/home/pi/logs
grep "total size" ./shortlog.txt | grep -P -o "\d+\/\d+\/\d+ \d+:\d+:\d+" | tail -1 > ./.lastbackup.txt
