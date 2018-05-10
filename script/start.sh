#!/bin/bash
xrandr --output VIRTUAL1 --off --output eDP1 --primary --mode 1920x1080 --pos 0x1080 --rotate normal --output DP1 --off --output HDMI2 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI1 --off --output DP2 --off
feh --bg-fill /usr/share/pixmaps/yayoi.PNG
sh ~/.config/script/bar.sh
sleep 1
google-drive-ocamlfuse ~/GoogleDrive/
