#!/bin/bash

BACKGROUNDPATH=$(awk '/\*backgroundPath:(.*)/ { print $2 }' < ~/.Xresources)

#Apply xrandr config and set bg. Using && to make the wallpaper command wait
/home/jlndk/.screenlayout/main.sh && feh --bg-max $BACKGROUNDPATH
