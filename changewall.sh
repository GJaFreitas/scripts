#!/usr/bin/env bash
#nomenu

DIR="$HOME/Pictures/Wallpapers/" # Path to wallpapers directory


x=$(xrandr | grep "*" | sed 's/x/ /g' | awk -F " " '{print $1}' | sed 's/\ //g')
y=$(xrandr | grep "*" | sed 's/x/ /g' | awk -F " " '{print $2}' | sed 's/\ //g')
xl=$(echo "($x-500)/2" | bc)
yl=$(echo "($y-500)/2" | bc)
location=$(echo 500x500+$xl+$yl)

walls=$(nsxiv -t -o -r -b -g $location $DIR | xargs)  # running sxiv in thumbnail mode.
wall1=$(printf "%s" "$walls" | awk '{w = 1; for (--w; w >=0; w--){printf "%s\t",$(NF-w)}print ""}') # Only print the last marked Wallpaper

# if no picture is marked in sxiv, exit.
[ -z "$walls" ] && exit 0

sh $HOME/scripts/set-wallpaper.sh "$wall1"
notify-send "Changing wallpaper to $(basename $wall1)"
