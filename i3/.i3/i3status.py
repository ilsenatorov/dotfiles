#!/usr/bin/python
#! -*- coding: utf-8 -*-
#
import subprocess
import os
import os.path

from i3pystatus import Status
from i3pystatus.updates import pacman, cower


status = Status()


status.register("clock",
    format="%H:%M:%S",
    color='#C678DD',
    interval=1,
    on_leftclick="/usr/bin/gsimplecal",)

status.register("clock",
    format="%a %d-%m-%Y ",
    color='#61AEEE',
    interval=1,)


status.register("battery",
    battery_ident="BAT1",
    interval=5,
    format="Battery: {percentage:.0f}% {remaining:%E%hh:%Mm}",
    alert=True,
    alert_percentage=15,
    color="#FFFFFF",
    critical_color="#FF1919",
    charging_color="#E5E500",
    full_color="#D19A66",
    status={
        "DIS": "DIS",
        "CHR": "CHR",
        "FULL": "FULL",
},)

status.register("temp",
    color='#78EAF2',
                )

status.register("cpu_usage",
    format="CPU {usage}%",)

status.register("mem",
   color="#FFFFFF",
   warn_color="#E5E500",
   alert_color="#FF1919",
   format="RAM {used_mem}/{total_mem} Mb")



status.register("disk",
    color='#FFFFFF',
    path="/",
    format="Root: {used}/{total} Gb",)
status.register("disk",
    color='#FFFFFF',
    path="/home/ilya",
    format="Home: {used}/{total} Gb",)


status.run()
