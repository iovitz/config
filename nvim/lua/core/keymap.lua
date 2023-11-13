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

-- 终端

-- runcode
vim.keymap.set('n', '<leader>r', function()
    local bufnr = vim.api.nvim_get_current_buf()
    local ft = vim.api.nvim_buf_get_option(bufnr, "filetype")
    local filename = vim.fn.expand "%:p:t"
    local dirpath = vim.fn.expand "%:p:h"
    local filepath = vim.fn.expand "%:p"

    -- 保存文件
    vim.cmd(':w!')

    if ft == "javascript" then
        vim.cmd(string.format('!cd %s & echo & node ./%s', dirpath, filename))
    elseif ft == "typescript" then
        vim.cmd(string.format('!cd %s & echo & ts-node ./%s', dirpath, filename))
    elseif ft == "python" then
        vim.cmd(string.format('!cd %s & echo & python ./%s', dirpath, filename))
    end

end)
