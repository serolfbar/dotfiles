require("base.lazy")
require("base.mappings")

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.cmd("set nomodeline")
vim.g.solarized_italic_comments = true
vim.g.solarized_italic_keywords = true
vim.g.solarized_italic_functions = true
vim.g.solarized_italic_variables = false
vim.g.solarized_contrast = true
vim.g.solarized_borders = false
vim.g.solarized_disable_background = false
vim.cmd.colorscheme("everforest")
-- vim.cmd("set background=light")
-- DISABLING THIS FOR LSP_LINES to work
vim.diagnostic.config({
	virtual_lines = {current_line = true},
	virtual_text = false
})

