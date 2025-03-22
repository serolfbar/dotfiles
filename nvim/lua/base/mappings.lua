-- GENERAL
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>y", "\"+y")

-- NEO TREE
vim.keymap.set("n", "<Leader>t", ":Neotree toggle<CR>")

-- FZF 
vim.keymap.set("n", "<Leader>ff", ":FzfLua files<CR>")
vim.keymap.set("n", "<Leader>fb", ":FzfLua buffers<CR>")
vim.keymap.set("n", "<Leader>fs", ":FzfLua live_grep<CR>")
vim.keymap.set("n", "<Leader>fr", ":FzfLua lsp_references<CR>")
vim.keymap.set("n", "<Leader>dd", ":FzfLua diagnostics_document<CR>")


-- LSP Lines
vim.keymap.set(
  "",
  "<Leader>l",
  require("lsp_lines").toggle,
  { desc = "Toggle lsp_lines" }
)



