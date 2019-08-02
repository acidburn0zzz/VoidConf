" "---------------------=[ General ]=--------------------"
" " Use <c-space> for trigger completion
" inoremap <expr> <c-space> coc#refresh()
" " Highlight symbol under cursor on CursorHold
" autocmd CursorHold * silent call CocActionAsync('highlight')
" " Close preview window when completion is done
" autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
"
" " Use <enter> to confirm complete
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"
" " Use <Tab> and <S-Tab> for navigate completion list
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"
" " Use K for show documentation in preview window
" nnoremap <silent> K :call <SID>show_documentation()<CR>
"
" " Use `[c` and `]c` for navigate diagnostics
" nmap <silent> [c <Plug>(coc-diagnostic-prev)
" nmap <silent> ]c <Plug>(coc-diagnostic-next)
"
" augroup mygroup
"   autocmd!
"   " Setup formatexpr specified filetype(s).
"   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"   " Update signature help on jump placeholder
"   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" augroup end
"
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
"
" " Add diagnostic info for https://github.com/itchyny/lightline.vim
" let g:lightline = {
"       \ 'colorscheme': 'wombat',
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
"       \ },
"       \ 'component_function': {
"       \   'cocstatus': 'coc#status'
"       \ },
"       \ }
"
" "---------------------=[ Shortcuts for denite interface ]=-----------------"
" " Show extension list
" nnoremap <silent> <space>e  :<C-u>Denite coc-extension<cr>
" " Show symbols of current buffer
" nnoremap <silent> <space>o  :<C-u>Denite coc-symbols<cr>
" " Search symbols of current workspace
" nnoremap <silent> <space>t  :<C-u>Denite coc-workspace<cr>
" " Show diagnostics of current workspace
" nnoremap <silent> <space>a  :<C-u>Denite coc-diagnostic<cr>
" " Show available commands
" nnoremap <silent> <space>c  :<C-u>Denite coc-command<cr>
" " Show available services
" nnoremap <silent> <space>s  :<C-u>Denite coc-service<cr>
" " Show links of current buffer
" nnoremap <silent> <space>l  :<C-u>Denite coc-link<cr>
"
" "----------------------[ Functions ]=--------------------"
" " use <tab> for trigger completion and navigate to next complete item
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~ '\s'
" endfunction
"
" function! s:show_documentation()
"   if &filetype == 'vim'
"     execute 'h '.expand('<cword>')
"   else
"     call CocAction('doHover')
"   endif
" endfunction
"
" "----------------------[ Garbages ]=-----------------------"
" " Snippets
" " inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"
" " inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<TAB>"
" " let g:coc_snippet_next = '<TAB>'
" " let g:coc_snippet_prev = '<S-TAB>'
" " To force coc select complete item before confirm, use
" " inoremap <expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"<Paste>
" Highlight symbol under cursor on CursorHold
" autocmd CursorHold * silent call CocActionAsync('highlight')
