#!/bin/bash

# If i disable notifications then return imediately
[[ $(cat /home/bag/.local/share/bat_notif) = "no" ]] && exit

capacity=$(cat /sys/class/power_supply/BAT0/capacity)
status=$(cat /sys/class/power_supply/BAT0/status)
if [[ "$status" = "Discharging" && $capacity -lt 15 ]]; then
	notify-send "Low battery" "$capacity%"
fi
