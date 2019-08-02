vmap <leader>ml :call Mylog()<CR>
function! Mylog(message, file)
    new
    setlocal buftype=nofile bufhidden=hide noswapfile nobuflisted
    put=a:message
    execute 'w >>' a:file
    q
endfun
