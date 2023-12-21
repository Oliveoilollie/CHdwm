#!/bin/bash

while true; do
    # Get current CPU usage as a percentage
    cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')

    # Get current date and time
    datetime=$(date +"%a, %B %d %l:%M%p"| sed 's/  / /g')

    #set the FUCKING VOLUME PLEASE
    volume=$(amixer get Master | tail -n1 | sed -r 's/.*\[(.*)%\].*/\1/')


    #memotyssss
    #memort=$(free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g)

    # Output CPU usage and date/time to DWM status bar
    xsetroot -name " VOL: $volume | CPU: $cpu_usage% | $datetime "
    # Wait for one second before updating the status bar again
    sleep 1
done
