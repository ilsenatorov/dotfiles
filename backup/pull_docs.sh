#!/bin/zsh
source ~/dotfiles/.sensitive
if [[ $1 == '--home' ]]; then
    rsync -av --delete pi@$PI_HOME_IP:/mnt/ftp/storage/Documents /mnt/SD/
else
    rsync -av --delete pi@$PI_IP:/mnt/ftp/storage/Documents /mnt/SD/
fi
