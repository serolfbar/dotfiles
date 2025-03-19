require("base.lazy")
require("base.mappings")

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.cmd.colorscheme("kanagawa-wave")

-- DISABLING THIS FOR LSP_LINES to work
vim.diagnostic.config { virtual_text = false }
