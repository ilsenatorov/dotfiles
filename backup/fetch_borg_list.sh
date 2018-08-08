#!/bin/sh
BACKUPDIR=/home/ilya/dotfiles/backup
export BORG_PASSCOMMAND='cat /home/ilya/dotfiles/backup/.passphrase'
TARGET='pi:/mnt/backups/big'
LIST=$(borg list $TARGET)
echo $LIST > $BACKUPDIR/borg.log
cat $BACKUPDIR/borg.log | grep -Po '\d\d\d\d-\d\d-\d\d \d\d:\d\d:\d\d' | tail -n 1 > $BACKUPDIR/.lastbackup.txt
