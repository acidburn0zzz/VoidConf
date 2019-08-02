" File browsing with netrw
" open splits to right
let g:netrw_altv=1
" disable annoyoing banner
let g:netrw_banner=0
" tree view
let g:netrw_liststyle=3
let g:netrw_winsize = 25
let g:netrw_browse_split = 2
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s|\s)\zs\.\S\+'
let g:NetrwIsOpen=0

autocmd filetype netrw call Netrw_mappings()
function! Netrw_mappings()
  noremap <buffer>% :call CreateInPreview()<cr>
endfunction

function! CreateInPreview()
  let l:filename = input("please enter filename: ")
  execute 'silent !touch ' . b:netrw_curdir.'/'.l:filename
  redraw
"   execute "normal! r"
endfunction

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction


" remap control-enter to open files in new tab
" nmap <silent> <C-CR> t :rightbelow 20vs<CR>:e .<CR>:wincmd h<CR>
" the same remap as above - may be necessary in some distros
" nmap <silent> <NL> t :rightbelow 20vs<CR>:e .<CR>:wincmd h<CR>

" noremap <CR> :e .<CR>

" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END
"let g:netrw_become_split=4	" open in prior window

" Add your own mapping. For example:
" noremap <silent> <C-E> :call ToggleNetrw()<CR>
