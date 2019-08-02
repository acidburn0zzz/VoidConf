" Delete Trailing White Spaces(after save the file)
autocmd BufWrite * :call DeleteTrailingWS()
function! DeleteTrailingWS()
  execute "normal! mz"
  %s/\s\+$//ge
  exe "normal! 'z"
endfunction
