#!/bin/bash
# start up bar
killall polybar &
wait
if type "xrandr"; then
  for m in $(/usr/bin/xrandr|grep " connected"|awk -F " " '{print $1}'); do
    MONITOR=$m polybar --reload top &
  done
else
  polybar --reload top &
fi
