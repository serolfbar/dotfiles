vim.keymap.set("n", "<leader>vt", ":lua VerticalSplitWithTerminal()<CR>", {
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

vim.keymap.set('n', '<leader>ff', ":lua vim.lsp.buf.formatting()", {
	noremap = true,
	silent = true
})


-- nnoremap <silent> ff    <cmd>lua vim.lsp.buf.formatting()<CR>
-- autocmd BufWritePre *.go lua vim.lsp.buf.formatting()

vim.keymap.set('n', '<Leader>bd', ":bd<CR>", {
	noremap = true,
	silent = true
})

vim.keymap.set('c', 'w!!',':w ! sudo tee % > /dev/null')
