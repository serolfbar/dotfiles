require("config.lazy")
require("config.mappings")
require("config.general")
require("config.custom-functions")
require("plugins-config.neotree")
require("plugins-config.telescope")
require("plugins-config.zero")
require("plugins-config.indent")
require("plugins-config.treesitter")
require("plugins-config.lualine")


function Color(color)
	color = color or "citruszest"
	vim.cmd.colorscheme(color)
end

Color()
