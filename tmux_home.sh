#!/bin/sh
SESSION='Home'

tmux new -d -s $SESSION
tmux rename-window -t 1 'Shell'
# cd to murmur then clear screen
tmux send-keys "cd ~/code/projects" C-m \; send-keys C-l

tmux new-window -t $SESSION:2 -n 'NeoVim'
# tmux split-window -h
# tmux resize-pane -R 60
# tmux select-pane -t 1
tmux send-keys "cd ~/code/projects && nvim" C-m

tmux attach -t $SESSION
