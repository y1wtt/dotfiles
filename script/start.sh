#!/bin/sh
sh ~/.config/script/xrandr.sh &
wait
sh ~/.config/script/feh.sh
sh ~/.config/script/bar.sh
sudo nm-applet
sleep 30
google-drive-ocamlfuse ./Google-Drive/
