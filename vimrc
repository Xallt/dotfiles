call plug#begin('~/.vim/plugged')
" Nerdtree file navigator (C-e to toggle view)
Plug 'preservim/nerdtree'
    let NERDTreeMinimalUI = 1
    let NERDTreeDirArrows = 1
    noremap <C-e> :NERDTreeToggle<cr>
    set modifiable
" Ranger-like navigation in nerdtree
Plug 'hankchiutw/nerdtree-ranger.vim'

" Easy moving through file (<leader><leader><motion>)
Plug 'easymotion/vim-easymotion'

" Themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
    let g:airline_theme='dracula'
    let g:airline_powerline_fonts=1
    let g:airline_skip_empty_sections = 1

" File fuzzy search (C-p to open, C-b/C-f to change modes)
Plug 'kien/ctrlp.vim'
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
    let g:ctrlp_working_path_mode = 'ra'
    let g:ctrlp_extensions = ['file', 'mru', 'line']

" LaTeX integration with vim (autocompletion, live update)
Plug 'lervag/vimtex'
    "let g:vimtex_quickfix_latexlog = {'default' : 0}
    let g:tex_flavor = 'latex'
    let g:vimtex_view_method = 'zathura'

    if !exists('g:ycm_semantic_triggers')
        let g:ycm_semantic_triggers = {}
    endif
    au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

" General completion engine
Plug 'ycm-core/YouCompleteMe'
    let g:ycm_complete_in_strings = 0
    let g:ycm_key_list_select_completion = []
    let g:ycm_auto_hover = ''
    nmap <leader>D <plug>(YCMHover)

" Keybindings for surrounding with brackets
Plug 'tpope/vim-surround'

" Snippet engine
Plug 'SirVer/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = "<tab>"
    let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Python auto-indent
Plug 'Vimjas/vim-python-pep8-indent'
" JEDI python autocompletion engine
Plug 'davidhalter/jedi-vim'
" Vim motions and text objects for Python classes, methods, functions, etc.
Plug 'jeetsukumaran/vim-pythonsense'

" Default snippets for various programming languages
Plug 'honza/vim-snippets'
" Auto insert/delete matching brackets 
Plug 'jiangmiao/auto-pairs'
" Commenting keybindings (<leader>cc to comment, <leader>cu to uncomment, etc.)
Plug 'scrooloose/nerdcommenter'

" Paint color codes
Plug 'chrisbra/Colorizer'

" C# completion engine
Plug 'OmniSharp/omnisharp-vim'

" Vim starting screen
Plug 'mhinz/vim-startify'

" Smooth scrolling on C-d/C-u
Plug 'psliwka/vim-smoothie'
" Text object wrapping lines of code with same indent
Plug 'michaeljsmith/vim-indent-object'

" Colorshemes
Plug 'dracula/vim'

" GNU asm syntax support
Plug 'Shirk/vim-gas'
call plug#end()




colorscheme dracula

set runtimepath+=~/.vim_modules
" Personalized file-specific configurations
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
