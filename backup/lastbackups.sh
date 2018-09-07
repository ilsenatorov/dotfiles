#!/bin/sh
. /home/pi/dotfiles/.sensitive
BIGBACKUP=$(borg list /mnt/backups/big | grep -Po '\d\d\d\d-\d\d-\d\d \d\d:\d\d:\d\d' | tail -n 1)
SMALLBACKUP=$(borg list /mnt/backups/small | grep -Po '\d\d\d\d-\d\d-\d\d \d\d:\d\d:\d\d' | tail -n 1)
PIBACKUP=$(borg list /mnt/backups/pi | grep -Po '\d\d\d\d-\d\d-\d\d \d\d:\d\d:\d\d' | tail -n 1)

echo "${BIGBACKUP}\n${SMALLBACKUP}\n${PIBACKUP}" > /home/pi/dotfiles/allbackups.log
