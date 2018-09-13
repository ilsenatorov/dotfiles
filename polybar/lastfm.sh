#!/bin/sh
t=0
toggle() {
    t=$(((t + 1) % 2))
    }
trap "toggle" USR1
while true; do
    if [ $t -eq 0 ]; then
        echo 🎧
    else
        /home/ilya/dotfiles/polybar/lastfm.py
    fi
    sleep 5 &
    wait
done