" ===================================== Plugins with Vim-Plug ========================================
call plug#begin('~/.vim/plugged')
Plug 'puremourning/vimspector' " Plugin for debugging Front-end 
Plug 'pechorin/any-jump.vim' " Plugin that lets me jump to definitions and see references easily
Plug 'junegunn/fzf.vim' " Plugin for fuzzy file search inside of vim (includes Rg) 
Plug 'preservim/nerdtree' " File manager
Plug 'majutsushi/tagbar' " Displays file tags (classes, variables, etc)
Plug 'google/vim-maktaba' " Code format 
Plug 'google/vim-glaive' " Code format 
Plug 'google/vim-codefmt' " Code format 
Plug 'tpope/vim-commentary' " Easier commenting
Plug 'airblade/vim-gitgutter' " Git support on vim and visual aids
Plug 'tpope/vim-sleuth' " Adjusts the amount of spaces used in a file based on rest of file or other files
Plug 'voldikss/vim-floaterm' " Floating terminal 
Plug 'prettier/vim-prettier', { 'do': 'npm install' } " Plugin that helps format code
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Plugin that helps with autocompletion and syntax checks 
Plug 'habamax/vim-godot' " Plugin for syntax highlight and running godot projects
Plug 'wfxr/code-minimap' " Plugin that is required for the minimap plugin 
Plug 'wfxr/minimap.vim' " Plugin that displays a minimap of code on the side 
Plug 'rust-lang/rust.vim' " Plugin for rust support  
Plug 'kingofctrl/vim.cpp' " Plugin for cpp support  
Plug 'othree/xml.vim' " Plugin for xml support  
Plug 'elzr/vim-json' " Plugin for json support  
Plug 'itchyny/lightline.vim' " Plugin for the statusline 
Plug 'fatih/vim-go' "Plugin for go support
Plug 'evanleck/vim-svelte', {'branch': 'main'} "Support for Svelte
Plug 'chrisbra/SudoEdit.vim' " Lets me edit readonly files
Plug 'OmniSharp/omnisharp-vim' " Support for c sharp
call plug#end()

" ===================================== General =========================================
set path+=**
set rtp+=~/.fzf
set pythonthreehome=/usr
syntax on
set t_Co=256
filetype plugin indent on
set ruler
set fillchars+=vert:\  
set t_ut=''
set tags=tags;/


" ===================================== Colors =========================================
if !has('gui_running')
  set t_Co=256
endif
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48:2;%lu;%lu;%lum"

colorscheme zenburn 



" ===================================== XML =========================================
autocmd BufNewFile,BufRead *.xaml setf xml


" ===================================== Latex =========================================
autocmd Filetype tex setl updatetime=1
let g:livepreview_cursorhold_recompile = 0
let g:ycm_semantic_triggers = {
	\ 'tex'  : ['{']
\}

" ===================================== Language Supports =========================================
let g:python_highlight_all = 1
let g:javascript_plugin_jsdoc = 1
let g:java_highlight_functions = 1

set wildmenu

" ===================================== Files to ignore for various auto completion commands=========================================
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,__pycache__,node_modules

" ===================================== Sets the line numbers to be hybrid. Absolute and relative =========================================
set number relativenumber
set nu rnu
set bs=2
set nuw=2

" ===================================== Word searching =========================================
set incsearch   " don't wait for the enter key to start searching
set hlsearch    " highlight search results
nnoremap <C-_> :noh<CR>

" ===================================== Reads files changes automatically =========================================
set autoread

" ===================================== NerdTree =========================================
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-p> :FZF<CR>
nnoremap <C-i> :Buffers<CR>

"===================================== lightline =========================================
set laststatus=2
set noshowmode
let g:lightline = {
  \ 'colorscheme': 'jellybeans',
\ }


" ===================================== Splits =========================================
hi VertSplit ctermfg=Black ctermbg=DarkGray
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

" Change between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" ====================================== Save readonly file  ===========================
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

"===================================== Launch AnyJump ==========================================
nnoremap <leader>j :AnyJump<CR> 

"===================================== You Complete Me ==========================================
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


"================================= GIT PREVIEW =================================================
let g:fzf_preview_command = 'bat --color=always --plain {-1}'
let g:fzf_preview_default_fzf_options = { '--reverse': v:true, '--preview-window': 'wrap:70%' }
let g:fzf_preview_git_status_preview_command =
  \ "[[ $(git diff --cached -- {-1}) != \"\" ]] && git diff --cached --color=always -- {-1} | delta || " .
  \ "[[ $(git diff -- {-1}) != \"\" ]] && git diff --color=always -- {-1} | delta || " .
  \ g:fzf_preview_command
