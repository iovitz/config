local opt = vim.opt

--搜索
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true

--自动切换工作目录
opt.autochdir = true

--行号
opt.number = true
opt.relativenumber = true

--自动换行
opt.wrap=true

--缩进
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.smarttab = true
opt.tabstop = 2
opt.shiftwidth = 2

--不允许备份
opt.backup = false
opt.writebackup = false
opt.swapfile = false

--编码
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.mouse = 'a'

--文件被修改自动载入
opt.autoread = true

--窗口分割
opt.splitbelow=true
opt.splitright=true

--展示状态栏
opt.showcmd = true

--界面
opt.cursorline = true
opt.background = "dark"
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cmdheight=1

--剪切板
opt.clipboard:append('unnamedplus')