" Config for deoplete plugin
" Use deoplete
let g:deoplete#enable_at_startup=1
let g:deoplete#enable_smart_case=1

" disable autocomplete by default
let b:deoplete_disable_auto_complete=1
let g:deoplete_disable_auto_complete=1

call deoplete#custom#source('LanguageClient',
    \ 'min_pattern_length',
    \ 2)

" disable the candidates in Comment/String syntaxes
call deoplete#custom#source('_',
    \ 'disabled_syntaxes', ['Comment', 'String'])

" setting sources
call deoplete#custom#option('sources', {
    \ 'c': ['LanguageClient'],
    \ 'cpp': ['LanguageClient'],
    \ 'vim': ['vim']
\})

"ignore sources
let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources._ = [ 'buffer', 'around', 'tag']


