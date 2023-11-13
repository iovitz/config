return {
    'kyazdani42/nvim-tree.lua',
    dependencies = {'kyazdani42/nvim-web-devicons'},
    config = function()
        vim.keymap.set('n', '<leader>aa', ':NvimTreeToggle<CR>', opts)
        vim.keymap.set('n', '<leader>af', ':NvimTreeFocus<CR>', opts)
        require('nvim-tree').setup {
            filters = {
                dotfiles = true,
                custom = {'.git', 'node_modules', '.cache'}
            },
            git = {
                ignore = true
            },
            update_focused_file = {
                enable = true,
                update_cwd = true,
                ignore_list = {}
            },
            update_cwd = true,
            actions = {
                open_file = {
                    quit_on_open = true
                }
            }
        }
    end
}
