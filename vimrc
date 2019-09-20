if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif

filetype off
filetype plugin indent on


set number
set tabstop=4
set softtabstop=4
set autoindent

" Search (/ or ?) settings
set hlsearch
set incsearch
set ignorecase
set smartcase

" set lazyredraw
set showcmd

set mouse=a
