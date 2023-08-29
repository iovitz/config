local ok, nvim_tree = pcall(require, "nvim-tree")
if not ok then
    vim.notify("「nvim-tree」 plugin not load.")
    return
end

nvim_tree.setup {
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
