execute pathogen#infect()

set path+=**

syntax on
set t_Co=256
filetype plugin indent on
set ruler
set fillchars+=vert:\  
set rtp+=~/.fzf
let &t_ut=''
set tags=tags;/

hi VertSplit ctermfg=Black ctermbg=DarkGray
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul


" " Language supports
let g:python_highlight_all = 1
let g:javascript_plugin_jsdoc = 1
let g:java_highlight_functions = 1

set wildmenu

" Files to ignore for various auto completion commands
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,__pycache__,node_modules

" Sets the line numbers to bea hybrid. Absolute and relative
set number relativenumber
set nu rnu
set bs=2
set nuw=4

set incsearch   " don't wait for the enter key to start searching
set hlsearch    " highlight search results
nnoremap <C-_> :noh<CR>

"Reads files changes automatically
set autoread

"NerdTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1

map <C-n> :NERDTreeToggle<CR>
nnoremap <C-p> :FZF<CR>
nnoremap <C-i> :Buffers<CR>


" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='one'

" Change between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

