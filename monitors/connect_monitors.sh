#!/bin/sh
xrandr --output eDP-1-1 --auto --primary --output HDMI-0 --auto --above eDP-1-1
sleep 1
~/dotfiles/polybar/start_polybar.sh