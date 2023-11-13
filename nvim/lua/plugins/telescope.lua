-- 环境里要安装rieypgrep
return {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
    config = function()
        local telescope = require('telescope')
        telescope.setup {
            file_ignore_patterns = {"node_modules"},
            defaults = {},
            extensions = {}
        }

        telescope.load_extension "file_browser"

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, opts)
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, opts)
        vim.keymap.set('n', '<leader>fb', builtin.buffers, opts)
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, opts)
        vim.api.nvim_set_keymap("n", "<leader>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", {
            noremap = true
        })
    end
}
