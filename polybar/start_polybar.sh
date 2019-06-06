#!/bin/sh

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
source /home/ilya/dotfiles/.sensitive
polybar main &
polybar secondary &

echo "started the bar"

exit 0
