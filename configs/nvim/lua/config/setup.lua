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
	treesitter = true
    }
})

require("ibl").setup()
require("nvim-treesitter.configs").setup {
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
}
