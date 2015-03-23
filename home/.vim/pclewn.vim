
function! PyClewnInit()
    let l:scratchBufNum = bufnr("scratch")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:scratchBufNum
        new
    endif

    if buflisted(l:scratchBufNum)
        execute("bdelete! ".l:scratchBufNum)
    endif

    C tbreak main
    Cmapkeys
    unmap <CR>

endfunction

function! PyClewnPre()
    map <CR> :call PyClewnInit()<CR>
    e scratch
    setlocal buftype=nofile
    0put ='Press <Enter> to start'
endfunction

"silent! unmap b
"silent! unmap B
"silent! unmap c
"silent! unmap f
"silent! unmap G
"silent! unmap m
"silent! unmap r
"silent! unmap s
"silent! unmap S
"silent! unmap <special> <up>
"silent! unmap <special> <down>
"if !a:enable
    "return
"endif

"noremap <silent> <special> <F9> :exe "Cbreak ".fnameescape(expand("%:p")).":".line(".")<CR>
"noremap <silent> <special> <S-F9> :exe "Cclear ".fnameescape(expand("%:p")).":".line(".")<CR>
"noremap <silent> <special> <F8> :Ccontinue<CR>
"noremap <silent> <special> <S-F11> :Cfinish<CR>
"" Mnemonic: goto
"noremap <silent> <special> <C-F10> :exe "Cuntil ".fnameescape(expand("%:p")).":".line(".")<CR>
"" Mnemonic: main
"noremap <silent> <special> m :Cstart<CR>
"noremap <silent> <special> <F5> :Crun<CR>
"noremap <silent> <special> <F10> :Cnext<CR>
"noremap <silent> <special> <F11> :Cstep<CR>
"noremap <silent> <special> <up> :Cup<CR>
"noremap <silent> <special> <down> :Cdown<CR>


