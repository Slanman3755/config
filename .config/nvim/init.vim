let g:python3_host_prog = $HOME . '/Library/Caches/pypoetry/virtualenvs/' . split(system('poetry -C $HOME/.config/nvim env list'))[0] . '/bin/python'
let g:python_host_prog = g:python3_host_prog
let g:jedi#environment_path = g:python3_host_prog

let g:black#settings = {
    \ 'fast': 1,
    \ 'line_length': 160
\}

call plug#begin()

Plug 'rrethy/nvim-base16'
Plug 'averms/black-nvim', {'do': ':UpdateRemotePlugins'}
Plug 'davidhalter/jedi-vim'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'ivanovyordan/dbt.vim'

call plug#end()

colorscheme base16-irblack

nnoremap <buffer><silent> <c-q> <cmd>call BlackSync()<cr>
inoremap <buffer><silent> <c-q> <cmd>call BlackSync()<cr>
autocmd BufWritePre *.py :call BlackSync()

noremap ; :
set nu
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
