#!/bin/bash

pid=$(pidof waybar)
kill $pid
waybar & disown
