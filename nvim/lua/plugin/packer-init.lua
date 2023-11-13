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

    -- 记录文件编辑位置
    use 'ethanholz/nvim-lastplace'

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
