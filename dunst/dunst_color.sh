#!/bin/sh
killall dunst
source "${HOME}/.cache/wal/colors.sh"
/usr/bin/dunst \
    -lb "${color0:-#F0F0F0}" \
    -nb "${color0:-#F0F0F0}" \
    -cb "${color0:-#F0F0F0}" \
    -lf "${color7:=#000000}" \
    -cf "${color7:=#000000}" \
    -nf "${color7:=#000000}" \
    -frame_color "${color1:=#F0F0F0}" &