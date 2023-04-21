-- 自动安装packer
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

-- 保存文件自动安装插件
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer-init.lua source <afile> | PackerSync
  augroup end
]])

-- vim.cmd [[packadd packer.nvim]]
return require('packer').startup({function(use)
    -- 插件依赖
    use "wbthomason/packer.nvim"
    use "nvim-lua/plenary.nvim"

    -- 括号匹配
    use "windwp/nvim-autopairs"

    -- 图标字体
    use "kyazdani42/nvim-web-devicons"

    -- 主题
    use {
        'folke/tokyonight.nvim',
        config = function()
            vim.cmd [[colorscheme tokyonight]]
        end
    }

    -- 高亮
    use "yamatsum/nvim-cursorline"

    -- 状态栏
    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    }

    -- 目录树
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- 窗口切换
    use 'christoomey/vim-tmux-navigator'

    -- 启动页
    use {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                -- config
            }
        end,
        dependencies = {{'kyazdani42/nvim-web-devicons'}}
    }

    -- 导航栏
    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- 注释
    use {
        "terrortylor/nvim-comment",
        config = function()
            require('nvim_comment').setup()
        end
    }

    -- 高亮
    use "nvim-treesitter/nvim-treesitter"
    use "p00f/nvim-ts-rainbow"

    -- lsp
    -- npm i typescript-language-server -g
    use {"williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim", -- 这个相当于mason.nvim和lspconfig的桥梁
         "neovim/nvim-lspconfig"}

    -- 片段插件
    use "L3MON4D3/LuaSnip" -- snippets引擎
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-cmdline"
    use "onsails/lspkind-nvim"
    use "onsails/lspkind-nvim"
    use "saadparwaiz1/cmp_luasnip"
    use "rafamadriz/friendly-snippets"

    -- 格式化
    use {'mhartington/formatter.nvim'}

    -- 文件检索
    -- 环境里要安装ripgrep
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1', -- 文件检索
        requires = {{'nvim-lua/plenary.nvim'}}
    }

    -- 文件大纲
    use {
        'simrat39/symbols-outline.nvim',
        config = function()
            require("symbols-outline").setup()
        end
    }

    -- 终端
    use {
        "akinsho/toggleterm.nvim",
        tag = '*',
        config = function()
            require("toggleterm").setup()
        end
    }

    -- git行提交记录
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }

    if packer_bootstrap then
        require('packer').sync()
    end
end})
