#!/bin/bash
acpi | tee ~/Desktop/b_d.txt
temp=`awk '/^Battery 0: Discharging,/ { print $4 }' ~/Desktop/b_d.txt`
temp2=`echo $temp | cut -d '%' -f 1`
if [ $temp2 -lt +15 ]
 then
 /usr/bin/notify-send -u "critical" "Low Battery" "Current percentage is $temp2%. Power off the System or Plug-in the charger"
fi
