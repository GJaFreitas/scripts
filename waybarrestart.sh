#!/bin/bash
#nomenu

pid=$(pidof waybar)
kill $pid
waybar & disown
