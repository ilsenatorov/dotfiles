#!/bin/sh
killall -q glava
sleep 1
i3-msg " exec --no-startup-id glava --desktop"
i3-msg " exec --no-startup-id glava --desktop --entry=rc1.glsl"
