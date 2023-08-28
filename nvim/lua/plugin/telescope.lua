local ok, telescope = pcall(require, "telescope")
if not ok then
    vim.notify("「telescope」 plugin not load.")
    return
end

telescope.setup {
    file_ignore_patterns = {"node_modules"},
    defaults = {},
    extensions = {}
}
