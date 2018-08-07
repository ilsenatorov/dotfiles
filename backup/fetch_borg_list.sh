#!/bin/sh
BACKUPDIR=/home/ilya/dotfiles/backup
export BORG_PASSCOMMAND='cat /home/ilya/dotfiles/backup/.passphrase'
TARGET='pi:/mnt/backups/big'
borg list $TARGET > $BACKUPDIR/borg.log
tail -n 1 $BACKUPDIR/borg.log | grep -Po '\d\d\d\d-\d\d-\d\d \d\d:\d\d:\d\d' > $BACKUPDIR/.lastbackup.txt
