#!/bin/sh
col_main='\[Color1Intense\]'
colors_main=$(grep -A1 $col_main ~/.cache/wal/colors-konsole.colorscheme | grep -v $col_main | grep -o '[0-9]*,[0-9]*,[0-9]*' | sed 's/[ \t]*$//')
msi-keyboard -m normal -r left,$colors_main -r middle,$colors_main -r right,$colors_main
