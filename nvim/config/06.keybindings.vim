" Delete trailing whitespace with F5
:nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" nerdtree
" autocmd vimenter * NERDTree " start nerdtree automatically when vim starts up
map <C-n> :NERDTreeToggle<CR>

" ALE
nmap <F8> <Plug>(ale_fix)

" <ESC> exits in terminal mode
tnoremap <ESC> <C-\><C-n><C-w><C-p>
