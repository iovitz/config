local opt = vim.opt
--配置基础设置
vim.scriptencoding = "utf-8"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

--行号
opt.number = true
opt.relativenumber = true
opt.title = true
--缩进
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.smarttab = true

-- 不允许备份
opt.backup = false
opt.writebackup = false
opt.swapfile = false

opt.showcmd = true
opt.scrolloff = 10

opt.inccommand = "split"
-- ui
opt.cursorline = true
opt.background = "dark"
opt.termguicolors = true
opt.wrap = false
opt.updatetime = 300
--opt.timeoutlen = 500

opt.signcolumn = "yes"
vim.g.completeopt = "menu,menuone,noselect,noinsert"

vim.opt.clipboard:append({ "unnamedplus" })