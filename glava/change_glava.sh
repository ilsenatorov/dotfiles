#!/bin/sh
color=$(sed -n 7p ~/.cache/wal/colors)
sed -i "s|#define COLOR.*$|#define COLOR ("$color" * ((d / 60) + 1))|g" ~/.config/glava/bars.glsl
sed -i "s|#define COLOR.*$|#define COLOR ("$color" * ((d / 40) + 1))|g" ~/.config/glava/radial.glsl
