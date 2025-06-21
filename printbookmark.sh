#!/bin/bash

save_file="$HOME/.local/share/bookmarks.txt"

wtype "$(grep -v '^#' $save_file | dmenu -i -l 25 | cut -d ' ' -f 1)"
