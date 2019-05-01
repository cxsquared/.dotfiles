" Init other .vim config files
if has('win32') || has('wind64')
	echo "Loading windows"
	for f in split(glob('~/Appdata/Local/nvim/config/*.vim'), '\n')
	    exe 'source' f
	endfor
else
	echo "Loading linux"
	for f in split(glob('./config/*.vim'), '\n')
	    exe 'source' f
	endfor
endif
