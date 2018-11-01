#!/bin/sh
rsync -av --log-file="/home/ilya/dotfiles/backup/rsync.log" /home/ilya/Documents pi:/mnt/ftp/storage
cat /home/ilya/dotfiles/backup/rsync.log | grep speedup | grep -Po "\d\d\d\d\/\d\d\/\d\d \d\d:\d\d:\d\d" | tail -1 > /home/ilya/dotfiles/backup/.lastdocs.txt