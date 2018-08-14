#!/bin/sh
source ~/dotfiles/.sensitive
ping -W 1 -c 1 -s 1 $PI_IP > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo "%{F#00aa00}⇄%{F-}"
else
  echo "%{F#aa0000}%{F-}"
fi
