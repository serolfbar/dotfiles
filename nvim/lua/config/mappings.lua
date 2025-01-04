vim.keymap.set("n", "<leader>vt", ":lua VerticalSplitWithTerminal()<CR>", {
	noremap = true,
	silent = true
})

vim.keymap.set("n", "<leader>zf", ":LspZeroFormat<CR>", {
	noremap = true,
	silent = true
})

vim.keymap.set('n', '<Space>fr', function() vim.lsp.buf.references() end, {
	noremap = true,
	silent = true
})

vim.keymap.set('n', '<Space>vr', function() vim.lsp.buf.rename() end, {
	noremap = true,
	silent = true
})


vim.keymap.set('n', '<Leader>bd', ":bd<CR>", {
	noremap = true,
	silent = true
})
-- local telesc = require("telescope.builtin")



