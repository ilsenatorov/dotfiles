#!/bin/zsh
source ~/dotfiles/.sensitive
if [[ $1 == '--home' ]]; then
    IP=$PI_HOME_IP
else
    IP=$BACKUP_SERVER
fi
rsync -av --delete $BACKUP_SERVER:~/Documents /mnt/SD/