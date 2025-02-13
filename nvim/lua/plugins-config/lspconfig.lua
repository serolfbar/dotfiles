local lspconfig = require('lspconfig')

lspconfig.zls.setup {
	settings = {
		['zls'] = {},
	}
}

lspconfig.rust_analyzer.setup {
	settings = {
		['rust-analyzer'] = {},
	}
}

lspconfig.clangd.setup {
	settings = {
		['clangd'] = {}
	}
}

lspconfig.lua_language_server.setup {
	settings = {
		['lua-language-server'] = {}
	}
}

lspconfig.omnisharp.setup {
	settings = {
		['omnisharp'] = {}
	}
}
