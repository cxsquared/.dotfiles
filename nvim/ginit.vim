" font
let s:fontsize=12

execute "GuiFont! Go Mono for Powerline:h" . s:fontsize

function! AdjustFontSize(amount)
   let s:fontsize = s:fontsize+a:amount
   :execute "GuiFont! Go Mono for Powerline:h" . s:fontsize 
endfunction

noremap <Leader>> <Esc>:call AdjustFontSize(1)<CR>
noremap <Leader>< <Esc>:call AdjustFontSize(-1)<CR>

