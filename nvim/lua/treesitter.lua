require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "rust", "go" },

  sync_install = false,

  auto_install = true,
  
  highlight = {
    enable = true,
  }
}
