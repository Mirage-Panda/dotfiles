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
	  custom = { ".DS_Store" }
	}
      })
    end,
  },

  "nvim-tree/nvim-web-devicons",

  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },

  {
    'goolord/alpha-nvim',
    config = function()
      require('plugins.alpha')
    end
  },

  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
  },

  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",

  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  },

  "nvim-treesitter/nvim-treesitter",

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
  },

  {
    'stevearc/conform.nvim',
    opts = {},
  },

  checker = { enabled = true },
})

vim.cmd('colorscheme catppuccin')
