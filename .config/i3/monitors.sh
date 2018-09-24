#!/bin/bash
xrandr | grep -q "DP2-3" && xrandr --output eDP1 --auto --output DP2-3 --auto --left-of eDP1 #--output DP2-2 --auto --rotate left --right-of eDP1
