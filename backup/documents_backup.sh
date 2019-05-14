#!/bin/sh
source ~/dotfiles/.sensitive
rsync -av --delete --log-file="/home/ilya/dotfiles/backup/rsync.log" /mnt/SD/Documents pi@$PI_IP:/mnt/ftp/storage
cat /home/ilya/dotfiles/backup/rsync.log | grep speedup | grep -Po "\d\d\d\d\/\d\d\/\d\d \d\d:\d\d:\d\d" | tail -1 | sed -e 's|/|-|g' > /home/ilya/dotfiles/backup/.lastdocs.txt
rsync -av /home/ilya/dotfiles/backup/.lastdocs.txt pi@$PI_IP:~/dotfiles/backup/.lastdocs.txt
rsync -av /home/ilya/dotfiles/backup/.source.txt pi@$PI_IP:~/dotfiles/backup/.source.txt
