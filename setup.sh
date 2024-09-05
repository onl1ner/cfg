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

rm -rf ~/.config/alacritty && cp -R alacritty ~/.config
rm -rf ~/.config/nvim && cp -R nvim ~/.config

cp zsh/.zshrc ~/.zshrc
cp tmux/.tmux.conf ~/.tmux.conf

if [[ "$OSTYPE" == "darwin"* ]]; then
    if [ "$NO_INSTALL" == false ]; then
        brew install koekeishiya/formulae/yabai
        brew install koekeishiya/formulae/skhd

        brew install nvim tmux lazygit
        brew install xcbeautify xcode-build-server

        brew install fzf bat
    fi

    rm -rf ~/.config/yabai && cp -R yabai ~/.config 
    rm -rf ~/.config/skhd && cp -R skhd ~/.config
fi

if ! [[ -d ~/.tmux/plugins/tpm ]]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

tmux source ~/.tmux.conf
