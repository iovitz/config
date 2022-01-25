" ------------------------------
" Name: 案件
" Author: iovitz
" ------------------------------

" Run code
map <F1> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    echo $filetype      
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
    elseif &filetype == 'sh'
        :!bash %
    endif
endfunc


map <F3> :call Test()<CR>
func! Test()
    echo $filetype
endfunc