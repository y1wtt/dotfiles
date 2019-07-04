#!/bin/sh
i3-msg restart &
sh ~/.config/script/start.sh
sudo killall nm-applet
nm-applet
