return {{
    "dnlhc/glance.nvim",
    config = function()
        vim.keymap.set('n', ';d', ':Glance definitions<CR>', opts)
        vim.keymap.set('n', ';r', ':Glance references<CR>', opts)
        require('glance').setup({})
    end
}}
