#!/bin/sh
export BORG_PASSCOMMAND='cat /home/ilya/dotfiles/backup/.passphrase'
BORG_OPTS="--stats --one-file-system --compression lz4 --checkpoint-interval 86400"
export BORG_RELOCATED_REPO_ACCESS_IS_OK=no
export BORG_UNKNOWN_UNENCRYPTED_REPO_ACCESS_IS_OK=no
DATE=$( date +'%H:%M_%d-%m-%y_%a')-$(hostname)
TARGET=pi:/mnt/backups/big

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
borg prune -v --list --keep-last=50 $TARGET
