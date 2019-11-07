call plug#begin('~/.vim/plugged')
" Plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'ycm-core/YouCompleteMe'

" Colorshemes
Plug 'dracula/vim'

call plug#end()

if empty(v:servername) && exists('*remote_startserver')
  call remote_startserver('VIM')
endif

filetype off
filetype plugin indent on

" Editor look
set number
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
colorscheme dracula

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
inoremap <S-Tab> <C-n>

" vim-airline configuration
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

" Comfy mappings 
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
vmap > >gv
vmap < <gv

" Vim mappings
let maplocalleader = ","

" Vimtex configuration
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
if !exists('g:ycm_semantic_triggers')
let g:ycm_semantic_triggers = {}
endif
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme
