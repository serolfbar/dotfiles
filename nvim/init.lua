require("config.lazy")
require("config.mappings")
require("config.general")
require("config.custom-functions")
require("plugins-config.neotree")
-- require("plugins-config.telescope")
require("plugins-config.fzf")
require("plugins-config.zero")
require("plugins-config.indent")
require("plugins-config.treesitter")
require("plugins-config.lualine")
require("plugins-config.noice")
require("plugins-config.obsidian")


function Color(color)
	color = color or "everforest"
	vim.cmd.colorscheme(color)
end

Color()
