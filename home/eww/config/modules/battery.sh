#!/bin/sh

get_battery() {
	BAT=`ls /sys/class/power_supply | grep BAT | head -n 1`
	cat /sys/class/power_supply/${BAT}/capacity
}
get_battery_stat() {
	BAT=`ls /sys/class/power_supply | grep BAT | head -n 1`
	cat /sys/class/power_supply/${BAT}/status
}

battery=$(get_battery)
battery_stat=$(get_battery_stat)

if [[ ${battery_stat} == "Charging" ]]; then
    echo Charging ${battery}%
else
    echo BAT ${battery}%
fi