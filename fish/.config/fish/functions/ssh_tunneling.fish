function ssh_tunneling
	ssh -D $argv[2] -f -C -N $argv[1]
end
