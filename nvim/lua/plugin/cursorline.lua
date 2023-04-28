local cursorline_ok, nvim_cursorline = pcall(require, 'nvim-cursorline')
if not cursorline_ok then
    vim.notify("「nvim-cursorline」 plugin not load.")
    return
end

nvim_cursorline.setup {
    cursorline = {
        enable = true,
        timeout = 1000,
        number = false
    },
    cursorword = {
        enable = true,
        min_length = 3,
        hl = {
            underline = true
        }
    }
}
