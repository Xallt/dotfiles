call plug#begin('~/.vim/plugged')

Plug 'tomasr/molokai'

call plug#end()

filetype off
filetype plugin indent on

" Editor extensions
set number
set cursorline

" Indentation
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
filetype indent on

" Search (/ or ?) settings
set hlsearch
set incsearch
set ignorecase
set smartcase

" set lazyredraw
set showcmd
set wildmenu

set mouse=a
colorscheme molokai

" Movement
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
