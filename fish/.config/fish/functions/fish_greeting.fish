# Defined in /home/rani/.config/fish/config.fish @ line 1
function fish_greeting
	if not type /usr/games/fortune > /dev/null 2>&1
                apt-get install fortune
        end
        /usr/games/fortune -a
end
