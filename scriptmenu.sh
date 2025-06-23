#!/bin/bash

scripts=$(ls ~/scripts/ | grep -v addbookmark)

run=$(echo "$scripts" | dmenu -l 10 -i -sf green -p "Script to run: " -fn Terminus:size10)

# If some script was chosen then run it
[[ -n $run ]] && sh $run
