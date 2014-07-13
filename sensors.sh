#!/bin/bash

sensors | tee ~/Desktop/sensors.txt

temp=`grep -oP 'Core 0: +\K[+-]\d+' ~/Desktop/sensors.txt`

#temp=`grep -oP '^Core 0:\s+\K\+\d+[.]\d+?' ~/Desktop/sensors.txt`

# echo '2-1.1'|sudo tee /sys/bus/usb/drivers/usb/bind

#Calculation Part
if [ $temp -gt +70 ]
 then 
  notify-send -u "critical" "Temperature" "Current Temp is $temp."
fi

