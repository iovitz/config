" ------------------------------
" Name: 按键
" Author: iovitz
" ------------------------------

" Reflash
nnoremap <leader>r :source $MYVIMRC<cr>

" Ctrl d
nnoremap <c-d> yyp

" clt j
nnoremap <a-j> ddp
nnoremap <a-k> ddkkp

" Esc
inoremap Capslock <Esc>

" Run code
map <F1> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"    
    if &filetype == 'typescriptreact'
        exec '!node %'
    elseif &filetype == 'typescript'
        exec '!ts-node %'
    elseif &filetype == 'go'
        exec '!go run %'
    elseif &filetype == 'java'
        exec '!javac %'
        exec '!java %<'
    elseif &filetype == 'python'
        exec "!python %"
    elseif &filetype == 'markdown'
        :MarkdownPreview
    endif
endfunc