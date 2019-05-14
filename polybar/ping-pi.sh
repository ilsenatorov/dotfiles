#!/bin/sh
source ~/dotfiles/.sensitive
. ~/.cache/wal/colors.sh
if [[ $1 == '--home' ]]; then
    IP=$PI_HOME_IP
else
    IP=$PI_IP
fi
nc -z $IP 22 > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo "%{u$color1 +u}π: %{F#00aa00}⇄%{F-}%{u#0000ff}"
else
  echo "%{u$color5 +u}π: %{F#aa0000}%{F-}%{u#0000ff}"
fi
