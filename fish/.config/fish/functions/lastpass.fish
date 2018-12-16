function lastpass
	supergenpass lastpass.com | strings | tr  -d '\n'  | pbcopy
end
