#!/bin/bash

cp $1 "$HOME/.config/hypr/scheme/wallpaper"

swww img $1 --transition-step 20 --transition-fps 60 --transition-type center
matugen image $1
