-- OPTIONS

local opt = vim.opt

opt.nu = true
opt.relativenumber = true
opt.cursorline = true
opt.shiftwidth = 4
opt.tabstop = 4 

vim.cmd("set nomodeline")
vim.cmd("colorscheme lunaperche")

local map = vim.keymap.set
local g = vim.g
local opts = { silent = true }
local autocmd = vim.api.nvim_create_autocmd

g.mapleader = " "
g.maplocalleader = "\\"

-- NEOTREE
map("n", "<leader>t", ":Neotree toggle<cr>")


-- DIAGNOSTICS
vim.api.nvim_set_keymap('n', '<leader>do', '<cmd>lua vim.diagnostic.open_float()<CR>', {
	noremap = true, silent = true 
})

vim.api.nvim_set_keymap('n', '<leader>dd', '<cmd>lua vim.diagnostic.setloclist()<CR>', {
	noremap = true, silent = true 
})


-- LSP
vim.keymap.set('n', '<Space>vr',function() 
	vim.lsp.buf.rename(nil, {
    on_rename = function()
      vim.cmd("silent! wa")  -- save all buffers after the rename completes
    end,
  }) end, {
	noremap = true,
	silent = true
})

vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', 'gr', vim.lsp.buf.references)

vim.keymap.set('n', '<Space>f', function()
	vim.cmd('silent grep! ' .. vim.fn.input('Grep >'))
	vim.cmd('copen')
end)

-- IGNORED FOLDERS FOR SEARCH AND REF
vim.opt.wildignore:append({
    "*/node_modules/*",
    "*/dist/*",
    "*/build/*",
    "*/target/*",
    "*/.git/*",
})




-- MINI.PICK
map("n", "<leader>pf", ":Pick files<cr>")
map("n", "<leader>pb", ":Pick buffers<cr>")
map("n", "<leader>pg", ":Pick grep_live<cr>")


vim.pack.add({
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/nvim-mini/mini.pick",
  "https://github.com/karb94/neoscroll.nvim",
  "https://github.com/sindrets/diffview.nvim",
  "https://github.com/tpope/vim-fugitive",
	{
		src = "https://github.com/folke/snacks.nvim",
	},
	"https://github.com/folke/which-key.nvim",
  --NEOTREE BEGIN
  {
    src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
    version = vim.version.range('3')
  },
  -- dependencies
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/MunifTanjim/nui.nvim",
  -- optional, but recommended
  "https://github.com/nvim-tree/nvim-web-devicons",
  --NEOTREE BEGIN END
  { src = "https://github.com/mason-org/mason.nvim", name = "mason" },
  "https://github.com/nvim-flutter/flutter-tools.nvim",
  "https://github.com/mason-org/mason-lspconfig.nvim",
  'https://github.com/saghen/blink.lib',
	'https://github.com/saghen/blink.cmp',
	--THEMES
	'https://github.com/NLKNguyen/papercolor-theme'

})

require("snacks").setup({
	input = {
		enabled = true
	},
	indent = {
		enabled = true
	},
	notifier = {
		enabled = true
	}
})
require("neoscroll").setup({ duration_multiplier = 0.3 })
require("diffview").setup({ use_icons = false })
require("mini.pick").setup()
require("mason").setup()

local blink_require = require('blink.cmp')
blink_require.build():pwait()
blink_require.setup({
  keymap = {
    preset = 'default',
    ['<CR>'] = { 'accept', 'fallback' },
  },
})

require("mason-lspconfig").setup()
