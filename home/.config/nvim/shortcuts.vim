"-------------------------------------[ Importantn Hints ]---------------------------------------------------------------------"
" 1. o : insert new line below current line.
" 2. O : insert new line above current line.
" 3. CTRL-O : Go to Older cursor position in jump list.
" 4. CTRL-I : Go to Newer cursor position in jump list.
" 5. g; : Go to older position in change list.
" 6. g, : Go to newer position in change list.
" 7. diw: delete current word
" 8. ciw : change current word
" 9. <S-c> : Replace from current postion to end of line.
" 10. '. : Jump to last modification line.
" 11. `. : Jump to exact spot in last modification line
" 12. To increase a window to its maximum height, use Ctrl-w _.
" 13. To increase a window to its maximum width, use Ctrl-w |.
" 14. To full scree the current buffer: Ctrl-w-o
" 15. For a split window: You can use Ctrl-w + and Ctrl-w - to resize the height of the current window by a single row.
" 16. For a vsplit window: You can use Ctrl-w > and Ctrl-w < to resize the width of the current window by a single column.
" 17. Additionally, these key combinations accept a count prefix so that you can change the window size in larger steps. [e.g. Ctrl-w 10 + increases the window size by 10 lines]
" 18. To resize all windows to equal dimensions based on their splits, you can use Ctrl-w =.
"--------------------------------------------------------------------------------------------------------------------------------------"
"
"--------------------------------=[ Events ]=-------------------------------------------"
autocmd TermClose * :call TerminalClosed()
function! TerminalClosed()
    call CloseCurrentBuffer()
endfunction

"--------------------------------=[ <F> keys ]=-------------------------------------------"
" Notice that you can only bind: t, y, f, m, n charachters!
" <F1> For help and <F11> Reserved by i3 for fullscreen the window
nnoremap <F2>           :buffers!<CR>:buffer<Space>
noremap  <silent> <F3>  :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>+
noremap  <silent> <F4>  :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>+
nnoremap <silent> <F12> :set hlsearch!<CR>

"----------------------=[ Move Block of items visually ]=-----------------------"
" Remove any introduced trailing whitespace after moving...
let g:DVB_TrimWS = 1
noremap <silent> <C-A-up>   :call <SID>swap_up()<CR>
noremap <silent> <C-A-down> :call <SID>swap_down()<CR>
vmap  <expr> <C-A-right>    DVB_Drag('right')
vmap  <expr> <C-A-left>     DVB_Drag('left')
vmap  <expr>  D             DVB_Duplicate()

"--------------------------=[ General Actions ]=-----------------------------------------"
" Select All
nnoremap <silent> <C-a> GVgg
nnoremap <silent> <C-f> :FZF<CR>
" Save File (normal-mode)
nnoremap <silent> <C-s> :w <Enter>
nnoremap <silent> <C-A-s> :wa <Enter>

" Save File (insert-mode)
inoremap <silent> <C-s> <C-O>:w <CR>
inoremap <silent> <C-A-s> <C-O>:wa <CR>

" Open new tab
nnoremap <silent> <C-t> :tabnew <cr>
" Paste in insert-mode
inoremap <silent> <C-v> <C-O>p
" Quit from vim
nnoremap <silent> <C-q> :qa<CR>
" Cut
nnoremap <silent> <c-x> d

" Duplicate Line
nnoremap <silent> <A-d> Yp
" Open File (Opens current folder to browse)
nnoremap <silent> <A-o> :e . <Enter>
" Quit from current buffer and switch to Previouse one
nnoremap <silent> <A-q> :bw<CR>
" Close All unlisted Buffers
nnoremap <silent> <S-q> :BOnly<CR>

"-----------------------------=[ QuickFix actions ]=--------------------------------------"
"Display the Next/Previouse error in the list that includes a file name.
nnoremap <C-n> :cnext<CR>
nnoremap <C-p> :cprevious<CR>

