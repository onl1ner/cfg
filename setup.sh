#!/bin/bash

NO_INSTALL=false
for arg in "$@"
do
    if [ "$arg" == "--no-install" ]; then
        NO_INSTALL=true
        break
    fi
done

mkdir -p ~/.config

cp -R -f alacritty/ ~/.config/alacritty
cp -R -f nvim/ ~/.config/nvim

cp zsh/.zshrc ~/.zshrc

if [[ "$OSTYPE" == "darwin"* ]]; then
    if [ "$NO_INSTALL" == false ]; then
        brew install koekeishiya/formulae/yabai
        brew install koekeishiya/formulae/skhd

        brew install nvim tmux lazygit
        brew install xcbeautify xcode-build-server
    fi

    rm -rf ~/.config/yabai ~/.config/skhd
    cp -R yabai ~/.config && cp -R skhd ~/.config
fi
