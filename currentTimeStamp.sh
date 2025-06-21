#!/bin/bash

time=$(mpc status | awk -v delim='/' '/playing/ {split($3, a, delim); print a[1]}')

minutes=$(echo $time | awk -v delim=':' '{split($1, a, delim); print a[1]}')

minutes=$(($minutes * 60))

seconds=$(echo $time | awk -v delim=':' '{split($1, a, delim); print a[2]}')

Sum=$(($minutes + $seconds))

echo $Sum
