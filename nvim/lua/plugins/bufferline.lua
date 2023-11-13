return {{
    'akinsho/bufferline.nvim',
    dependencies = {'kyazdani42/nvim-web-devicons'},
    config = function()

        vim.keymap.set("n", "<C-L>", "<Cmd>bnext<CR>", opts)
        vim.keymap.set("n", "<C-H>", "<Cmd>bprevious<CR>", opts)
        vim.keymap.set('n', '<leader>bh', '<Cmd>BufferLineCyclePreview<CR>', opts)
        vim.keymap.set('n', '<leader>bl', '<Cmd>BufferLineCycleNext<CR>', opts)

        vim.keymap.set('n', '<leader>b1', '<Cmd>BufferLineGoToBuffer 1<CR>', opts)
        vim.keymap.set('n', '<leader>b2', '<Cmd>BufferLineGoToBuffer 2<CR>', opts)
        vim.keymap.set('n', '<leader>b3', '<Cmd>BufferLineGoToBuffer 3<CR>', opts)
        vim.keymap.set('n', '<leader>b4', '<Cmd>BufferLineGoToBuffer 4<CR>', opts)
        vim.keymap.set('n', '<leader>b5', '<Cmd>BufferLineGoToBuffer 5<CR>', opts)
        vim.keymap.set('n', '<leader>b6', '<Cmd>BufferLineGoToBuffer 6<CR>', opts)
        vim.keymap.set('n', '<leader>b7', '<Cmd>BufferLineGoToBuffer 7<CR>', opts)
        vim.keymap.set('n', '<leader>b8', '<Cmd>BufferLineGoToBuffer 8<CR>', opts)
        vim.keymap.set('n', '<leader>b9', '<Cmd>BufferLineGoToBuffer 9<CR>', opts)
        require('bufferline').setup {
            options = {
                -- 使用 nvim 内置lsp
                diagnostics = "nvim_lsp",
                mode = "buffers",
                numbers = "ordinal",
                -- 左侧让出 nvim-tree 的位置
                offsets = {{
                    filetype = "NvimTree",
                    text = "  Brave And Enthusiastic",
                    highlight = "Directory",
                    text_align = "left"
                }}
            }
        }

    end
}}
