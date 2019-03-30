" Language Servers

let g:LanguageClient_serverCommands={
    \ 'cpp' : ['ccls', '--log-file=/tmp/cc.log'],
    \ 'c' : ['ccls', '--log-file=/tmp/cc.log'],
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
" https://github.com/autozimu/LanguageClient-neovim/issues/379 LSP snippet is not supported
let g:LanguageClient_hasSnippetSupport = 0
