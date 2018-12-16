function funcsavestow
	funcsave $argv[1]
mv ~/.config/fish/functions/$argv[1].fish ~/dotfiles/fish/.config/fish/functions/$argv[1].fish
end
