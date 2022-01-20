" ------------------------------
" Name: 案件
" Author: iovitz
" ------------------------------

" Run code
map <F1> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'javascript'
        exec "i"
        exec '!node %'
    elseif &filetype == 'typescript'
        exec '!ts-node %'
    elseif &filetype == 'java'
        exec '!javac %'
        exec '!java %<'
    elseif &filetype == 'python'
        exec "!python3.6 %"
    elseif &filetype == 'sh'
        :!bash %
    endif
endfunc