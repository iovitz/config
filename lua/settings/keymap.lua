vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opts = {noremap = true,silent = true}

--jj替代Esc
map('i', 'jj', '<ESC>', opts)
map('n', '<leader>q', ':q<cr>',opts)
map('n', '<leader>w', ':w<cr>',opts)
map('n', '<leader>fl', ':source $MYVIMRC<cr>', opts)
map('n', '<leader>tr', ':NvimTreeToggle<CR>', opts)


-- 切换bugger