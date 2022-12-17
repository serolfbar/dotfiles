require('plug').setup {
  -- plug.nvim configurations go here
}

'tpope/vim-commentary'
'ibhagwan/fzf-lua'
'itchyny/lightline.vim'
'othree/html5.vim'
'pangloss/vim-javascript'
'rakr/vim-one'
'dense-analysis/ale'
'tpope/vim-sleuth'
--'neoclide/coc.nvim', {'branch': 'release'}
--
'ggandor/leap.nvim'
'mhinz/vim-startify'
'Rigellute/rigel'
'nvim-tree/nvim-web-devicons'
'nvim-tree/nvim-tree.lua'
'preservim/tagbar'
{
  'fatih/vim-go',
  -- set to `true`, to lazily load this plugin
  lazy = true,
  options = {
    ['do'] = ':GoUpdateBinaries'
  }
}
-- {
--     'nvim-treesitter/nvim-treesitter',
--     lazy = true
--     -- options = {
--     --     ['do'] = ':TSUpdate'
--     -- }
-- }

'nvim-treesitter/nvim-treesitter'
'williamboman/mason.nvim/'
'mhinz/vim-signify'

-- Autocompletion
'neovim/nvim-lspconfig'
'hrsh7th/cmp-nvim-lsp'
'hrsh7th/cmp-buffer'
'hrsh7th/cmp-path'
'hrsh7th/cmp-cmdline'
'hrsh7th/nvim-cmp'

--Dart/Flutter
'dart-lang/dart-vim-plugin'
'thosakwe/vim-flutter'
'natebosch/vim-lsc'
'natebosch/vim-lsc-dart'

--Colorschemes
'sainnhe/everforest'
'cocopon/iceberg.vim'
'NLKNguyen/papercolor-theme'
'sainnhe/everforest'
'jdkanani/vim-material-theme'
'rafamadriz/neon'
'folke/tokyonight.nvim'
'EdenEast/nightfox.nvim'
'cseelus/vim-colors-lucid'
'humanoid-colors/vim-humanoid-colorscheme'

-- Syntax Highlight
'elkowar/yuck.vim'

--HAS TO BE AT THE END OF FILE
''
