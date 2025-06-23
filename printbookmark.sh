#!/bin/bash

save_file="$HOME/.local/share/bookmarks.txt"
to_type=$(grep -v '^#' $save_file | dmenu -i -l 25 -fn Terminus:size10| cut -d ' ' -f 1)

#If nothing was chosen
[[ -z $to_type ]] && exit

wtype "$to_type"
