#!/bin/sh

head -n 9 ~/dotfiles/termite/config > ~/dotfiles/termite/tmp
grep -vwE "(Special|Colors|wallpaper)" ~/.cache/wal/colors-wal.vim | cut -c5- >> ~/dotfiles/termite/tmp
mv ~/dotfiles/termite/tmp ~/dotfiles/termite/config
sed -i "s/\"//g" ~/dotfiles/termite/config
