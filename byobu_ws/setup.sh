#!/bin/bash

# mv ~/.vimrc ~/.vimrc_$(date "+%y%m%d").bak
mkdir -p ~/.config/byobu
cp -f ./keybindings.tmux ~/.config/byobu/keybindings.tmux
echo "set -g prefix F12" > ~/.config/byobu/.tmux.conf
