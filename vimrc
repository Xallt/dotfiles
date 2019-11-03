call plug#begin('~/.vim/plugged')

Plug 'powerline/powerline-fonts'
Plug 'dracula/vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'ryanoasis/vim-devicons'
Plug 'lervag/vimtex'

call plug#end()

filetype off
filetype plugin indent on

" Editor extensions
set number
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

" Search (/ or ?) settings
set hlsearch
set incsearch
set ignorecase
set smartcase
set mouse=a

" set lazyredraw
set showcmd
set wildmenu
inoremap <S-Tab> <C-n>

colorscheme dracula
let g:airline_theme='dracula'
let g:airline_powerline_fonts=1
let g:airline_skip_empty_sections = 1
set encoding=UTF-8

" Movement
nnoremap j gj
nnoremap k gk

" Custom commands
command Cdc cd %:p:h
command Xclip silent "!cat %:p | xclip -sel clip"

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
