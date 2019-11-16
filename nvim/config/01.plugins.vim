" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
if has('win32') || has('win64')
	call plug#begin('~/AppData/Local/nvim/plugged')
else
	call plug#begin(stdpath('config') . '/plugged')
endif

" Make sure you use single quotes
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deol.nvim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'sheerun/vim-polyglot'

Plug 'w0rp/ale'

Plug 'chriskempson/base16-vim'

Plug 'autozimu/LanguageClient-neovim', { 'rev': 'next', 'do': 'bash install.sh' }

Plug 'vimwiki/vimwiki'
Plug 'mattn/calendar-vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'Shougo/echodoc.vim'

call plug#end()

