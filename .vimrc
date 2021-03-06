execute pathogen#infect()

" General settings
syntax on
filetype plugin indent on
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set number
set hls
set ic
set nocp
inoremap jj <Esc>
inoremap jk <Esc>
inoremap {<cr> {<cr>}<c-o>O<tab>
inoremap [<cr> [<cr>]<c-o>O<tab>
inoremap (<cr> (<cr>)<c-o>O<tab>
set backspace=indent,eol,start
colorscheme pablo
au FileType * set fo-=c fo-=r fo-=o

" Custom key commands
let mapleader = " "
nnoremap <leader>n :bn<CR>
nnoremap <leader>N :bN<CR>

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ":t"

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
" let g:syntastic_mode_map = {
"         \ "mode": "passive",
"         \ }

" let g:syntastic_javascript_checkers = ['eslint']

" Prettier
let g:prettier#config#tab_width = 2
let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'none'
let g:prettier#config#semi = 'false'
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.json,*.css,*.scss,*.less,*.graphql Prettier

" Debugger
function! DebugJs()
  let cmd="node --debug-brk "
  if( expand('%:e') == "coffee")
    let cmd="coffee --nodejs --debug-brk "
  endif
  exec "silent ConqueTermVSplit bash -ic \"(" . cmd . @% . " &) ; sleep 1s && node-vim-inspector\""
endfunction

" launch debug on ctrl-d
nnoremap <C-d> :call DebugJs()<CR>    

let g:go_fmt_fail_silently = 1
