" Extract Funciton
" vmap <leader>em :call ExtractMethod()<CR>
" function! ExtractMethod() range
"   let name = inputdialog("Name of new method:")
"   '<
"   exe "normal! O\<BS>func " . name ."()\<CR>{\<Esc>"
"   '>
"   exe "normal! oreturn ;\<CR>}\<Esc>k"
"   s/return/\/\/ return/ge
"   normal! j%
"   normal! kf(
"   exe "normal! yyPi// = \<Esc>wdwA;\<Esc>"
"   normal! ==
"   normal! j0w
" endfunction

" execute "normal! mz"
" %s/\s\+$//ge
" exe "normal! 'z"
