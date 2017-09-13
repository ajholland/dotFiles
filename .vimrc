if has("autocmd")
    filetype on
    filetype indent on
    filetype plugin on
endif
set number
syntax on
set backspace=indent,eol,start
set mouse=a
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab
set softtabstop=4
set autoindent
set nolist


au BufWritePost *.go !goimports -w %
au BufWritePost *.go !gofmt -w %

set clipboard=unnamed

command Q q
command WQ wq
command Wq wq
