#!/bin/bash
capacity1=$(cat /sys/class/power_supply/BAT0/capacity)
capacity2=$(cat /sys/class/power_supply/BAT1/capacity)
bar=$(spark 0 $capacity1 $capacity2 100)
graph1=${bar:1:1}
graph2=${bar:2:1}
echo $graph1 "["$capacity1"]%" $graph2 "["$capacity2"]%"
