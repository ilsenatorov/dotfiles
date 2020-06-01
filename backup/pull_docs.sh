#!/bin/zsh
source ~/dotfiles/.sensitive
rsync -av --delete $BACKUP_SERVER:~/Documents ~/
