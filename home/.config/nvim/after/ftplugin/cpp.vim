"-------------------------=[ General ]=----------------------"
set formatoptions-=cro
autocmd BufWrite * :call AutoFormat()
autocmd FileType cpp setlocal equalprg=clang-format " Format Entire Page

" F5-F10 are free.
map <F5> :w<CR> :!clear; make<CR> " Build the project
map <F6> :w<CR> :!clear; make<CR> :term ./%<<CR> " Build and run the project
nnoremap <silent> <F7> :VBGstepIn<CR>
nnoremap <silent> <F8> :VBGstepOut<CR>
nnoremap <silent> <F9> :VBGstepOver<CR>
nnoremap <silent> <F10> :VBGcontinue<CR>

"-------------------------=[ Functions ]=----------------------"
let g:which_key_map.p = {
                        \ 'name' : '+CPP' ,
                        \ 'b' : [':term\<CR>icargo build\<CR>'  , 'Cargo Build']     ,
                        \ 'c' : [':VBGclearBreakpints\<CR>'  , 'VBGclearBreakpints']     ,
                        \ 'k' : [':VBGkill\<CR>'  , 'VBGkill']     ,
                        \ 't' : [':VBGtoggleBreakpointThisLine\<CR>'  , 'VBGtoggleBreakpointThisLine']     ,
                        \ 'e' : [':VBGeval <expr>\<CR>'  , 'VBGeval']     ,
                        \ 'x' : ['MVGBexecute()'  , 'VGBexecute']     ,
                        \ 'ev' : ['ExtractVariable()'   , 'Extract Variable']     ,
                        \ 'em' : ['ExtractMethod()'   , 'Extract Method']     ,
                        \ }

let g:which_key_map.q = {
                        \ 'name' : '+QT' ,
                        \ 'd': ['BuildDebug()'   , 'Build and Debug']     ,
                        \ 'ev' : ['ExtractVariable()'   , 'Extract Variable']     ,
                        \ 'em' : ['ExtractMethod()'   , 'Extract Method']     ,
                        \ }

" Execute an expression in debugger
function! MVGBexecute()
    "     noremap <leader>fw :vimgrep <cword> **/*.*<CR>
    let exp = input('expression to execute: ')
    if exp != ''
        execute ":VBGexecute ".exp
    endif
endfunction

function! BuildDebug()
    :w<CR> :term qmake -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug && make<CR>
endfunction

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

"nnoremap <expr><A-r> ":%s/".expand("<cword>")."//gc<left><left><left>"
""VBGattachGDB                VBGevalWordUnderCursor
""VBGstartGDB                 VBGtoggleBreakpoint
""VBGstartPDB                 VBGstartPDB3
""VBGevalSelectedText         VBGrawWrite
""VBGstartRDebug              VBGexecuteSelectedText
""VBGstartGDBForD             VBGtoggleTerminalBuffer
""VBGrawWriteSelectedText     VBGstartPDB2


