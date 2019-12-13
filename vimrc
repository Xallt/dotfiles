call plug#begin('~/.vim/plugged')
" Plugins
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
    let g:airline_theme='dracula'
    let g:airline_powerline_fonts=1
    let g:airline_skip_empty_sections = 1

Plug 'scrooloose/nerdcommenter'

Plug 'lervag/vimtex'
    let g:vimtex_quickfix_latexlog = {'default' : 0}
    let g:tex_flavor = 'latex'
    let g:vimtex_view_method = 'zathura'

    if !exists('g:ycm_semantic_triggers')
        let g:ycm_semantic_triggers = {}
    endif
    au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

Plug 'ycm-core/YouCompleteMe'
    let g:ycm_complete_in_strings = 0
    let g:ycm_key_list_select_completion = []

Plug 'tpope/vim-surround'

Plug 'SirVer/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'

" Colorshemes
Plug 'dracula/vim'

call plug#end()

colorscheme dracula
set shell=/bin/bash

set runtimepath+=~/.vim_modules
" Default nice configurations
source $HOME/.vim_modules/defaults.vim
augroup tex_group
    autocmd!
    autocmd FileType tex source $HOME/.vim_modules/tex.vim
augroup END
augroup cpp_group
    autocmd!
    autocmd FileType cpp source $HOME/.vim_modules/cpp.vim
augroup END

" Custom commands
command Cdc cd %:p:h
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

" In insert or command mode, move normally by using Ctrl
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

" No arrow keys for you now hahahaaaaaa
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
