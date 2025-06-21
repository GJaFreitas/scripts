#!/bin/bash

for var in "$@"
do

tidal-dl -q HiFi -l "$var" -o ~/Downloads

done
