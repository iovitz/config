local autopairs_ok, autopairs_plugin = pcall(require, 'nvim-autopairs')
if not autopairs_ok then
    vim.notify("「nvim-autopairs」 plugin not load.")
    return
end

autopairs_plugin.setup {}
