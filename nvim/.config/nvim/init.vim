set number
set numberwidth=1
set mouse=a
set clipboard=unnamed
syntax enable
set showcmd
set encoding=utf-8
set relativenumber
set noshowmode
set nobackup nowritebackup
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set visualbell
set hlsearch
set smartcase
set incsearch
set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set ruler
set undolevels=1000
set backspace=indent,eol,start
set updatetime=250

call plug#begin('~/.config/nvim/plugged')

" General plugins
Plug 'dracula/vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'jiangmiao/auto-pairs'
Plug 'andymass/vim-matchup'

" PHP Stuff
call plug#end()

" --- File Explorer
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_altv = 1
nmap <silent> <C-E> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"


" --- Vim GitGutter
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_set_sign_backgrounds = 1
highlight clear SignColumn
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4

" Basic mapping
:command! WQ wq
:command! Wq wq
:command! W w
:command! Q q


set shell=/usr/local/bin/zsh
if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
set termguicolors
color dracula

