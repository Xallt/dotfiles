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
Plug 'mxw/vim-jsx'

call plug#end()

filetype off
filetype plugin indent on

" Editor extensions
set number
"set cursorline

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
inoremap <S-Tab> <C-n>

set mouse=a
colorscheme dracula
let g:airline_theme='dracula'
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
inoremap () ()
inoremap [] []
inoremap {} {}
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Selection indenting
vmap > >gv
vmap < <gv
