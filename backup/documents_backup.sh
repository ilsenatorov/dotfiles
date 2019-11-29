#!/bin/sh
rsync -avz --delete --log-file="/home/ilya/dotfiles/backup/rsync.log" /mnt/SD/Documents ccb:~/
cat /home/ilya/dotfiles/backup/rsync.log | grep speedup | grep -Po "\d\d\d\d\/\d\d\/\d\d \d\d:\d\d:\d\d" | tail -1 | sed -e 's|/|-|g' > /home/ilya/dotfiles/backup/.lastdocs.txt
rsync -av /home/ilya/dotfiles/backup/.lastdocs.txt ccb:~/backups/.lastdocs.txt
rsync -av /home/ilya/dotfiles/backup/.source.txt ccb:~/backups/.source.txt