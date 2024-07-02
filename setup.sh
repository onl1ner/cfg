mkdir -p ~/.config
rm -rf ~/.config/alacritty ~/.config/nvim

cp -R alacritty ~/.config
cp -R nvim ~/.config

cp zsh/.zshrc ~/.zshrc

if [[ "$OSTYPE" == "darwin"* ]]; then
	brew install koekeishiya/formulae/yabai
	brew install koekeishiya/formulae/skhd

	brew install nvim tmux lazygit
	brew install xcbeautify xcode-build-server

	rm -rf ~/.config/yabai ~/.config/skhd
	cp -R yabai ~/.config && cp -R skhd ~/.config
fi
