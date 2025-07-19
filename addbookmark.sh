#!/bin/bash
#nomenu

save_file="$HOME/.local/share/bookmarks.txt"

bookmark="$(wl-paste --primary --no-newline)"

if [ -z $(grep $bookmark $save_file) ]; then
	echo "$bookmark" >> "$save_file"
	notify-send "Bookmarked $bookmark"
else
	notify-send "Already bookmarked"
fi
