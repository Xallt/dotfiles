call plug#begin('~/.vim/plugged')

Plug 'powerline/powerline-fonts'
Plug 'dracula/vim'
Plug 'tomasr/molokai'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

call plug#end()

filetype off
filetype plugin indent on

" Editor extensions
set number
set cursorline

" Indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
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
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1
set encoding=UTF-8

" Movement
nnoremap j gj
nnoremap k gk

" NERDTree configs
map <C-n> :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline = 0
command Cdc cd %:p:h

" Brace completion
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Selection indenting
vmap > >gv
vmap < <gv
