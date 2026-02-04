return {
	-- Automatically adds lspconfig handers for all language servers installed by mason
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},

	opts = function()
		local capabilities = require("blink.cmp").get_lsp_capabilities()

		---@type MasonLspconfigSettings
		return {
			ensure_installed = {},
			automatic_installation = false,
			handlers = {
				-- this first function is the "default handler"
				-- it applies to every language server without a "custom handler"
				function(server_name)
					require("lspconfig")[server_name].setup({ capabilities = capabilities })
				end,
			},
		}
	end,
}
