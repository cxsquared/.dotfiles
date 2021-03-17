" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
if has('win32') || has('win64')
	call plug#begin('~/AppData/Local/nvim/plugged')
else
	call plug#begin('~/.local/share/nvim/plugged')
endif

" Make sure you use single quotes

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'sheerun/vim-polyglot'

Plug 'w0rp/ale'

Plug 'chriskempson/base16-vim'

Plug 'junegunn/fzf'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'vimwiki/vimwiki'
Plug 'mattn/calendar-vim'

call plug#end()

