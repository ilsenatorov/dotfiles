#!/bin/zsh
source ~/dotfiles/.sensitive
if [[ $1 == '--home' ]]; then
    IP=$PI_HOME_IP
    
else
    IP=$PI_IP
fi
rsync -av --delete pi@$IP:/mnt/ftp/storage/Documents /mnt/SD/