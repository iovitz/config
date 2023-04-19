--空格leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opts = {noremap = true,silent = true}


map('i', 'jk', '<ESC>', opts)

map('n', '<leader>w', ':q<cr>',opts)

map('n', '<leader>sv', ':w<cr>',opts)

map('n', '<leader>nh', ':nohl', opts)


--切换buffer

map('n', '<leader>q', ':q<cr>',opts)
map('n', '<leader>vs', ':vsplit<cr>',opts)
map('n', '<leader>hs', ':split<cr>',opts)

--目录树
map('n', '<leader>aa', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>af', ':NvimTreeFocus<CR>', opts)

--安装插件
map('n', '<leader>ps', ':PackerSync<CR>', opts)

--刷新配置
map('n', '<leader>fl', ':source $MYVIMRC<cr>', opts)


-- bufferline
map("n", "<C-L>", "<Cmd>bnext<CR>", opts)
map("n", "<C-H>", "<Cmd>bprevious<CR>", opts)
map('n', '<leader>bh', '<Cmd>BufferLineCyclePreview<CR>', opts)
map('n', '<leader>bl', '<Cmd>BufferLineCycleNext<CR>', opts)

map('n', '<leader>b1', '<Cmd>BufferLineGoToBuffer 1<CR>', opts)
map('n', '<leader>b2', '<Cmd>BufferLineGoToBuffer 2<CR>', opts)
map('n', '<leader>b3', '<Cmd>BufferLineGoToBuffer 3<CR>', opts)
map('n', '<leader>b4', '<Cmd>BufferLineGoToBuffer 4<CR>', opts)
map('n', '<leader>b5', '<Cmd>BufferLineGoToBuffer 5<CR>', opts)
map('n', '<leader>b6', '<Cmd>BufferLineGoToBuffer 6<CR>', opts)
map('n', '<leader>b7', '<Cmd>BufferLineGoToBuffer 7<CR>', opts)
map('n', '<leader>b8', '<Cmd>BufferLineGoToBuffer 8<CR>', opts)
map('n', '<leader>b9', '<Cmd>BufferLineGoToBuffer 9<CR>', opts)

-- formatter
map('n', '<leader>fm', '<Cmd>Format<CR>', opts)


-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
