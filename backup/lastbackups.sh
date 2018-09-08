#!/bin/sh
. /home/pi/dotfiles/.sensitive
PI=pi@$PI_IP
BIGBACKUP=$(borg list $PI:/mnt/backups/big | grep -Po '\d\d\d\d-\d\d-\d\d \d\d:\d\d:\d\d' | tail -n 1)
SMALLBACKUP=$(borg list $PI:/mnt/backups/small | grep -Po '\d\d\d\d-\d\d-\d\d \d\d:\d\d:\d\d' | tail -n 1)
PIBACKUP=$(borg list $PI:/mnt/backups/pi | grep -Po '\d\d\d\d-\d\d-\d\d \d\d:\d\d:\d\d' | tail -n 1)
echo "$BIGBACKUP\n$SMALLBACKUP\n$PIBACKUP" > /home/pi/dotfiles/backup/allbackups.log 2>&1
