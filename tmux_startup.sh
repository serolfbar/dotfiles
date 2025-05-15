#! /usr/bin/env bash


echo "Starting tmux"

tmux new-session -s dev -d
tmux new-session -s misc -d
# tmux new-session -s kb -d


tmux attach -d -t dev  
