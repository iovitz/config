local ok, autopairs_plugin = pcall(require, 'nvim-autopairs')
if not ok then
    vim.notify("「nvim-autopairs」 plugin not load.")
    return
end

autopairs_plugin.setup {}
