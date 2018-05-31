# Defined in - @ line 2
function organize_logs
	for file in (find $argv -depth 1 -iname "*.ips" -exec basename \{\} ';')
        set date (echo $file | grep -Eo "(\d{4}-\d{2}-\d{2})")
        mkdir $date >/dev/null 2>&1
        mv "$file" $date/
    end
end
