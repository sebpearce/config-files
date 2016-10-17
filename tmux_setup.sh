#!/bin/sh
SESSION='Dev'

tmux new -d -s $SESSION
tmux rename-window -t 1 'Shell'
tmux new-window -t $SESSION:2 -n 'Editor'
tmux split-window -h
tmux resize-pane -R 60
tmux select-pane -t 1
tmux send-keys "cd ~/code/cultureamp/murmur && vim" C-m
tmux new-window -t $SESSION:3 -n 'Server'
tmux split-window -h
tmux send-keys "cd ~/code/cultureamp/murmur && node config/webpack/webpackDevServer.js" C-m
tmux select-pane -t 1
tmux send-keys "cd ~/code/cultureamp/murmur && rs" C-m
tmux select-window -t 1

tmux attach -t $SESSION
