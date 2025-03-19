--To be removed once nvim 11 arrives
return {
  'neovim/nvim-lspconfig',
  dependencies = { 'saghen/blink.cmp' },

  -- example using `opts` for defining servers
  opts = {
    servers = {
      lua_ls = {},
      rust_analyzer = {},
      clangd = {},
      ts_ls = {},
      jdtls = {},
      omnisharp = {
        cmd = {
          "dotnet",
          "/home/alexander/.local/share/nvim/mason/packages/omnisharp/libexec/OmniSharp.dll"
        }
      },
      gopls = {}
    }
  },
  config = function(_, opts)
    local lspconfig = require('lspconfig')
    for server, config in pairs(opts.servers) do
      -- passing config.capabilities to blink.cmp merges with the capabilities in your
      -- `opts[server].capabilities, if you've defined it
      config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
      lspconfig[server].setup(config)
    end
  end
}
