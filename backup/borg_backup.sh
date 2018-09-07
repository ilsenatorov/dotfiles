#!/bin/sh
. /home/pi/dotfiles/.sensitive
BORG_OPTS="--stats --one-file-system --compression lz4 --checkpoint-interval 86400"
export BORG_RELOCATED_REPO_ACCESS_IS_OK=yes
export BORG_UNKNOWN_UNENCRYPTED_REPO_ACCESS_IS_OK=no
DATE=$(date +'%y-%m-%d_%a_%H:%M:%S')-$(hostname)
TARGET=pi@localhost:/mnt/backups/pi

borg create $BORG_OPTS \
  --exclude /root/.cache \
  --exclude /var/cache \
  --exclude /var/lib/docker/devicemapper \
  --exclude /dev \
  --exclude /proc \
  --exclude /mnt \
  --exclude /lost+found \
  --exclude /tmp \
  $TARGET::$DATE-$$-system \
  / /boot

borg prune \
-v \
--list \
--keep-last 50 \
--keep-daily 30 \
--keep-monthly 24 $TARGET
/home/pi/dotfiles/backup/fetch_borg_list.sh
