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


		-- 自动完成
		use("hrsh7th/nvim-cmp") --自动完成引擎
		use("hrsh7th/cmp-nvim-lsp") --LSP源
		use("hrsh7th/cmp-buffer")
		use("hrsh7th/cmp-cmdline")
		use("L3MON4D3/LuaSnip") --代码片段引擎
		use("saadparwaiz1/cmp_luasnip") --代码片段源
		-- LSP 配置
		use("neovim/nvim-lspconfig")
		use("williamboman/mason.nvim") --管理LSP服务
		use("williamboman/mason-lspconfig.nvim")
		use("onsails/lspkind-nvim")
		use("glepnir/lspsaga.nvim")
	end,
})