set number
set numberwidth=1
set mouse=a
set clipboard=unnamed,unnamedplus
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

set matchpairs+=<:>
set shell=/usr/bin/zsh

nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"

let mapleader = ","
noremap <leader>w :w<cr>
noremap <leader>gs :CocSearch
noremap <leader>fs :Files<cr>
noremap <leader><cr> <cr><c-w>h:q<cr>


call plug#begin('~/.config/nvim/plugged')

" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" General Plugins
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'andymass/vim-matchup'

" Javascript and Typescript
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax


" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" PHP Stuff

" Color themes
Plug 'joshdick/onedark.vim'
Plug 'chriskempson/base16-vim'
Plug 'jaredgorski/SpaceCamp'
call plug#end()

" --- File Explorer
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let NERDTreeCustomOpenArgs={'file':{'where': 't'}}
nmap <silent> <C-E> :NERDTreeToggle<CR>:call SyncTree()<CR>
let g:NERDTreeWinPos = "right"


" --- Vim GitGutter
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_set_sign_backgrounds = 0
highlight clear SignColumn
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4

" --- Basic mapping
:command! WQ wq
:command! Wq wq
:command! W w
:command! Q q


" --- NERDTree
autocmd BufEnter * lcd %:p:h

" --- Coc Configs
let g:coc_global_extensions = ['coc-tsserver']
inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" --- Colors
if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

set termguicolors
colorscheme spacecamp
