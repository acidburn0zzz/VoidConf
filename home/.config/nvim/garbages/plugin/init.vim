"--------------------=[ Initial Actions ]=-------------------------""
autocmd BufRead * :call LoadingFunc()
function! LoadingFunc()
    exec "normal! <F1>"
endfunction

"------=[ Open Startify and NERDTree automatically if no file selected! ]=------"
function! OpenStartify()
    if argc() == 0 && !exists("s:std_in")
        " Open Startify
        Startify
        " Open NERDTree
        NERDTree
        " And jump right window
        execute ":wincmd l"
    endif
endfunction
"autocmd VimEnter * call OpenStartify()

function! OpenNerdTree()
    if argc() != 0
        " Open NERDTree
        NERDTree
        " And jump fo file
        execute ":wincmd l"
    endif
endfunction
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * call OpenNerdTree()

"-------------------------=[ Temp Settings ]=----------------------"
set runtimepath+=~/.config/nvim/garbages/neo-dap

"--------------=[ Garbages ]=------------------"
" function! KeepOpen()
"     if (exists("b:NERDTree") && b:NERDTree.isTabTree())
"         "         Startify
"         "         execute ":wincmd h"
"         "   winnr("$") == 1
"         " && exists("b:NERDTree")
"         " argc() == 0
"         " && exists("b:NERDTree") && b:NERDTree.isTabTree()
"     endif
" endfunction
" autocmd bufenter * call KeepOpen()
"
" au BufEnter * <F1>
" close vim if the only window left open is a NERDTree
