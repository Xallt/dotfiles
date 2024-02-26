let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" nerdtree file navigator (c-e to toggle view)

" Easy moving through file (<leader><leader><motion>)
Plug 'easymotion/vim-easymotion'

" Themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
    let g:airline_theme='dracula'
    let g:airline_powerline_fonts=1
    let g:airline_skip_empty_sections = 1

" LaTeX integration with vim (autocompletion, live update)
Plug 'lervag/vimtex'
    "let g:vimtex_quickfix_latexlog = {'default' : 0}
    let g:tex_flavor = 'latex'
    let g:vimtex_view_method = 'zathura'

    if !exists('g:ycm_semantic_triggers')
        let g:ycm_semantic_triggers = {}
    endif
    au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme
" Keybindings for surrounding with brackets
Plug 'tpope/vim-surround'

" Snippet engine
Plug 'SirVer/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = "<tab>"
    let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Default snippets for various programming languages
Plug 'honza/vim-snippets'
" Auto insert/delete matching brackets 
Plug 'jiangmiao/auto-pairs'
" Commenting keybindings (<leader>cc to comment, <leader>cu to uncomment, etc.)
Plug 'scrooloose/nerdcommenter'

" Paint color codes
Plug 'chrisbra/Colorizer'

" Colorshemes
Plug 'dracula/vim'

" GNU asm syntax support
Plug 'Shirk/vim-gas'
call plug#end()




colorscheme dracula

" Custom commands
command Xclip silent exec "!cat %:p | xclip -sel clip" | redraw!
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Leader mappings
let mapleader = "\\"
let maplocalleader = ","

" Command mode without pressing Shift
nnoremap ; :
vnoremap ; :
nnoremap : <Nop>

" Indenting selection
vnoremap > >gv
vnoremap < <gv

" Move to line edges
noremap H ^
noremap L $

set shell=/bin/bash

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

" Folding
set foldmethod=syntax
set nofoldenable

" Search settings
set hlsearch
set incsearch
set ignorecase
set smartcase

" Default features
set mouse=a
set backspace=indent,eol,start
set completeopt-=preview

" set lazyredraw
set showcmd
set wildmenu

" History saving
if has('persistent_undo')
    set undofile
    let myUndoDir = expand('$HOME/.vim' . '/undodir')
    call system('mkdir -p ' . myUndoDir)
    let &undodir = myUndoDir
endif

