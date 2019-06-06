#!/bin/sh
source /home/ilya/dotfiles/.sensitive
if [[ $1 == '--home' ]]; then
    IP=$PI_HOME_IP
else
    IP=$PI_IP
fi
rsync -av --delete --log-file="/home/ilya/dotfiles/backup/rsync.log" /home/ilya/Documents pi@$IP:/mnt/ftp/storage
cat /home/ilya/dotfiles/backup/rsync.log | grep speedup | grep -Po "\d\d\d\d\/\d\d\/\d\d \d\d:\d\d:\d\d" | tail -1 | sed -e 's|/|-|g' > /home/ilya/dotfiles/backup/.lastdocs.txt
rsync -av /home/ilya/dotfiles/backup/.lastdocs.txt pi@$IP:~/dotfiles/backup/.lastdocs.txt
rsync -av /home/ilya/dotfiles/backup/.source.txt pi@$IP:~/dotfiles/backup/.source.txt
