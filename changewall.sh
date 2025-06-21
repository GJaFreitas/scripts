#!/bin/bash

files=$(find ~/wall -type f)

for file in $files
do 
	filenames+=$(basename $file)
	filenames+=$'\n'
done

chosen=$(echo "$filenames" | dmenu -l 10 -sf green -p "Wallpaper" -fn Terminus:size10)
chosen=$(echo "$files" | grep $chosen)

hellwal -i $chosen -m -b 0.1 &
swww img $chosen --transition-step 20 --transition-fps 60 --transition-type center
