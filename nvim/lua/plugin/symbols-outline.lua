local ok, symbols_outline = pcall(require, 'symbols-outline')
if not ok then
    vim.notify("「symbols-outline」 plugin not load.")
    return
end

symbols_outline.setup {}
