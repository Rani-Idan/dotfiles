# Defined in - @ line 2
function share
	mkdir /tmp/files_shared
    ln -s $argv /tmp/files_shared/
    ifconfig | grep inet
    python -m SimpleHTTPServer
    rm -rf /tmp/files_shared
end
