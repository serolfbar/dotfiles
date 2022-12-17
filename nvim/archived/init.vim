call plug#begin()
" Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'itchyny/lightline.vim'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'rakr/vim-one'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Rigellute/rigel'


"Dart/Flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

"Colorschemes
Plug 'sainnhe/everforest'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'cocopon/iceberg.vim'
Plug 'NLKNguyen/papercolor-theme'

Plug 'lambdalisue/fern.vim'
Plug 'elkowar/yuck.vim'

call plug#end()


"set completeopt=menu,menuone,noselect
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set relativenumber                  " add line numbers
set scrollopt+=hor
set scrollopt-=ver
set nowrap
windo set scrollbind
set wildmode=longest,list   " get bash-like tab completions
" set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set backupdir=~/.cache/vim " Directory to store backup files.
set  t_Co=256
colorscheme PaperColor 
highlight Normal ctermfg=white ctermbg=black
set background=dark

" General remaps
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
nnoremap <Leader>[ :resize +5<CR>
nnoremap <Leader>] :resize -5<CR>


"coq
let g:coq_settings = { 'auto_start': 'shut-up' }

" NERDTREE/CHADTREE/Fern-vim
nnoremap <Leader>v <cmd>Fern . -drawer -toggle<CR>

" Fzf
nnoremap <C-p> :Files<CR>
nnoremap <Leader>p :Buffers<CR>
nnoremap <C-F> :Rg<CR>

"LightLine
let g:lightline = {
      \ 'colorscheme': 'catppuccin_mocha',
      \ }

" COC
" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>




