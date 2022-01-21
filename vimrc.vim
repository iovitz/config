" ------------------------------
" Name: 使用习惯
" Author: iovitz
" ------------------------------

" 编码
set encoding=UTF-8

" leader成空格
let mapleader=" "

" 鼠标
set mouse=a

" 显示行号
set number

filetype plugin on 
" 相对行号
set relativenumber

" 2空格
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

"高亮当前行
set cursorline      

" 光标形状
let g:db_ui_use_nerd_fonts=1
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" 识别文件类型
filetype plugin on 
filetype indent on 

" 共享系统剪切板
set clipboard=unnamed

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

" 刷新时间
set updatetime=300

" 终端隐藏不结束
set hidden

" 重载修改文件
set autoread

" 自动写回
set autowrite

" 延迟绘制
set lazyredraw

" 换行符
set ffs=unix,dos,mac

" 搜索补全忽略扩展名
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.pyc,.pyo,.egg-info,.class
"stuff to ignore when tab completing
set wildignore=*.o,*.obj,*~,*.exe,*.a,*.pdb,*.lib
set wildignore+=*.so,*.dll,*.swp,*.egg,*.jar,*.class,*.pyc,*.pyo,*.bin,*.dex
" MacOSX/Linux
set wildignore+=*.zip,*.7z,*.rar,*.gz,*.tar,*.gzip,*.bz2,*.tgz,*.xz
set wildignore+=*DS_Store*,*.ipch
set wildignore+=*.gem
set wildignore+=*.png,*.jpg,*.gif,*.bmp,*.tga,*.pcx,*.ppm,*.img,*.iso
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/.rbenv/**
set wildignore+=*/.nx/**,*.app,*.git,.git
set wildignore+=*.wav,*.mp3,*.ogg,*.pcm
set wildignore+=*.mht,*.suo,*.sdf,*.jnlp
set wildignore+=*.chm,*.epub,*.pdf,*.mobi,*.ttf
set wildignore+=*.mp4,*.avi,*.flv,*.mov,*.mkv,*.swf,*.swc
set wildignore+=*.ppt,*.pptx,*.docx,*.xlt,*.xls,*.xlsx,*.odt,*.wps
set wildignore+=*.msi,*.crx,*.deb,*.vfd,*.apk,*.ipa,*.bin,*.msu
set wildignore+=*.gba,*.sfc,*.078,*.nds,*.smd,*.smc
set wildignore+=*.linux2,*.win32,*.darwin,*.freebsd,*.linux,*.android