" Language Servers
" required for operations modifying multiple buffers like rename
set hidden

let g:LanguageClient_serverCommands={
    \ 'cpp' : ['clangd', '--log-file=/tmp/cq.log'],
    \ 'c' : ['clangd', '--log-file=/tmp/cq.log'],
    \ }

let g:LanguageClient_autoStart = 1
let g:LanguageClient_rootMarkers = {
    \ 'cpp': ['compile_commands.json', 'build'],
    \ 'c': ['compile_commands.json', 'build']
    \}

set completefunc=LanguageClient#complete
set formatexpr=LanguageClient_textDocument_rangeFormatting()

let g:LanguageClient_loadSettings=1
let g:LanguageClient_settingsPath= '/home/cxsuared/.config/nvim/config/settings.json'
