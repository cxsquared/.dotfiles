" Delete trailing whitespace with F5
:nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" nerdtree
" autocmd vimenter * NERDTree " start nerdtree automatically when vim starts up
map <C-n> :NERDTreeToggle<CR>

" keybindings for language client
function SetLSPShortcuts()
    nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
    nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
    nnoremap <silent> gr :call LanguageClient#textDocument_references()<CR>
    nnoremap <silent> gs :call LanguageClient_textDocument_documentSymbol()<CR>
    nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
endfunction()

augroup LSP
    autocmd!
    autocmd FileType cpp,c,js,php,vim call SetLSPShortcuts()
augroup END

" ALE
nmap <F8> <Plug>(ale_fix)

" <ESC> exits in terminal mode
tnoremap <ESC> <C-\><C-n><C-w><C-p>

" fzf
nnoremap <C-p> :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>
