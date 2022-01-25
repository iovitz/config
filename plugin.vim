" ------------------------------
" Name: 插件
" Author: iovitz
" ------------------------------

call plug#begin('~/AppData/Local/nvim/plugged')

	" 缩进线
	Plug 'Yggdroot/indentLine'

	" 闭合括号
	Plug 'jiangmiao/auto-pairs'

	" 闭合标签
	Plug 'alvan/vim-closetag'

	" 开始
	Plug 'mhinz/vim-startify'

	" git状态
	Plug 'airblade/vim-gitgutter'

	" 打字机模式
	Plug 'junegunn/goyo.vim'

	" 快速移动 "
	Plug 'easymotion/vim-easymotion'

	" 护眼
	Plug 'junegunn/limelight.vim'

	" 树
	Plug 'preservim/nerdtree'

	" 树的tab键
	Plug 'jistr/vim-nerdtree-tabs'

	" 树git
	Plug 'Xuyuanp/nerdtree-git-plugin'

	" 文件图标
	Plug 'ryanoasis/vim-devicons'

	" 状态栏
	Plug 'vim-airline/vim-airline'

	" 状态栏主题
	Plug 'vim-airline/vim-airline-themes'

	" 补全
	Plug 'SirVer/ultisnips'

	" 补全代码段
	Plug 'honza/vim-snippets'

	" HTML代码块儿
	Plug 'mattn/emmet-vim'

	" coc
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" JavaScript support
	Plug 'pangloss/vim-javascript'   

	" TypeScript syntax 
	Plug 'leafgarland/typescript-vim' 

	" JS and JSX syntax
	Plug 'maxmellon/vim-jsx-pretty'   

	" GraphQL syntax
	Plug 'jparise/vim-graphql'        

	" go
	Plug 'fatih/vim-go', { 'tag': '*' }
	
	" go代码追踪
	Plug 'dgryski/vim-godef'

	" 行尾空白字符
	Plug 'ntpeters/vim-better-whitespace'

call plug#end()


" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" 主题
let g:airline_theme='base16_gruvbox_dark_pale'


" == vim-airline == "
" 使用 patch 过的字体
let g:airline_powerline_fonts = 1


" 打开 tabline 功能
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"设置切换Buffer快捷键"
nnoremap <C-tab> :bn<CR>
nnoremap <C-s-tab> :bp<CR>

" 主题
let g:airline_theme='base16_gruvbox_dark_pale'

" 关闭状态显示空白符号计数
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = ''


" == 文件树 == "
" nerdTree快捷键映射
let NERDTreeWinPos='left'
let NERDTreeWinSize=20
" 不显示隐藏文件夹
let g:NERDTreeHidden=0
map <F2> :NERDTreeToggle<CR>

" === 文件树显示git状态 "
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ 'Modified'  :'✹',
    \ 'Staged'    :'✚',
    \ 'Untracked' :'✭',
    \ 'Renamed'   :'➜',
    \ 'Unmerged'  :'═',
    \ 'Deleted'   :'✖',
    \ 'Dirty'     :'✗',
    \ 'Ignored'   :'☒',
    \ 'Clean'     :'✔︎',
    \ 'Unknown'   :'?',
    \ }

" python3
let g:python3_host_prog = 'C:\\Users\\WORKER\\AppData\\Local\\Programs\\Python\\Python310\\python.exe'

" indentLine
" 指定对齐线的尺寸
let g:indent_guides_guide_size = 1  
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level = 2  

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
" 启用flow
let g:javascript_plugin_flow = 1

" typescript-vim
" 禁用
let g:typescript_indent_disable = 1
" 指令
let g:typescript_compiler_binary = 'tsc'
" 选项
let g:typescript_compiler_options = ''

" vim-jsx-pretty
let g:vim_jsx_pretty_colorful_config = 1

" emmet
let g:user_emmet_expandabbr_key = '<C-e>'
let g:user_emmet_install_global = 0
autocmd FileType html,css,vue,jsx EmmetInstall


" indentLine
let g:indentLine_enable = 1
let g:indentLine_char_list = ['|', '¦', '┆', '┊', '▏']


" coc
" coc-highlight
autocmd CursorHold * silent call CocActionAsync('highlight')
" coc-snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" vim-better-whitespace
let g:better_whitespace_guicolor='#3C3836'
let g:strip_whitespace_on_save = 1
let g:strip_whitespace_confirm = 0