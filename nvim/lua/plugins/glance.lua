return {{
    "dnlhc/glance.nvim",
    config = function()
        vim.keymap.set('n', '<leader>sd', ':Glance definitions<CR>', opts)
        vim.keymap.set('n', '<leader>sr', ':Glance references<CR>', opts)
        require('glance').setup({})
    end
}}
