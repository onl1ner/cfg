#!/bin/bash

cp -R -f ~/.config/alacritty .
cp -R -f ~/.config/nvim .

mkdir -p zsh && cp -f ~/.zshrc zsh/.zshrc
mkdir -p tmux && cp -f ~/.tmux.conf tmux/.tmux.conf

cp -R -f ~/.config/yabai . && cp -R -f ~/.config/skhd .
