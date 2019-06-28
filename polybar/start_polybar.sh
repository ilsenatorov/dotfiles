#!/bin/sh

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
source /home/ilya/dotfiles/.sensitive
polybar main &
polybar secondary & ln -sf /tmp/polybar_mqueue.$! /tmp/ipc-bottom &

echo "started the bar"

exit 0
