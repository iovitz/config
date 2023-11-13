return {
    "akinsho/toggleterm.nvim",
    config = function()
        vim.keymap.set('n', '<leader>tt', ':ToggleTerm<CR>', opts)
        vim.keymap.set('n', '<leader>tl', ':ToggleTermSendCurrentLine<CR>', opts)
        vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
        vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
        vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
        vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
        vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
        vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
        vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
        require("toggleterm").setup({
            -- direction = 'float',
            float_opts = {
                border = 'curved',
                -- like `size`, width and height can be a number or function which is passed the current terminal
                width = 50,
                height = 20,
                winblend = 3
            }
        })
    end
}
