set number
set numberwidth=1
set mouse=a
set clipboard=unnamed
syntax enable
set showcmd
set encoding=utf-8
set relativenumber
set noshowmode

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

" --- File Explorer
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_altv = 1

call plug#begin(stdpath('data') . '/plugged')
"Themes
Plug 'morhetz/gruvbox'

"Generic
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ap/vim-css-color'
Plug 'KabbAmine/vCoolor.vim'
call plug#end()

set updatetime=100
colorscheme gruvbox
