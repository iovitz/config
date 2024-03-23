-- npm i typescript-language-server -g
return {{
    "williamboman/mason.nvim",
    dependencies = {"williamboman/mason-lspconfig.nvim", "neovim/nvim-lspconfig",
                    "WhoIsSethDaniel/mason-tool-installer.nvim", "hrsh7th/cmp-nvim-lsp"},
    config = function()
        require('mason').setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        })
        require('mason-tool-installer').setup({
            ensure_installed = {"lua_ls", "tsserver", "tailwindcss", "bashls", "cssls", "dockerls", "emmet_ls", "html",
                                "jsonls", "pyright", "rust_analyzer", "taplo", "yamlls", "prettierd", -- lua formatter
            "stylua", -- lua formatter
            "isort", -- python formatter
            "black", -- python formatter
            "pylint", -- python linter
            "eslint_d" -- js linter
            }
        })
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        local lspconfig = require('lspconfig')

        lspconfig.lua_ls.setup {
            capabilities = capabilities
        }

        lspconfig.tsserver.setup {
            init_options = {
                preferences = {
                    disableSuggestions = true
                }
            },
            on_attach = function(client, bufnr)
                -- format on save
                if client.server_capabilities.documentFormattingProvider then
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        group = vim.api.nvim_create_augroup("Format", {
                            clear = true
                        }),
                        buffer = bufnr,
                        callback = function()
                            vim.lsp.buf.format({})
                        end
                    })
                end
            end,
            filetypes = {"javascript", "typescript", "javascriptreact", "typescriptreact", "javascript.tsx",
                         "typescript.tsx"},
            root_dir = function()
                return vim.loop.cwd()
            end,
            cmd = {"typescript-language-server", "--stdio"}
        }

    end
}}
