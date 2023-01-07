local fn = vim.fn

-- Automatically install packer
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

-- Autocommand that reloads neovim whenever you save the plugins.lua file
--vim.cmd [[
--  augroup packer_user_config
--    autocmd!
--    autocmd BufWritePost plugins.lua source <afile> | PackerSync
--  augroup end
--]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
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
    -- 插件依赖
		use "wbthomason/packer.nvim"
		use "nvim-lua/plenary.nvim"

    -- 括号匹配
		use "windwp/nvim-autopairs"
    
    -- 高亮
		use "nvim-treesitter/nvim-treesitter"
    
    -- 图标字体
		use "kyazdani42/nvim-web-devicons"
    -- 状态栏
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    use {
      'akinsho/bufferline.nvim',
      requires = 'kyazdani42/nvim-web-devicons'
    }

    use 'simrat39/symbols-outline.nvim'

    use {
      'lewis6991/gitsigns.nvim',
      config = function()
        require('gitsigns').setup()
      end
    }
	end,
})
