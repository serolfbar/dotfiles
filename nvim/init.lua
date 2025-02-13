require("config.lazy")
require("config.mappings")
require("config.general")
require("config.custom-functions")

require("plugins-config.mason")
require("plugins-config.neotree")
require("plugins-config.fzf")
require("plugins-config.indent")
require("plugins-config.treesitter")
require("plugins-config.lualine")
require("plugins-config.obsidian")
require("plugins-config.gitsigns")
require("plugins-config.harpoon")
require("plugins-config.telescope")
require("plugins-config.aerial")
require("plugins-config.neoscroll")
require("plugins-config.lspconfig")
require("plugins-config.cmp")



function Color(color)
	color = color or "terafox"
	vim.cmd.colorscheme(color)
end

local autocmd = vim.api.nvim_create_autocmd
autocmd('vimenter', {
	command = 'hi Normal guibg=NONE ctermbg=NONE'
})

Color()
