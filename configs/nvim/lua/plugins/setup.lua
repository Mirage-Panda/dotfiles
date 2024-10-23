require("mason").setup()
require("mason-lspconfig").setup()
require("catppuccin").setup({
	integrations = {
		default_integrations = false,
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
		render_markdown = true,
	},
	cmp = true,
})

require("ibl").setup()
require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
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
	},
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})

require('Comment').setup({
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
