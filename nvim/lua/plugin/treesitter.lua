local ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not ok then
    vim.notify("「nvim-treesitter.configs」 plugin not load.")
    return
end

treesitter.setup {
    -- A list of parser names, or "all"
    ensure_installed = {'tsx', 'json', 'css', 'html', 'lua', 'typescript', 'javascript', 'python', 'go', 'dart', 'vim',
                        'bash', 'sql', 'markdown', 'markdown_inline'},

    -- 异步安装
    sync_install = true,

    -- 自动安装
    auto_install = true,

    -- 开启高亮
    highlight = {
        enable = true
    },

    -- 开启缩进
    indent = {
        enable = true
    },

    -- 不同括号颜色区分
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil
    },

    -- 禁用
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end
}