"--------------------------=[ Find and Replace ]=----------------------------------------"
" Find with regex
nnoremap ? /\c
" Replace All
nnoremap <A-h> :%s/
" Search
nnoremap <A-f> :call FindWord()<CR>
" Search and Replace
nnoremap <expr><A-r> ":%s/".expand("<cword>")."//gc<left><left><left>"
nnoremap <expr><A-a> ":Ack ".expand("<cword>")
"Search current word in all files
nnoremap <A-w> :vimgrep <cword> **/*.*<CR>
" List jumps for selection.
nnoremap <A-j> :call GotoJump()<CR>

"-----------------------=[ Switch between buffers ]=--------------------------------------"
nnoremap <silent> <C-Left>  :bprevious<cr>
nnoremap <silent> <C-Right> :bnext<cr>

"--------------------------=[ Switch between windows ]=-----------------------------------"
nnoremap <silent> <A-Up>    :wincmd k<CR>
nnoremap <silent> <A-Down>  :wincmd j<CR>
nnoremap <silent> <A-Left>  :wincmd h<CR>
nnoremap <silent> <A-Right> :wincmd l<CR>

"--------------------------------=[ Comments ]=-------------------------------------------"
autocmd FileType el let b:comment_leader = ';; '
autocmd FileType vim let b:comment_leader = '" '
autocmd FileType haskell let b:comment_leader = '-- '
autocmd FileType shell,sh,ruby,python   let b:comment_leader = '# '
autocmd FileType c,cpp,java,go,rust,dart let b:comment_leader = '// '

"-----------------------------=[ Selection ]=---------------------------------------------"
" Select (HTML, XML etc.) tag (inclusive)
map <S-t> vat
" Select (HTML, XML etc.) tag (exclusive)
map <S-T> vit
" Select text between {}
map <S-{> vi{
" Select text between ()
map <S-(> vi(
" Select text between []
map <S-[> vi[
" Select text between <>
map <S-<> vi<

"------------------------------=[ Remap section ]=----------------------------------------"
nnoremap ; :
vnoremap ; :
vnoremap : ;


" Switch to English - mapping
nnoremap <Leader>e :<C-U>call EngType()<CR>
" Switch to Arabic - mapping
nnoremap <Leader>a :<C-U>call AraType()<CR>

" Switch to English - function
function! EngType()
" To switch back from Arabic
  set keymap= " Restore default (US) keyboard layout
  set norightleft
endfunction

" Switch to Arabic - function
function! AraType()
    set keymap=arabic-pc "Modified keymap. File in ~/.vim/keymap/
    set rightleft
endfunction

"-------------------------------=[ Other ]=-----------------------------------------------"
set pastetoggle=<A-p>   " PasteMode disable auto-indent and bracket auto-compelation and it helps you to paste code from elsewhere.
" Spell cheking
noremap  <A-s> :setlocal spell! spelllang=en_us<CR>

"-------------------------------=[ functions ]=-------------------------------------------"
"****** Find a word in all directories ******"
function! FindWord()
    "     noremap <leader>fw :vimgrep <cword> **/*.*<CR>
    let word = input('Word To Search: ')
    if word != ''
        execute ":vimgrep ".word." **/*.*"
    endif
endfunction

"***** List all jumps locations ******"
function! GotoJump()
    jumps
    let j = input("Please select your jump: ")
    if j != ''
        let pattern = '\v\c^\+'
        if j =~ pattern
            let j = substitute(j, pattern, '', 'g')
            execute "normal " . j . "\<c-i>"
        else
            execute "normal " . j . "\<c-o>"
        endif
    endif
endfunction

function! s:swap_lines(n1, n2)
    let line1 = getline(a:n1)
    let line2 = getline(a:n2)
    call setline(a:n1, line2)
    call setline(a:n2, line1)
endfunction

function! s:swap_up()
    let n = line('.')
    if n == 1
        return
    endif

    call s:swap_lines(n, n - 1)
    exec n - 1
endfunction

function! s:swap_down()
    let n = line('.')
    if n == line('$')
        return
    endif

    call s:swap_lines(n, n + 1)
    exec n + 1
endfunction
