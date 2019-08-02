"-------------------------=[ General ]=----------------------"
set formatoptions-=cro
autocmd BufWrite * :call AutoFormat()
autocmd FileType c setlocal equalprg=clang-format " Format Entire Page

" F5-F10 are free.
" Build the project
nnoremap <F5> :FSHere<CR>
map <F6> :w<CR> :term make<CR>
" Build and run the project
map <F7> :w<CR> :term cd build/; ./%<<CR>
" Clean the build directory
map <F8> :w<CR> :term make clean<CR>

nnoremap <silent> <F8> :VBGstepIn<CR>
nnoremap <silent> <F9> :VBGstepOut<CR>
nnoremap <silent> <F10> :VBGstepOver<CR>

"-------------------------=[ Functions ]=----------------------"
let g:which_key_map.c = {
                        \ 'name' : '+C' ,
                        \ 'e' : ['ExtractVariable()'   , 'Extract Variable']     ,
                        \ 'm' : ['ExtractMethod()'   , 'Extract Method']     ,
                        \ }


" Auto Format File When exit from vim
function! AutoFormat()
        execute "normal! mz"
        execute "normal! gg=G"
        exe "normal! 'z"
endfunction

" Extract Variable
function! ExtractVariable()
        let var = input('variable name: ')
        execute "normal! \<S-^>iauto ".var." = "
endfunction

" Extract Method
function! ExtractMethod() range
        let name  = inputdialog("Name of new method:")
        let rType = inputdialog("Enter Return Type:")
        let line  = inputdialog("Line to put function:")
        "     exe "normal! :".line."\<CR>"
        execute "normal! ma"
        '<
        exe "normal! O\<BS>".rType." ".name."()\<CR>{\<Esc>"
        '>
        exe "normal! oreturn ;\<CR>}\<Esc>k"
        s/return/\/\/ return/ge
        normal! j%
        normal! kf(
        "     exe "normal! yyPi// = \<Esc>wdwA;\<Esc>"
        normal! ==
        normal! j0w
        exe "normal! 'a3k0v9j\<S-$>d :".line."\<CR>p"
endfunction
