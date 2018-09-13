#!/bin/sh

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
source /home/ilya/dotfiles/.sensitive
polybar example &

echo "started the bar"
