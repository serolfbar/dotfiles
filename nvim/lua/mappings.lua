-- FZF LUA
vim.api.nvim_set_keymap('n', '<c-P>',
    "<cmd>lua require('fzf-lua').files()<CR>",
    {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<Leader>p',
    "<cmd>lua require('fzf-lua').buffers()<CR>",
    {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<Leader>t',
    "<cmd>lua require('fzf-lua').tags()<CR>",
    {noremap = true, silent = true})

-- NVIM TREE
vim.api.nvim_set_keymap('n', '<Leader>v',
    ":NvimTreeToggle<CR>",
    {noremap = true, silent = true})
