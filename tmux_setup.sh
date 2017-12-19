#!/bin/sh
SESSION='Dev'

tmux new -d -s $SESSION
tmux rename-window -t 1 'Shell'
# cd to murmur then clear screen
tmux send-keys "cd ~/code/cultureamp/murmur" C-m \; send-keys C-l

tmux new-window -t $SESSION:2 -n 'NeoVim'
# tmux split-window -h
# tmux resize-pane -R 60
# tmux select-pane -t 1
tmux send-keys "cd ~/code/cultureamp/murmur && nvim" C-m

tmux new-window -t $SESSION:3 -n 'Server'
tmux split-window -h
tmux send-keys "cd ~/code/cultureamp/murmur && HOT=0 bin/foreman start" C-m
tmux select-pane -t 1
tmux send-keys "cd ~/code/cultureamp/query && ./run.sh" C-m
tmux select-window -t 1

tmux attach -t $SESSION
