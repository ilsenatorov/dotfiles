#!/bin/sh
source ~/dotfiles/.sensitive
rsync -av --delete --log-file="/home/ilya/dotfiles/backup/rsync.log" /home/ilya/Documents $BACKUP_SERVER:~/
cat /home/ilya/dotfiles/backup/rsync.log | grep speedup | grep -Po "\d\d\d\d\/\d\d\/\d\d \d\d:\d\d:\d\d" | tail -1 | sed -e 's|/|-|g' > /home/ilya/dotfiles/backup/.lastdocs.txt
rsync -av /home/ilya/dotfiles/backup/.lastdocs.txt $BACKUP_SERVER:~/backups/.lastdocs.txt
rsync -av /home/ilya/dotfiles/backup/.source.txt $BACKUP_SERVER:~/backups/.source.txt
