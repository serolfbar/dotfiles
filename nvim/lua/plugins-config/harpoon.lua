local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup({
	settings = {
		save_on_toggle = false,
		sync_on_ui_close = true,
	}
})
-- REQUIRED

vim.keymap.set("n", "<Space>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<Space>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<Space>1", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<Space>2", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<Space>3", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<Space>4", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
-- vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
-- vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
