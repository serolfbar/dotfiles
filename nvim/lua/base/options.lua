vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.cmd("set nomodeline")
-- DISABLING THIS FOR LSP_LINES to work
vim.diagnostic.config({
	virtual_lines = { current_line = true },
	virtual_text = false
})

vim.cmd.colorscheme("minispring")
require("mini.hues").setup({
	accent = "bg",
	background = "#17280e",
	foreground = "#c4c8c2",
	n_hues = 8,
	plugins = {
		default = true
	},
	saturation = "medium"
})
