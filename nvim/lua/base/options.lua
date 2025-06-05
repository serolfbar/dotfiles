
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.cmd("set nomodeline")
vim.cmd.colorscheme("everforest")
-- vim.cmd("set background=light")
-- DISABLING THIS FOR LSP_LINES to work
vim.diagnostic.config({
	virtual_lines = {current_line = true},
	virtual_text = false
})

