# Defined in /Users/rani/.config/fish/functions/ports.fish @ line 1
function listenports
	switch (uname)
case Darwin
lsof -i -n -P
case Linux
netstat -tlpn
end
end
