#!/bin/bash
#nomenu

script_path=$'/home/bag/scripts/'
scripts=$(ls ~/scripts/)
tmpfile=$'/tmp/script_menu.XXXXX'

[[ -n $(ls $tmpfile) ]] && return

for script in $scripts
do
	[[ -z $(grep "#nomenu" "$script_path$script") ]] && runable+="$script" && runable+=$'\n'
done

echo -e "$runable" | wofi --dmenu -bni -p "Script to run: " > $tmpfile &

sleep 0.1
hyprctl dispatch focuswindow class:wofi

wait

run=$(cat $tmpfile)

rm -f $tmpfile

# If some script was chosen then run it
[[ -n $run ]] && (sh ~/scripts/$run)
