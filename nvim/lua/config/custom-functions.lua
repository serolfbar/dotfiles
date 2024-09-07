function VerticalSplitWithTerminal()
  local width = vim.api.nvim_win_get_width(0) * 0.7
  vim.cmd('vsp')
  vim.cmd('vertical resize ' .. width)
  vim.cmd('wincmd l')
  vim.cmd('term')
end

