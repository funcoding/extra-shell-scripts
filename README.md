Shell Scripts 
===================
The Scripts have been tested in Ubuntu 14.04.

In order for the scripts to work the following commands should be executed depending upon the usage of script.
(Don't forget apt-get update)

1. sudo apt-get install lm-sensors #Temperature

2. sudo apt-get install acpi #Battery Levels

In crontab (crontab -e) insert the following line DISPLAY=:0

example: */1 * * * * DISPLAY=:0 sh /home/xyz/Desktop/sensors.sh
