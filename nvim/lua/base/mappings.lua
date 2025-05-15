-- GENERAL
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>vr", ":lsp")
vim.keymap.set('n', '<Space>vr', function() vim.lsp.buf.rename() end, {
	noremap = true,
	silent = true
})

vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, {
	noremap = true,
	silent = true
})

vim.keymap.set('n', '<leader>ft', function() vim.lsp.buf.format() end, {
	noremap = true,
	silent = true
})


vim.keymap.set('n', '<leader>fa', function() vim.lsp.buf.code_action() end, {
	noremap = true,
	silent = true
})



---------------------------------------------- NEO TREE ----------------------------------------------------
vim.keymap.set("n", "<Leader>t", ":Neotree toggle<CR>")

------------------------------------------------- FZF -----------------------------------------------------
vim.keymap.set("n", "<Leader>ff", ":FzfLua files<CR>")
vim.keymap.set("n", "<Leader>fb", ":FzfLua buffers<CR>")
vim.keymap.set("n", "<Leader>fs", ":FzfLua live_grep<CR>")
vim.keymap.set("n", "<Leader>fr", ":FzfLua lsp_references<CR>")
vim.keymap.set("n", "<Leader>dd", ":FzfLua diagnostics_document<CR>")

----------------------------------------------- LSP Lines -----------------------------------------------
-- vim.keymap.set(
--  "",
--  "<Leader>l",
--  require("lsp_lines").toggle,
--  { desc = "Toggle lsp_lines" }
-- )

------------------------------------------------- HARPOON -----------------------------------------------
local harpoon = require("harpoon")
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

