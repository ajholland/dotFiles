syntax on
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set clipboard=unnamed
set backspace=indent,eol,start
command! Wq wq
command! WQ wq
command! Qw wq
command! QW wq
cnoreabbrev qw wq
cnoreabbrev qW wq
cnoreabbrev wQ wq

set laststatus=2
let g:ale_linters = { 'python': ['flake8', 'pylint', 'mypy', 'pyright'] }
" pycodestyle
let g:airline#extensions#ale#enabled = 1
execute pathogen#infect()


" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
endfunction

set list listchars=trail:.,extends:>
autocmd FileWritePre * call TrimWhiteSpace()
autocmd FileAppendPre * call TrimWhiteSpace()
autocmd FilterWritePre * call TrimWhiteSpace()
autocmd BufWritePre * call TrimWhiteSpace()

map <F2> :call TrimWhiteSpace()<CR>
map! <F2> :call TrimWhiteSpace()<CR>

set autoread
" autocmd BufWritePost *.py silent! !darker <afile>

highlight ALEError cterm=underline

"make < > shifts keep selection
vnoremap < <gv
vnoremap > >gv
