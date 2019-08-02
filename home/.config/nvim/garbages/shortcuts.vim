"--------------------------------=[ Garbages ]=--------------------------------"
"------------------------------=[ Remap section ]=----------------------------------------"
" inoremap { {}<Left>
" inoremap {; {};<Left><Left>
" inoremap ( ()<Left>
" inoremap (; ();<Left><Left>
" inoremap < <><Left>
" inoremap [ []<Left>
" nnoremap ; :
" vnoremap ; :
" vnoremap : ;
" inoremap } <c-r>=ClosePair('}')<CR>
" inoremap ) <c-r>=ClosePair(')')<CR>
" inoremap ] <c-r>=ClosePair(']')<CR>
" inoremap > <c-r>=ClosePair('>')<CR>
" inoremap " <c-r>=QuoteDelim('"')<CR>
" inoremap ' <c-r>=QuoteDelim("'")<CR>
"
":%bd|e<CR>
":bufdo bd<CR>
" nnoremap <leader>nt :vsplit<cr>:term<cr>i
"     :redir @a
"     silent execute a:cmd
"     :redir END
"         if current_buffer == "NERD_tree_1"
"             exe ":bw NERD_tree_1"
"         exe ":e #"
"     exe ":bufdo e"
"     if winnr("$") == 0
"         Startify
"         execute ":wincmd l"
"     endif
" noremap <leader>qv <C-w>q
" nnoremap <silent> <leader>/ :noh<CR>
" ?\v
" nnoremap / /\v

" vmap  <expr>  j   DVB_Drag('down')
" vmap  <expr>  k     DVB_Drag('up')

"       let total += c
"       let c += 1
"     for item in buflist
"         let IsNERDtree = match(item, "NERD_tree")
"         exe 'bwipeout! ' . unlisted_buffer[i-1][:2]
" "         if IsNERDtree != - 1
" "         endif
"         let i = i + 1
"     endfor

" inoremap } <c-r>=OpenPar('}')<CR>
" inoremap {<Space> {<CR>}<Esc>O<TAB>

"  =~ 'NERD_tree_\d'
"     for item in filter(buflist,"v:val[3] == 'u'")
"         if IsNERDtree != -1
"             exec 'bwipeout ' . item[:2]
"         endif
"     endfor
"
"         let IsNERDtree = match(unlisted_buffer[i], "NERD_tree")
" "         echo IsNERDtree
"         if IsNERDtree != - 1
"         endif

" autocmd InsertCharPre * :call AfterInsertChar()
" function! AfterInsertChar()
"     let line = getline('.')
"     let col = col('.')
"     echo v:char
" "     if v:char == <cr>
" "         echo "Entered!"
" "     endif
" endfunction

" function CloseBracket(char)
"     " getline('.')[col('.') - 1]
"     let line = getline('.')
"     let col = col('.')
"     if line[col - 1]  == a:char
"         return "\<Right>\<Left>"
"         return "{\<CR>}\<Esc>O\<TAB>"
"     elseif line[col - 1]  == "\<S"
"         return "\<CR>}\<Esc>O<TAB>"
"     else
"         return a:char
"     endif
" endf

"function ClosePair(char)
"    let line = getline('.')
"    let col = col('.')
"    if line[col - 1] == a:char
"        return "\<Right>\<Left>"
"    else
"        return a:char
"    endif
"endfunction
"
"function QuoteDelim(char)
"    let line = getline('.')
"    let col = col('.')
"    if (line[col + 1] == a:char)
"        echo 2
"    elseif (line[col - 2] == a:char)
"        return "\<Right>\<Left>"
"    else
"        return a:char
"    endif
"endf

"****** Quit from all buffers except main window *****"
"function! QuitAll()
"    " list of *all* buffer numbers
"    let buffers = range(1, bufnr('$'))
"    " what tab page are we in?
"    let currentTab = tabpagenr()
"    try
"        " go through all tab pages
"        let tab = 0
"        while tab < tabpagenr('$')
"            let tab += 1
"
"            " go through all windows
"            let win = 0
"            while win < winnr('$')
"                let win += 1
"                " whatever buffer is in this window in this tab, remove it from
"                " buffers list
"                let thisbuf = winbufnr(win)
"                call remove(buffers, index(buffers, thisbuf))
"            endwhile
"        endwhile
"        " if there are any buffers left, delete them
"        if len(buffers)
"            execute 'bwipeout' join(buffers)
"        endif
"    finally
"        " go back to our original tab page
"        execute 'tabnext' currentTab
"    endtry
"endfunction

"function! CloseUnlistedBuffers()
"    redir => buffersoutput
"    buffers!
"    redir END
"
"    let buflist = split(buffersoutput,"\n")
"
"    let i = 0
"    let j = 0
"
"    " Close buffers that not unlisted and has [] in their names"
"    while j < len(buflist)
"        let IsGarbage = match(buflist[j], "[")
"        if IsGarbage != -1
"            exe 'bwipeout! ' . buflist[j][:2]
"        endif
"        let j = j + 1
"    endwhile
"
"    " Close unlisted buffers
"    let unlisted_buffer = filter(buflist, "v:val[3] == 'u'")
"    let length = len(unlisted_buffer)
"    while i < length
"        exe 'bwipeout ' . unlisted_buffer[i][:2]
"        let i = i + 1
"    endwhile
"    "NERDTreeToggle
"    wincmd l
"endfunction



" " Insert new line
" nnoremap <A-ENTER> O<Esc>
" nnoremap <ENTER> o<Esc>

" move selected lines down one line
" xnoremap <C-A-down> :m'>+<CR>gv=gv
" move selected lines up one line
" xnoremap <C-A-up>  :m-2<CR>gv=gv

"function! GoToLeftWindow()
"    let current_buffer_to_close=@%
"    if current_buffer_to_close == "NERD_tree_1"
"        echo "Can't go to left Window. You are in NERDTree!"
"    else
"        execute ":bprevious"
"    endif
"endfunction
"
"function! GoToRightWindow()
"    let current_buffer_to_close=@%
"    if current_buffer_to_close == "NERD_tree_1"
"        echo "Can't go to right window. You are in NERDTree!"
"    else
"        execute ":bnext"
"    endif
"endfunction
