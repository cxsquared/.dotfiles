" Config for deoplete plugin
" setup python on windows
if has("win") || has("win64")
    let g:python_host_prog='/Python27/python.exe'
    let g:python3_host_prog='/Users/Cody Claborn/AppData/Local/Programs/Python/Python36/python.exe'
endif

" Use deoplete
let g:deoplete#enable_at_startup=1
let g:deoplete#enable_smart_case=1

" disable autocomplete by default
let b:deoplete_disable_auto_complete=1
let g:deoplete_disable_auto_complete=1

call deoplete#custom#source('LanguageClient',
    \ 'min_pattern_length',
    \ 2)

if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
endif

" disable the candidates in Comment/String syntaxes
call deoplete#custom#source('_',
    \ 'disabled_syntaxes', ['Comment', 'String'])

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" setting sources
call deoplete#custom#option('sources', {
    \ 'c': ['LanguageClient'],
    \ 'cpp': ['LanguageClient'],
    \ 'vim': ['vim']
\})

"ignore sources
let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources._ = [ 'buffer', 'around', 'tag']


