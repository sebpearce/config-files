#!/bin/sh
SESSION='Home'

tmux new -d -s $SESSION

tmux rename-window -t 1 'Cycad'
# cd to murmur then clear screen
tmux send-keys "cd ~/code/projects/cycad && nvim" C-m
tmux split-window -h
tmux resize-pane -R 60
tmux send-keys "cd ~/code/projects/cycad" C-m \; send-keys C-l

tmux new-window -t $SESSION:2 -n 'Storybook'
tmux send-keys "cd ~/code/projects/gtd && nvim" C-m
tmux split-window -h
tmux resize-pane -R 60
tmux send-keys "cd ~/code/projects/gtd" C-m \; send-keys C-l

tmux new-window -t $SESSION:3 -n 'GTD'
tmux send-keys "cd ~/gtd && nvim ." C-m

tmux select-window -t 1

tmux attach -t $SESSION
