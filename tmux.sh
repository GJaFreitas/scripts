#!/bin/bash
#nomenu

[[ $(tmux a 2>&1) == "no sessions" ]] && tmux
