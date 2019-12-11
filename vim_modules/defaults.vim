syntax on
filetype plugin indent on
filetype on
filetype plugin on
filetype indent on
set encoding=UTF-8

" Editor look
set number relativenumber
set wrap lbr
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" Indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
filetype indent on

" Search settings
set hlsearch
set incsearch
set ignorecase
set smartcase
set mouse=a

" set lazyredraw
set showcmd
set wildmenu

" History saving
set undofile
set undodir=~/.vim/undodir