#!/bin/sh
. /home/pi/dotfiles/.sensitive
BACKUPDIR=/home/pi/dotfiles/backup
TARGET='pi@localhost:/mnt/backups/pi'
LIST=$(borg list $TARGET)
echo $LIST > $BACKUPDIR/borg.log
cat $BACKUPDIR/borg.log | grep -Po '\d\d\d\d-\d\d-\d\d \d\d:\d\d:\d\d' | tail -n 1 > $BACKUPDIR/.lastbackup.txt
