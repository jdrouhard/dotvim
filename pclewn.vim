
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

"noremap <silent> <special> b :exe "Cbreak ".fnameescape(expand("%:p")).":".line(".")<CR>
"noremap <silent> <special> B :exe "Cclear ".fnameescape(expand("%:p")).":".line(".")<CR>
"noremap <silent> <special> c :Ccontinue<CR>
"noremap <silent> <special> f :Cfinish<CR>
"" Mnemonic: goto
"noremap <silent> <special> G :exe "Cuntil ".fnameescape(expand("%:p")).":".line(".")<CR>
"" Mnemonic: main
"noremap <silent> <special> m :Cstart<CR>
"noremap <silent> <special> r :Crun<CR>
"noremap <silent> <special> s :Cnext<CR>
"noremap <silent> <special> S :Cstep<CR>
"noremap <silent> <special> <up> :Cup<CR>
"noremap <silent> <special> <down> :Cdown<CR>


