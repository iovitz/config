require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
    -- 确保安装，根据需要填写
    ensure_installed = {"lua_ls", "tsserver", "tailwindcss"}
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
    capabilities = capabilities
}
require'lspconfig'.tsserver.setup{
  on_attach = function(client, bufnr)
    -- format on save
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = vim.api.nvim_create_augroup("Format", { clear = true }),
        buffer = bufnr,
        callback = function() vim.lsp.buf.formatting_seq_sync() end
      })
    end
  end,
  filetypes = { "javascript", "typescript", "typescriptreact", "typescript.tsx" },
  root_dir = function() return vim.loop.cwd() end,
  cmd = { "typescript-language-server", "--stdio" }
}
