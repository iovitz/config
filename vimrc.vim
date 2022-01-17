" ------------------------------
" Name: 使用习惯
" Author: iovitz
" ------------------------------

" 编码
set encoding=UTF-8

" leader设置成空格
let mapleader=" "

" 使用鼠标
set mouse=c

" 显示行号
set number

" 相对行号
set relativenumber

" 2空格
set tabstop=2
set shiftwidth=2
set softtabstop=2

"高亮显示当前行
set cursorline      

" 光标的形状
let g:db_ui_use_nerd_fonts=1
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" 不换行
set wrap

" 按键显示
set showcmd

" tab显示菜单
set wildmenu

" 不需要备份文件
set nobackup

" 主题
colorscheme gruvbox
set background=dark

" 分割窗口位置
set splitbelow
set splitright

" 语法高亮
autocmd BufNewFile,BufRead *.tsx,*.jsx,*.js set filetype=typescriptreact

" 基于语法折叠
set foldmethod=syntax     
  
" 关闭折叠
set nofoldenable            
