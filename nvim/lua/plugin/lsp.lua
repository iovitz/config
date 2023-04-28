local mason_ok, mason = pcall(require, "mason")
if not mason_ok then
    vim.notify("「mason」 plugin not load.")
    return
end

local mason_lspconfig_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_ok then
    vim.notify("「mason-lspconfig」 plugin not load.")
    return
end

local lspconfig_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_ok then
    vim.notify("「lspconfig」 plugin not load.")
    return
end

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

mason_lspconfig.setup({
    -- 确保安装，根据需要填写
    ensure_installed = {"lua_ls", "tsserver", "tailwindcss"}
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.lua_ls.setup {
    capabilities = capabilities
}

lspconfig.tsserver.setup {
    on_attach = function(client, bufnr)
        -- format on save
        if client.server_capabilities.documentFormattingProvider then
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = vim.api.nvim_create_augroup("Format", {
                    clear = true
                }),
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.formatting_seq_sync()
                end
            })
        end
    end,
    filetypes = {"javascript", "typescript", "typescriptreact", "typescript.tsx"},
    root_dir = function()
        return vim.loop.cwd()
    end,
    cmd = {"typescript-language-server", "--stdio"}
}
