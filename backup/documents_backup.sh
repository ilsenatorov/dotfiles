#!/bin/sh
rsync -av --delete --log-file="/home/ilya/dotfiles/backup/rsync.log" /home/ilya/Documents pi:/mnt/ftp/storage
cat /home/ilya/dotfiles/backup/rsync.log | grep speedup | grep -Po "\d\d\d\d\/\d\d\/\d\d \d\d:\d\d:\d\d" | tail -1 | sed -e 's|/|-|g' > /home/ilya/dotfiles/backup/.lastdocs.txt
rsync -av /home/ilya/dotfiles/backup/.lastdocs.txt pi:~/dotfiles/backup
