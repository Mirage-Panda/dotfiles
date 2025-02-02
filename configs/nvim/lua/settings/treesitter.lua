-- Import nvim-treesitter plugin
local treesitter = require("nvim-treesitter.configs")

-- Configure treesitter
treesitter.setup({
	highlight = { enable = true },
	indent = { enable = true },
	ensure_installed = {
		"python",
		"lua",
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "<C-space>",
			node_incremental = "<C-space>",
			scope_incremental = false,
			node_decremental = "<bs>",
		},
	},
})
