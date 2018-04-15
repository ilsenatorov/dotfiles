#!/bin/sh
col_num='\[Color1Intense\]'

colors=$(grep -A1 $col_num ~/.cache/wal/colors-konsole.colorscheme | grep -v $col_num | grep -o '[0-9]*,[0-9]*,[0-9]*' | sed 's/[ \t]*$//')
msi-keyboard -m normal -r left,$colors -r middle,$colors -r right,$colors
