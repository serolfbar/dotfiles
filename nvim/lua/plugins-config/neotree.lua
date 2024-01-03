local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)
end

require("neo-tree").setup({
  on_attach = my_on_attach,
  sort_by = "case_sensitive",
  view = {
    width = 30,
    preserve_window_proportions = true
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set("n", "<Leader>t", ":Neotree toggle<CR>")
