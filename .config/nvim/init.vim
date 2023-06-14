let g:python3_host_prog = $HOME . '/.pyenv/versions/3.9.13/envs/nvim/bin/python'
let g:jedi#environment_path = $HOME . '/.pyenv/versions/3.9.13/envs/nvim/bin/python'

let g:black#settings = {
    \ 'fast': 1,
    \ 'line_length': 88
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
