local fn = vim.fn

--Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth", "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  --vim.cmd [[packadd packer.nvim]]
end

--Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

--Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "single" }
    end,
  },
}

--vim.cmd [[packadd packer.nvim]]
return packer.startup({
	function(use)
    --插件依赖
		use "wbthomason/packer.nvim"
		use "nvim-lua/plenary.nvim"

    --括号匹配
		use "windwp/nvim-autopairs"
    
    --图标字体
		use "kyazdani42/nvim-web-devicons"

    --主题
    use {
      'folke/tokyonight.nvim',
      config = function()
        vim.cmd[[colorscheme tokyonight]]
      end
    }

    --高亮
    use "yamatsum/nvim-cursorline"

    --状态栏
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    --目录树
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    --窗口切换
    use 'christoomey/vim-tnux-navigator'

    --启动页
    use {
      'glepnir/dashboard-nvim',
      event = 'VimEnter',
      config = function()
        require('dashboard').setup {
          -- config
        }
      end,
      dependencies = { {'kyazdani42/nvim-web-devicons'}}
    }

    --导航栏
    use {
      'akinsho/bufferline.nvim',
      requires = 'kyazdani42/nvim-web-devicons'
    }

    --注释
    use {
      "terrortylor/nvim-comment",
      config = function()
        require('nvim_comment').setup()
      end
    }

    --高亮
    use "nvim-treesitter/nvim-treesitter"

    --文件大纲
    use {
      'simrat39/symbols-outline.nvim',
      config = function() 
        require("symbols-outline").setup()
      end
    }

    --git行提交记录
    use {
      'lewis6991/gitsigns.nvim',
      config = function()
        require('gitsigns').setup()
      end
    }

    -- use({
    --   'rose-pine/neovim',
    --   as = 'rose-pine',
    --   config = function()
    --     vim.cmd[[colorscheme rose-pine]]
    --   end
    -- })
	end,
})
