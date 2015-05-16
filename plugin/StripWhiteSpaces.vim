if exists('g:loaded_StripWhiteSpaces') || &cp
    finish
endif
let g:loaded_StripWhiteSpaces = 1

function! s:StripWhiteSpaces()
    if exists('b:disable_StripWhiteSpaces') && b:disable_StripWhiteSpaces
        return
    endif
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! undojoin
    :%s/\s\+$//e

    if exists('g:strip_trailing_lines') && g:strip_trailing_lines
        undojoin
        :%s#\($\n\s*\)\+\%$##e
    endif

    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
autocmd BufWritePre * StripWhiteSpace
command! -range=% StripWhiteSpaces :silent call <SID>StripWhiteSpaces()
