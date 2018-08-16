#!/bin/sh
source /home/ilya/dotfiles/.sensitive
BACKUPDIR=/home/ilya/dotfiles/backup
TARGET='pi:/mnt/backups/big'
LIST=$(borg list $TARGET)
echo $LIST > $BACKUPDIR/borg.log
cat $BACKUPDIR/borg.log | grep -Po '\d\d\d\d-\d\d-\d\d \d\d:\d\d:\d\d' | tail -n 1 > $BACKUPDIR/.lastbackup.txt
