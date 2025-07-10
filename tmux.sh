#!/bin/bash

[[ $(tmux a 2>&1) == "no sessions" ]] && tmux
