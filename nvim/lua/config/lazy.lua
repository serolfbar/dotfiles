local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
  {
    ------------------------------------------- General
    {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
      }
    },
    {
      'nvim-treesitter/nvim-treesitter',
      build = ':TSUpdate'
    },
    {
      'junegunn/fzf'
    },
    { 'junegunn/fzf.vim' },
    { "Darazaki/indent-o-matic" }, -- Indent code based on other files or present code
    { "tpope/vim-commentary" }, -- Better commenting capabilities
    { "lewis6991/gitsigns.nvim" }, -- Display version changes changes
    { "nvim-lualine/lualine.nvim" },
    ---------------------Completion and LSP management
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "VonHeikemen/lsp-zero.nvim",        branch = 'v3.x' },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/nvim-cmp" },
    { "L3MON4D3/LuaSnip" },
    -----------------------------------Colorschemes
    { "sainnhe/everforest" },
    {
      "zootedb0t/citruszest.nvim",
      lazy = false,
      priority = 1000,
    },
    {
      "folke/noice.nvim",
      event = "VeryLazy",
      dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
      }
    },
    { "epwalsh/obsidian.nvim" },
    { 'projekt0n/github-nvim-theme' },
    {
      'ribru17/bamboo.nvim',
      lazy = false,
      priority = 1000,
      config = function()
        require('bamboo').setup {
          -- optional configuration here
        }
        require('bamboo').load()
      end,
    },
    { 'kevinhwang91/nvim-ufo', dependencies = 'kevinhwang91/promise-async'},
    { 'nvimdev/lspsaga.nvim' },
    {
      "folke/trouble.nvim",
      opts = {}, -- for default options, refer to the configuration section for custom setup.
      cmd = "Trouble",
      keys = {
        {
          "<leader>xx",
          "<cmd>Trouble diagnostics toggle<cr>",
          desc = "Diagnostics (Trouble)",
        },
        {
          "<leader>xX",
          "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
          desc = "Buffer Diagnostics (Trouble)",
        },
        {
          "<leader>cs",
          "<cmd>Trouble symbols toggle focus=false<cr>",
          desc = "Symbols (Trouble)",
        },
        {
          "<leader>cl",
          "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
          desc = "LSP Definitions / references / ... (Trouble)",
        },
        {
          "<leader>xL",
          "<cmd>Trouble loclist toggle<cr>",
          desc = "Location List (Trouble)",
        },
        {
          "<leader>xQ",
          "<cmd>Trouble qflist toggle<cr>",
          desc = "Quickfix List (Trouble)",
        },
      },
    }

  }, opts)
