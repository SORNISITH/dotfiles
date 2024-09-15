#!/bin/zsh
winnz=$(tmux display-message -p '#I')

tmux split-window -h -l 35%
tmux select-window -t "$winnz"
nvim
