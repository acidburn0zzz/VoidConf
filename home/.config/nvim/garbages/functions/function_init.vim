" Initial Actions
autocmd BufRead * :call LoadingFunc()
function! LoadingFunc()
    exec ":echomsg 'a'"
endfunction
