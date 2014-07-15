#!/bin/bash

sensors | tee ~/Desktop/sensors.txt

temp=`grep -oP 'Core 0: +\K[+-]\d+' ~/Desktop/sensors.txt`

#Calculation Part
if [ $temp -gt +70 ]
 then 
  notify-send -u "critical" "Temperature" "Current Temp is $temp."
fi

