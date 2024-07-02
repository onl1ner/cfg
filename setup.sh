brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd

brew install nvim tmux lazygit
brew install xcbeautify xcode-build-server

mkdir -p ~/.config

cp -R -f alacritty ~/.config
cp -R -f nvim ~/.config

cp zsh/.zshrc ~/.zshrc

cp -R -f yabai ~/.config && cp -R -f skhd ~/.config
