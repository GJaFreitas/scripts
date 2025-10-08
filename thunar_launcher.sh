#!/bin/bash

dir=$(cat "$HOME/.local/share/.dir_cache" | rofi -theme "$HOME/.config/rofi/launchers/type-4/style-2.rasi" -dmenu -p "Directory: ")

[[ -n $dir ]] && (thunar $dir)
