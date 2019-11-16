" Init other .vim config files
if has('win32') || has('wind64')
	for f in split(glob('~/Appdata/Local/nvim/config/*.vim'), '\n')
	    exe 'source' f
	endfor
else
	for f in split(glob('~/.config/nvim/config/*.vim'), '\n')
	    exe 'source' f
	endfor
endif
