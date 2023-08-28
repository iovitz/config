require'nvim-lastplace'.setup {}
local ok, lastplace = pcall(require, "nvim-lastplace")
if not ok then
    vim.notify("「nvim-lastplace」 plugin not load.")
    return
end

lastplace.setup {
    lastplace_ignore_buftype = {"quickfix", "nofile", "help"},
    lastplace_ignore_filetype = {"gitcommit", "gitrebase", "svn", "hgcommit"},
    lastplace_open_folds = true
}
