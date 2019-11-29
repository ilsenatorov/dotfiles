#!/bin/bash

DIR="${HOME}/Pictures"
DATE="$(date +%Y%m%d-%H%M%S)"
NAME="${DIR}/screenshot-${DATE}.png"

import -format png "${NAME}"

notify-send "${NAME}"
