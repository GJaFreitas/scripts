#!/bin/bash

if [[ $(cat /home/bag/.local/share/bat_notif) = "yes" ]]; then
	echo "no" > /home/bag/.local/share/bat_notif
	notify-send "Battery notifications off"
else
	echo "yes" > /home/bag/.local/share/bat_notif
	notify-send "Battery notifications on"
fi
