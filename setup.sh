brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd

brew install nvim tmux lazygit
brew install xcbeautify xcode-build-server

mkdir -p ~/.config

cp -R alacritty ~/.config
cp -R nvim ~/.config

cp zsh/.zshrc ~/.zshrc && cp zsh/.p10k.zsh ~/.p10k.zsh

cp -R yabai ~/.config && cp -R skhd ~/.config
