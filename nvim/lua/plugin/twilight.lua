local ok, twilight = pcall(require, "twilight")
if not ok then
    vim.notify("「twilight」 plugin not load.")
    return
end

twilight.setup {}
