require("nvim-tree").setup {
  filters = {
    dotfiles = true,
    custom = {'.git', 'node_modules', '.cache'}
  },
  git = {
    ignore = true
  },
  update_focused_file = {
    enable      = true,
    update_cwd  = true,
    ignore_list = {}
  },
  update_cwd = true
}