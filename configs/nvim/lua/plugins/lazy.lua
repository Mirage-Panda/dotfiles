-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
	-- NvimTree plugin
	{
		"nvim-tree/nvim-tree.lua",
		requires = { "nvim-tree/nvim-web-devicons" }, -- for file icons
		config = function()
			-- Setup nvim-tree
			require("nvim-tree").setup({
				filters = {
					custom = { ".DS_Store" },
				},
			})
		end,
	},

	{
		"nvim-tree/nvim-web-devicons",
	},

	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		lazy = true,
	},

	{
		"goolord/alpha-nvim",
		config = function()
			require("plugins.alpha")
		end,
	},

	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },

	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		-- your configuration comes here
	},

	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		lazy = true,
	},

	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equivalent to setup({}) function
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
		lazy = true,
	},

	{
		"stevearc/conform.nvim",
		opts = {},
		lazy = true,
	},

	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
		},
		config = function()
			require("plugins.cmp")
		end,
	},

	{
		"numToStr/Comment.nvim",
		event = { "BufReadPre", "BufNewFile" },
	},

	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
	},

	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			-- Import nvim-treesitter plugin
			local treesitter = require("nvim-treesitter.configs")

			-- Configure treesitter
			treesitter.setup({
				highlight = { enable = true },
				indent = { enable = true },
				ensure_installed = {
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
		end,
	},

	checker = { enabled = true },
})
