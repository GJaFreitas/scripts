#!/bin/bash

save_file="$HOME/.local/share/bookmarks.txt"
to_type=$(grep -v '^#' $save_file | dmenu -i -l 25 -fn Terminus:size10| cut -d ' ' -f 1)

#If nothing was chosen
[[ -z $to_type ]] && exit

# If the current active window is a zen browser instance then open
# a new tab with the bookmark as a URL
[[ -n $(hyprctl activewindow | grep Zen) ]] && zen-browser --new-tab $to_type && return

wtype "$to_type"
