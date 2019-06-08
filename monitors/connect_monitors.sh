#!/bin/sh
xrandr --output eDP1 --auto --primary --output HDMI1 --auto --above eDP1
sleep 1
~/dotfiles/polybar/start_polybar.sh
pkill conky
~/dotfiles/conky/start_conky.sh
pkill compton
