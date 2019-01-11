#!/bin/bash
xrandr | grep -q "DP-2-3" && xrandr --output eDP-1 --auto --output DP-2-3 --auto --left-of eDP-1 --output DP2-2 --auto --rotate left --right-of eDP-1
