#!/bin/bash
sleep 1
killall polybar
killall trayer
COUNT=1
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload top &
	 echo $COUNT
	 COUNT = $(( COUNT++ ))
  done
else
  polybar --reload top &
fi


