#!/bin/sh
xrandr --output eDP-1-1 --auto --primary --output HDMI-0 --auto --right-of eDP-1-1
pkill polybar
sleep 1
~/dotfiles/polybar/start_polybar.sh
xinput map-to-output 19 eDP-1-1
