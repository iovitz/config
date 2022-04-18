" ------------------------------
" Name: 插件
" Author: iovitz
" ------------------------------

call plug#begin('~/AppData/Local/nvim/plugged')

" 主题
Plug 'arcticicestudio/nord-vim'

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

" 仪表盘
Plug 'glepnir/dashboard-nvim'

" 快速移动 "
Plug 'easymotion/vim-easymotion'

" 文件图标
Plug 'ryanoasis/vim-devicons'

" 护眼
Plug 'junegunn/limelight.vim'

" 树
Plug 'preservim/nerdtree'
" 左
let NERDTreeWinPos='left'
" 宽度
let NERDTreeWinSize=20
" 不显示隐藏文件夹
let g:NERDTreeHidden=0
" 按键
map <F2> :NERDTreeToggle<CR>

" 缩进线
Plug 'Yggdroot/indentLine'
let g:indentLine_enable = 1
let g:indent_guides_guide_size = 1  
let g:indentLine_char_list = ['|', '¦', '┆', '┊', '▏']
let g:indent_guides_start_level = 2  

" 树git
Plug 'Xuyuanp/nerdtree-git-plugin'
" 字符
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

" register
Plug 'tversteeg/registers.nvim', { 'branch': 'main' }
let g:registers_return_symbol = "\n" "'⏎' by default
let g:registers_tab_symbol = "\t" "'·' by default
let g:registers_space_symbol = "." "' ' by default
let g:registers_delay = 500 "0 by default, milliseconds to wait before opening the popup window
let g:registers_register_key_sleep = 1 "0 by default, seconds to wait before closing the window when a register key is pressed
let g:registers_show_empty_registers = 0 "1 by default, an additional line with the registers without content
let g:registers_trim_whitespace = 0 "1 by default, don't show whitespace at the begin and end of the registers
let g:registers_hide_only_whitespace = 1 "0 by default, don't show registers filled exclusively with whitespace
let g:registers_window_border = "single" "'none' by default, can be 'none', 'single','double', 'rounded', 'solid', or 'shadow' (requires Neovim 0.5.0+)
let g:registers_window_min_height = 10 "3 by default, minimum height of the window when there is the cursor at the bottom
let g:registers_window_max_width = 20 "100 by default, maximum width of the window
let g:registers_normal_mode = 0 "1 by default, open the window in normal mode
let g:registers_paste_in_normal_mode = 1 "0 by default, automatically perform a paste action when selecting a register in normal mode
let g:registers_visual_mode = 0 "1 by default, open the window in visual mode
let g:registers_insert_mode = 0 "1 by default, open the window in insert mode
let g:registers_show = "*+\"" "'*+\"-/_=#%.0123456789abcdefghijklmnopqrstuvwxyz:' by default, which registers to show and in what order


" 状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" 使用patch过的字体
let g:airline_powerline_fonts = 1

" 打开 tabline 功能
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"设置切换Buffer快捷键"
nnoremap <C-tab> :bn<CR>
nnoremap <C-s-tab> :bp<CR>

" 主题
let g:airline_theme='nord'

" 关闭状态显示空白符号计数
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

" 字符
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = ''

" 补全
Plug 'SirVer/ultisnips'
" let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" 补全代码段
Plug 'honza/vim-snippets'

" HTML代码块儿
Plug 'mattn/emmet-vim'
let g:user_emmet_expandabbr_key = '<C-e>'
let g:user_emmet_install_global = 0
autocmd FileType html,css,vue,jsx EmmetInstall

" JavaScript
Plug 'pangloss/vim-javascript'   
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" TypeScript
Plug 'leafgarland/typescript-vim' 
let g:typescript_indent_disable = 1
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''

" JS and JSX syntax
Plug 'maxmellon/vim-jsx-pretty'   
let g:vim_jsx_pretty_colorful_config = 1

" GraphQL
Plug 'jparise/vim-graphql'        

" go
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'dgryski/vim-godef'

" git
Plug 'f-person/git-blame.nvim'
let g:gitblame_enabled = 0
let g:gitblame_message_template = '<summary> • <date> • <author>'
let g:gitblame_date_format = '%r'
let g:gitblame_highlight_group = "Question"

" 行尾空白字符
Plug 'ntpeters/vim-better-whitespace'
let g:better_whitespace_guicolor ='#3C3836'
let g:strip_whitespace_on_save = 1
let g:strip_whitespace_confirm = 0

" markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
let g:mkdp_brower = 'chromium'
autocmd Filetype markdown noremap ,m :MarkdownPreview<CR>
autocmd Filetype markdown noremap ,ms :MarkdownPreviewStop<CR>

Plug 'preservim/nerdcommenter'
" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" 寄存器预览
Plug 'gennaro-tedesco/nvim-peekup'
let g:peekup_open = '<leader>"'
let g:peekup_paste_before = '<leader>P'
let g:peekup_paste_after = '<leader>p'

" 窗口高亮
Plug 'folke/twilight.nvim'

" 窗口透明
Plug 'xiyaowong/nvim-transparent'
let g:transparent_enabled = v:false

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" 显示符号列
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Tab触发切换
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" 使用 <c-space> 补全
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" 使<CR>自动选择第一个完成项目并通知coc。nvim要在回车时格式化，<cr>可以由其他vim插件重新映射
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" 代码诊断
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" 代码导航
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" 显示文档
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" 按住光标时高亮显示符号和引用
autocmd CursorHold * silent call CocActionAsync('highlight')

" 重命名变量
nmap <leader>rn <Plug>(coc-rename)

" 格式化选中代码
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" 用到的插件
let g:coc_global_extensions = [
            \ 'coc-tsserver','coc-html','coc-css', 'coc-json',
            \ 'coc-tabnine','coc-eslint','coc-flutter',
            \ 'coc-emmet','coc-snippets','coc-xml','coc-yaml',
            \ 'coc-markdownlint','coc-highlight']

" coc-highlight
autocmd CursorHold * silent call CocActionAsync('highlight')
" coc-snippets
" Use <C-l> for trigger snippet expand.

call plug#end()
