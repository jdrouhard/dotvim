set guiheadroom=-100
"set guioptions-=e
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=L
set noerrorbells
if has("win16") || has("win32") || has("win64")
    set guifont=Consolas_for_Powerline_FixedD:h9:cANSI
else
    set guifont=Source\ Code\ Pro\ for\ PowerLine\ regular\ 10
endif
