require("mason").setup()
require("mason-lspconfig").setup()
require("catppuccin").setup({
	integrations = {
		default_integrations = false,
		cmp = true,
		nvimtree = true,
		telescope = true,
		alpha = true,
		which_key = true,
		mason = true,
		native_lsp = true,
		treesitter = true,
		indent_blankline = {
			enabled = true,
			scope_color = "", -- catppuccin color (eg. `lavender`) Default: text
			colored_indent_levels = false,
		},
	},
	transparent_background = true,
})

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		css = { "prettier" },
		html = { "prettier" },
		json = { "prettier" },
		js = { "prettier" },
		yaml = { "prettier" },
		bash = { "beautysh" },
		sh = { "beautysh" },
		zsh = { "beautysh" },
		python = { "isort", "black" },
	},
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})

require("Comment").setup({
	toggler = {
		--- Line-comment toggle keymap
		line = "<leader>/",
		--- Block-comment toggle keymap
		block = "<leader>\\",
	},
	opleader = {
		--- LHS of operator-pending mappings in NORMAL and VISUAL mode
		--- Line-comment keymap
		line = "<leader>/",
		--- Block-comment keymap
		block = "<leader>\\",
	},
})

vim.opt.termguicolors = true

require("bufferline").setup({
	highlights = require("catppuccin.groups.integrations.bufferline").get(),
})

require("mini.indentscope").setup({
	draw = {
		delay = 0,
		animation = require("mini.indentscope").gen_animation.none(),
	},
})
