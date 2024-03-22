return {{
    'nvim-lualine/lualine.nvim',
    version = "*",
    dependencies = {'kyazdani42/nvim-web-devicons', 'linrongbin16/lsp-progress.nvim'},
    config = function()
        require('lualine').setup {
            options = {
                theme = bubbles_theme,
                component_separators = '|',
                section_separators = {
                    left = '',
                    right = ''
                }
            },

            sections = {
                lualine_a = {{
                    'branch',
                    separator = {
                        left = ''
                    },
                    right_padding = 2
                }},
                lualine_b = {'diff', 'diagnostics'},
                lualine_c = {"require('lsp-progress').progress()"},
                lualine_x = {"filesize", {
                    "fileformat",
                    symbols = {
                        unix = '', -- e712
                        dos = '', -- e70f
                        mac = '' -- e711
                    }
                }, "encoding", "filetype"},
                lualine_y = {'progress'},
                lualine_z = {{
                    'location',
                    separator = {
                        right = ''
                    },
                    left_padding = 2
                }}
            },
            inactive_sections = {
                lualine_a = {'filename'},
                lualine_b = {'branch'},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {'location'}
            },
            tabline = {},
            extensions = {"nvim-tree", "toggleterm"}
        }
        require('lsp-progress').setup({
            spin_update_time = 1000,
            spinner = {'🌑', '🌒', '🌓', '🌔', '🌕', '🌖', '🌗', '🌘'}
        })

    end
}}
