#!/bin/sh
source ~/.cache/wal/colors.sh
scrot /tmp/lock.png
cd ~/dotfiles/pixelize
invoke pixelize /tmp/lock.png --output-width=1920
B=$color2
B+=22
C=$color3
C+=77
D=$color3
D+=ff
T=#ffffff
T+=ff
W=$color0
W+=ff
V=$color12
V+=ff
xkb-switch -s us
killall compton
i3lock -n \
-i /tmp/lock.processed.png      \
--insidevercolor=$C   \
--ringvercolor=$V     \
\
--insidewrongcolor=$C \
--ringwrongcolor=$W   \
\
--insidecolor=$C      \
--ringcolor=$D        \
--linecolor=$B        \
--separatorcolor=$D   \
\
--verifcolor=$T        \
--wrongcolor=$T        \
--timecolor=$T        \
--datecolor=$T        \
--layoutcolor=$T      \
--keyhlcolor=$W       \
--bshlcolor=$W        \
\
--keylayout 2         \
--clock               \
--indicator           \
--timestr="%H:%M:%S"  \
--datestr="%A, %d %m %Y"
compton -b
