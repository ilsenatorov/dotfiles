#!/bin/sh
BACKUPDIR='/home/ilya/dotfiles/backup'
rsync -aAvzh --log-file="/tmp/backupslog.txt" --delete --exclude-from $BACKUPDIR/.exclude-list.txt /home/ilya/ -e ssh pi:/mnt/backups/small/
cat /tmp/backupslog.txt | grep --colour='never' -e "sent" -e "total size" -e "connection unexpectedly closed" >> $BACKUPDIR/shortlog.txt
rm /tmp/backupslog.txt
rsync -avh $BACKUPDIR/shortlog.txt -e ssh pi:/home/pi/logs
grep "total size" $BACKUPDIR/shortlog.txt | grep -P -o "\d+\/\d+\/\d+ \d+:\d+:\d+" | tail -1 > $BACKUPDIR/.lastbackup.txt
