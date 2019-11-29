#!/bin/sh
source ~/dotfiles/.sensitive
. ~/.cache/wal/colors.sh
nc -z $BACKUP_SERVER 22 > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo "%{u$color1 +u}🌐: %{F#00aa00}⇄%{F-}%{u#0000ff}"
else
  echo "%{u$color5 +u}🌐: %{F#aa0000}%{F-}%{u#0000ff}"
fi
