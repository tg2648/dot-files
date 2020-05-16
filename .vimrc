" https://dougblack.io/words/a-good-vimrc.html
" https://github.com/junegunn/vim-plug

set nocompatible

""" PLUGINS """ {{{
call plug#begin('~/.vim/plugged')
Plug 'kaicataldo/material.vim'
call plug#end()
"}}}

""" COLORS """ {{{
syntax enable           " enable syntax processing

" true colors are a requirement for material scheme to work properly
if (has('termguicolors'))
  set termguicolors
endif

let g:material_theme_style = 'darker'
colorscheme material    " https://github.com/kaicataldo/material.vim
" }}}

""" SPACES & TABS """ {{{
set tabstop=4           " number of visual spaces per TAB
set shiftwidth=4        " indent also with 4 spaces
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces
set autoindent          " use identation of previous line
set smartindent         " use intelligent identation
" }}}

""" UI CONFIG """ {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
" set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to
set showmatch           " highlight matching [{()}]
set mouse=a             " enable mouse usage
" set textwidth=120       " wrap lines at 120 characters
set scrolloff=5         " always show some lines above/below the cursor
set sidescrolloff=5
" }}}

""" SEARCH """ {{{
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" turn off search highlight with \<space>
nnoremap <leader><space> :nohlsearch<CR> 
" }}}

""" FOLDING """ {{{
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default. 
" 0 - all folds will be closed; 99 - folds are always open; 10 - only very nested blocks are folded
set foldnestmax=10      " 10 nested fold max
nnoremap <space> za     " <space> open/closes folds
set foldmethod=syntax   " fold based on syntax
" }}}

""" BACKUPS & UNDO """ {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

set undodir=~/.vim-undo,~/.tmp,~/tmp,/var/tmp,/tmp
" }}}

""" CUSTOM FUNCTIONS """ {{{
" toggle between number and relativenumber
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
" }}}

""" FILETYPE-SPECIFIC """ {{{
" Makefiles
autocmd FileType make setlocal noexpandtab
" }}}

" fold .vimrc based on markers
" vim: foldmethod=marker:foldlevel=0
