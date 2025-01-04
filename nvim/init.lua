require("config.lazy")
require("config.mappings")
require("config.general")
require("config.custom-functions")
require("plugins-config.neotree")
require("plugins-config.fzf")
require("plugins-config.zero")
require("plugins-config.indent")
require("plugins-config.treesitter")
require("plugins-config.lualine")
require("plugins-config.obsidian")
require("plugins-config.gitsigns")
require("plugins-config.cyberdream")
require("plugins-config.harpoon")
require("plugins-config.telescope")


function Color(color)
	color = color or "everforest"
	vim.cmd.colorscheme(color)
end

local autocmd = vim.api.nvim_create_autocmd
autocmd('vimenter', {
	command = 'hi Normal guibg=NONE ctermbg=NONE'
})

Color()
