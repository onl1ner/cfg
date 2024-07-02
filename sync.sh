#!/bin/bash

cp -R -f ~/.config/alacritty .
cp -R -f ~/.config/nvim .

mkdir -p zsh && cp -f ~/.zshrc zsh/.zshrc

cp -R -f ~/.config/yabai . && cp -R -f ~/.config/skhd .
