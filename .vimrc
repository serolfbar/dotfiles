" Plugins with Vim-Plug
call plug#begin('~/.vim/plugged')
Plug 'pechorin/any-jump.vim'
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'google/vim-codefmt'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'google/vim-glaive'
Plug 'google/vim-maktaba'
Plug 'tpope/vim-sleuth'
Plug 'voldikss/vim-floaterm'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'habamax/vim-godot'
Plug 'wfxr/code-minimap'
Plug 'wfxr/minimap.vim'
Plug 'rust-lang/rust.vim'
Plug 'kingofctrl/vim.cpp'
Plug 'stillwwater/vim-nebula'
Plug 'othree/xml.vim'
Plug 'elzr/vim-json'
Plug 'chriskempson/base16-vim'
Plug 'franbach/miramare'
Plug 'itchyny/lightline.vim'
call plug#end()

set path+=**
set rtp+=~/.fzf
set pythonthreehome=/usr
syntax on
set t_Co=256
filetype plugin indent on
set ruler
set fillchars+=vert:\  
let &t_ut=''
set tags=tags;/

if has('termguicolors')
  set termguicolors
endif
if !has('gui_running')
  set t_Co=256
endif
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48:2;%lu;%lu;%lum"

colorscheme miramare 

" set cursorline

hi VertSplit ctermfg=Black ctermbg=DarkGray
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

" XML
autocmd BufNewFile,BufRead *.xaml setf xml


" Latex
autocmd Filetype tex setl updatetime=1
"let g:livepreview_previewer = 'mupdf'
let g:livepreview_cursorhold_recompile = 0
let g:ycm_semantic_triggers = {
	\ 'tex'  : ['{']
\}

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

" lightline 
set laststatus=2
set noshowmode
let g:lightline = {
  \ 'colorscheme': 'jellybeans',
\ }


" Change between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Launch AnyJump
nnoremap <leader>j :AnyJump<CR> 

"You Complete Me
let g:ycm_autoclose_preview_window_after_insertion = 1

"===================================== Godot ==========================================
let g:godot_executable="/home/alexander/Dev/sources/Godot_v3.2.1-stable_x11.64"
func! GodotSettings() abort
	setlocal tabstop=4
	nnoremap <buffer> <F4> :GodotRunLast<CR>
	nnoremap <buffer> <F5> :GodotRun<CR>
	nnoremap <buffer> <F6> :GodotRunCurrent<CR>
	nnoremap <buffer> <F7> :GodotRunFZF<CR>
endfunc
augroup godot | au!
	au FileType gdscript call GodotSettings()
augroup end

