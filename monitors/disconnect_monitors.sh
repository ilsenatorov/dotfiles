#!/bin/sh
xrandr --output eDP1 --auto --output HDMI1 --off
sleep 1
~/dotfiles/polybar/start_polybar.sh
compton -b