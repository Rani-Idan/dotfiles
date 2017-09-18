function ports
	switch (uname)
case Darwin
lsof -i -n -P
case Linux
netstat -tlpn
end
end
