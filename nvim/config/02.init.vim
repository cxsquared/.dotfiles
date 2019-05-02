" General
set number "Show line numbers
set wrap
set linebreak " break lines at words (requires wrap)
set nolist
set scrolloff=5 " 2 lines above/below cursor when scrolling
set noswapfile " turn off swapfiles

set textwidth=0
set wrapmargin=0 "Disable line wrap
set ruler "Show row and column ruler information
set showbreak=+++ "Wrap-broken line prefix
set showmatch "Highlight matching brace
set showcmd "Show command in bottom bar
set title " show file in titlebar
set showmode " show mode in status bar (insert/replace..)
set visualbell "Use visual bell (no beep)
set cursorline " highlight current line

set hlsearch "highlight all search results
set smartcase "enable smart-case search
set ignorecase " always case-insensitive
set incsearch " searches for strings incrementally
nmap \q :nohlsearch<CR>
nnoremap <leader><space> :noh<CR>

" Setting up tabbing to be 4 spaces
filetype plugin indent on

set autoindent "auto-indent new lines
set expandtab " On pressing tab, insert 4 spaces
set shiftwidth=4 " when indenting with '>', use 4 spaces width
set smartindent "enable smart-indent
set smarttab "enable smart-tabs
set tabstop=4 " show existing tab with 4 spaces width
set confirm " get a dialog when :q, :w, or :wq fails
set nobackup " no backup~ files
set viminfo='20,\"500 " remember copy registers after quitting in the viminfo file -- 20 jump links, regs up to 500 lines'
set hidden " remember undo after quitting
set history=150 " keep 50 lines of command history
set clipboard+=unnamedplus " use system clipboard

" Set colors in terminal
" Solarized, dark, with true color support
set termguicolors
set background=dark
colorscheme base16-tomorrow-night 

" close vim if only window left is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Disable completion where available from ALE
" (not worth creating a separate file just for a one-liner)
let g:ale_completion_enabled = 0

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1

"set vim to chdir for each file
if exists('+autochdir')
    set autochdir
else
    autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
endif

