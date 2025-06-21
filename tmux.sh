#!/bin/bash

tmuxAttach=$(tmux a 2>&1)

if [[ "$tmuxAttach" == "no sessions" ]]; then
	tmux
fi
