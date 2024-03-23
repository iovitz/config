-- 环境里要安装rieypgrep
-- sudo apt install ripgrep
-- npm install -g fd-find
return {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "LinArcX/telescope-env.nvim",
                    "ahmedkhalf/project.nvim"},
    config = function()
        local telescope = require('telescope')
        local project = require('project_nvim')

        project.setup({
            detection_methods = {"pattern"},
            patterns = {".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", ".sln"}
        })

        telescope.load_extension('env')
        telescope.load_extension('projects')

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
