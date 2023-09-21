local lsp = require('lsp-zero').preset({})

vim.keymap.set("n", "<M-CR>", '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
