return {
	{ "rktjmp/lush.nvim" },
	{ "webhooked/kanso.nvim" },
	{
		"neanias/everforest-nvim",
		version = false,
		lazy = false,
		priority = 1000, -- make sure to load this before all the other start plugins
		-- Optional; default configuration will be used if setup isn't called.
		config = function()
			require("everforest").setup({
				-- Your config here
			})
		end,
	},
	{ "bluz71/vim-moonfly-colors" }
}
