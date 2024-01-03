local lsp_zero = require('lsp-zero')

vim.keymap.set("n", "<M-CR>", '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<M-[>", '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- Mason will handle all lsp servers
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp_zero.default_setup,
  },
})


-- Changing config for the auto-completion part
local cmp = require('cmp')
cmp.setup({
	mapping = {
		['<CR>'] = cmp.mapping.confirm({select = false}),
	}
})
