-- --To be removed once nvim 11 arrives
return {
 'neovim/nvim-lspconfig',
 dependencies = { 'saghen/blink.cmp' },

 -- example using `opts` for defining servers
 opts = {
   servers = {
     pyright = {},
     lua_ls = {},
     gopls = {},
     rust_analyzer = {},
     clangd = {},
     ts_ls = {},
     jdtls = {
       cmd = {
         "jdtls",
         "/home/alexander/.local/share/nvim/mason/packages/jdtls/bin/jdtls"
       }
     },
     omnisharp = {
       cmd = {
         "dotnet",
         "/home/alexander/.local/share/nvim/mason/packages/omnisharp/libexec/OmniSharp.dll"
       }
     }
   }
 },
 config = function(_, opts)
   local lspconfig = require('lspconfig')
   for server, config in pairs(opts.servers) do
     config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
     lspconfig[server].setup(config)
   end
 end
}
