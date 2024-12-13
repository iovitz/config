-- 空格leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opts = {
    noremap = true,
    silent = true
}

map('i', 'jk', '<ESC>', opts)

map('n', '<leader>w', ':bd<cr>', opts)

map('n', '<leader>sv', ':w<cr>', opts)

map('n', '<leader>nh', ':nohl', opts)

-- 切换buffer
map('n', '<leader>q', ':q<cr>', opts)
map('n', '<leader>vs', ':vsplit<cr>', opts)
map('n', '<leader>hs', ':split<cr>', opts)

-- 刷新配置
map('n', '<leader>fl', ':source $MYVIMRC<cr>', opts)

-- runcode
vim.keymap.set('n', '<leader>r', function()
    local bufnr = vim.api.nvim_get_current_buf()
    local filetype = vim.api.nvim_buf_get_option(bufnr, "filetype")
    local filename = vim.fn.expand "%:p:t"
    local dirpath = vim.fn.expand "%:p:h"
    local filepath = vim.fn.expand "%:p"
    local nvimTree = require('nvim-tree.api')

    if filetype == "NvimTree" then
        vim.cmd(string.format('TermExec cmd=\"npm run dev\"', dirpath, filename))
        return
    end

    -- 保存文件
    vim.cmd(':w!')
    if filename == 'package.json' then
        vim.cmd(string.format('TermExec cmd=\"pnpm install"', dirpath, filename))
    elseif filetype == "javascript" then
        vim.cmd(string.format('!cd %s & echo & node ./%s', dirpath, filename))
    elseif filetype == "typescript" then
        vim.cmd(string.format('!cd %s & echo & ts-node ./%s', dirpath, filename))
    elseif filetype == "python" then
        vim.cmd(string.format('!cd %s & echo & python ./%s', dirpath, filename))
    elseif filetype == "rust" then
        vim.cmd(string.format('!cd %s & echo & cargo run', dirpath))
    end

end)
