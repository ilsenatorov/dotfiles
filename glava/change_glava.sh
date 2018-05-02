#!/bin/sh
color=$(sed -n 3p ~/.cache/wal/colors)
sed -i "s|#define COLOR.*$|#define COLOR ("$color" * ((d / 60) + 1))|g" ~/.config/glava/bars.glsl
