return {
	{
		"nvim-tree/nvim-tree.lua",
		requires = { "nvim-tree/nvim-web-devicons" }, -- for file icons
		config = function()
			require("settings.nvim-tree")
		end,
	},
}
