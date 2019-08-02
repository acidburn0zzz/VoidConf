"************************** Garbage section **************************
":set ignorecase " Ignore case in search
":colorscheme 'plugged/molokai/colors/molokai' "Set colorScheme

" Auto-Complete for ( , " , ' , [ , {
":inoremap        (  ()<Left>
":inoremap        "  ""<Left>
":inoremap        `  ``<Left>
":inoremap        '  ''<Left>
":inoremap        [  []<Left>
":inoremap      {  {}<Left>
":

" Python
" :noremap <silent> #5 :!xterm -hold -e './%' <CR> <CR>" execute bash & python script with F5
" :noremap <silent> #5 :!konsole --hold -e 'python ./%' <CR> <CR>" execute python script with F5

"set clipboard=unnamed
"let @+=@"
"let @*=@"
"
"     exe 'normal! "sx'
"     redir => buffersoutput
"     echo @s
"     redir END
"     exe "normal! qfx"
"     let lines_to_be_delete = end_line - start_line


