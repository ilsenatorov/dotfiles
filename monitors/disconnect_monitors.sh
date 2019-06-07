#!/bin/sh
xrandr --output eDP-1-1 --auto --output HDMI-0 --off
sleep 1
~/dotfiles/polybar/start_polybar.sh