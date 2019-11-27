# Defined in /home/rani/.config/fish/functions/exit.fish @ line 1
function exit
	if set -q TMUX
        tmux kill-pane
    else
        builtin exit
    end
end
