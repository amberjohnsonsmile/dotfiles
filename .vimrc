execute pathogen#infect()

" General settings
syntax on
filetype plugin indent on
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab
set number
set hls
set ic
set nocp
inoremap jj <Esc>
inoremap jk <Esc>
set backspace=indent,eol,start
colorscheme pablo

" Custom key commands
let mapleader = " "
nnoremap <leader>n :bn<CR>
nnoremap <leader>N :bN<CR>

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ":t"

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
        \ "mode": "passive",
        \ }

let g:syntastic_javascript_checkers = ['eslint']

" Prettier
let g:prettier#config#tab_width = 2
let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'none'
