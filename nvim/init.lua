require('plugins')
require('tree')
require('mappings')
require('lsp')
require('completions')
require('mason').setup()
require('leap').add_default_mappings()
require('treesitter')

HOME = os.getenv("HOME")

--vim.opt.nocompatible = true
--vim.opt.t_Co = 256
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.g.mouse = on
vim.opt.mouse= n
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4 
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.relativenumber = true
vim.opt.wrap = false 
vim.opt.clipboard = unnamedplus
vim.opt.cursorline = true
vim.opt.ttyfast = true
vim.opt.backupdir = HOME .. '/.cache/vim//'
-- vim.g.go_def_mode = 'gopls'
-- vim.g.go_info_mode = 'gopls'
vim.g.go_doc_popup_window = 1




vim.cmd([[
filetype plugin on 
syntax on
colorscheme tokyonight-night 
]])
