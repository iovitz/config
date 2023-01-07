local status, packer = pcall(require, "packer")
if not status then
	print("packer is not installed")
	return
end
--vim.cmd [[packadd packer.nvim]]
return packer.startup({
	function(use)
		-- 插件必须得库
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
	end,
})