vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ch', ':WhichKey<CR>', { noremap = true, silent = true })
