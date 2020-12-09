call plug#begin('~/.vim/plugged')
" Plugins
Plug 'preservim/nerdtree'
    let NERDTreeMinimalUI = 1
    let NERDTreeDirArrows = 1
    noremap <C-n> :NERDTreeToggle<cr>
    noremap <C-e> :NERDTreeToggle<cr>
    set modifiable
Plug 'hankchiutw/nerdtree-ranger.vim'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
    let g:airline_theme='dracula'
    let g:airline_powerline_fonts=1
    let g:airline_skip_empty_sections = 1
Plug 'kien/ctrlp.vim'
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
    let g:ctrlp_working_path_mode = 'ra'
    let g:ctrlp_extensions = ['file', 'mru', 'line']
Plug 'lervag/vimtex'
    "let g:vimtex_quickfix_latexlog = {'default' : 0}
    let g:tex_flavor = 'latex'
    let g:vimtex_view_method = 'zathura'

    if !exists('g:ycm_semantic_triggers')
        let g:ycm_semantic_triggers = {}
    endif
    au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

Plug 'ycm-core/YouCompleteMe'
    let g:ycm_complete_in_strings = 0
    let g:ycm_key_list_select_completion = []
    let g:ycm_auto_hover = ''
    nmap <leader>D <plug>(YCMHover)

Plug 'tpope/vim-surround'

Plug 'SirVer/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = "<tab>"
    let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

Plug 'Vimjas/vim-python-pep8-indent'
Plug 'davidhalter/jedi-vim'
Plug 'jeetsukumaran/vim-pythonsense'

Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'chrisbra/Colorizer'
Plug 'OmniSharp/omnisharp-vim'
Plug 'mhinz/vim-startify'
Plug 'psliwka/vim-smoothie'
Plug 'michaeljsmith/vim-indent-object'

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
augroup c_group
    autocmd!
    autocmd FileType c source $HOME/.vim_modules/c.vim
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

" Move to line edges
noremap H ^
noremap L $

" No arrow keys for you now hahahaaaaaa
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
