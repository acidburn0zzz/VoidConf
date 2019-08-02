"--------------------=[ General ]=--------------------"
" By default timeoutlen is 1000 ms
set timeoutlen=300
" Define prefix dictionary
let g:which_key_map =  {}

call which_key#register(',', "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey ','<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual ','<CR>

nnoremap <localleader> :<c-u>WhichKey  ','<CR>
vnoremap <localleader> :<c-u>WhichKeyVisual  ','<CR>

autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
                        \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

"------------------=[ Mappings ]=-----------------------------"
let g:which_key_map.g = {
                        \ 'name' : 'General' ,
                        \ 'c' : ['d'            , 'Cut']     ,
                        \ 'ch' : ['changes'            , 'Changes list']     ,
                        \ 'f' : ['FindWord()'            , 'Find Word']     ,
                        \ 'j' : ['GotoJump()'            , 'Jump List']     ,
                        \ 'l' : ['lopen'            , 'Open LocationList']    ,
                        \ 'lf' : [':set formatoptions?\<cr>'            , 'List formatoptions']    ,
                        \ 'lc' : ['command'            , 'List All commands']    ,
                        \ 'lp' : [':set runtimepath?'            , 'List paths']    ,
                        \ 'ls' : ['scriptnames'            , 'List Scripts']    ,
                        \ 'o' : ['e .'        , 'Open file']     ,
                        \ 'ov' : ['e $MYVIMRC'   , 'Open vimrc']     ,
                        \ 'oq' : ['copen'        , 'Open Quick-Fix Menu']     ,
                        \ 'p' : [':pwd'            , 'PWD']    ,
                        \ 'r' : ['reg'   , 'Registers Contents']     ,
                        \ 's' : ['w'            , 'Save']    ,
                        \ 'sa' : ['GVgg'        , 'Select whole file']     ,
                        \ 't' : [':!tree'            , 'Show Directory Tree']    ,
                        \ 'st' : [':set noet|retab!<cr>'            , 'Space to Tab']    ,
                        \ 'ts' : [':set et|retab\<cr>'            , 'Tab to space']    ,
                        \ }

let g:which_key_map.b = {
                        \ 'name' : 'Buffers' ,
                        \ 'd' : ['bd'        , 'delete-buffer']   ,
                        \ 'f' : ['bfirst'    , 'first-buffer']    ,
                        \ 'l' : ['blast'     , 'last-buffer']     ,
                        \ 'n' : ['bnext'     , 'next-buffer']     ,
                        \ 'p' : ['bprevious' , 'previous-buffer'] ,
                        \ }

let g:which_key_map.t = {
                        \ 'name' : 'Tabs' ,
                        \ 'n' : ['tabnew'   , 'Open new tab']     ,
                        \ }

let g:which_key_map['w'] = {
                        \ 'name' : 'Windows' ,
                        \ 'w' : ['<C-W>w'     , 'other-window']          ,
                        \ 'd' : ['<C-W>c'     , 'delete-window']         ,
                        \ '-' : ['<C-W>s'     , 'split-window-below']    ,
                        \ '|' : ['<C-W>v'     , 'split-window-right']    ,
                        \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
                        \ 'h' : ['<C-W>h'     , 'window-left']           ,
                        \ 'j' : ['<C-W>j'     , 'window-below']          ,
                        \ 'l' : ['<C-W>l'     , 'window-right']          ,
                        \ 'k' : ['<C-W>k'     , 'window-up']             ,
                        \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
                        \ 'J' : [':resize +5\<CR>'  , 'expand-window-below']   ,
                        \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
                        \ 'K' : [':resize -5\<CR>'  , 'expand-window-up']      ,
                        \ '=' : ['<C-W>='     , 'balance-window']        ,
                        \ 's' : ['<C-W>s'     , 'split-window-below']    ,
                        \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
                        \ }


let g:which_key_map.o = {
                        \ 'name' : 'Coc' ,
                        \ 'a' : ['<Plug>(coc-codeaction)'  , 'codeaction']     ,
                        \ 'as' : ['<Plug>(coc-codeaction-selected)' , 'codeaction-selected'] ,
                        \ 'c' : ['<Plug>(coc-command)'  , 'command']     ,
                        \ 'cs' : [':CocList commands\<CR>'  , 'commands']     ,
                        \ 'd' : ['<Plug>(coc-definition)'  , 'definition']     ,
                        \ 'ds' : ['<Plug>(coc-disable)'  , 'disable']     ,
                        \ 'dg' : [':CocList diagnostics\<CR>'  , 'diagnostics']     ,
                        \ 'e' : ['<Plug>(coc-enable)'  , 'enable']     ,
                        \ 'ex' : [':CocList extensions\<CR>'  , 'extensions']     ,
                        \ 'f' : ['<Plug>(coc-fix-current)'     , 'fix-current']     ,
                        \ 'fo' : ['<Plug>(coc-format-selected)'     , 'format-selected']     ,
                        \ 'g' : ['<Plug>(coc-config)'  , 'config']     ,
                        \ 'i' : ['<Plug>(coc-info)'  , 'info']     ,
                        \ 'im' : ['<Plug>(coc-implementation)'  , 'implementation']     ,
                        \ 'in' : ['<Plug>(coc-install)'  , 'install']     ,
                        \ 'l' : [':CocList\<CR>'  , 'list']     ,
                        \ 'o' : [':CocList outline'  , 'outline']     ,
                        \ 'r' : ['<Plug>(coc-rename)'    , 'rename']    ,
                        \ 'rf' : ['<Plug>(coc-references)'    , 'references']    ,
                        \ 't' : ['<Plug>(coc-type-definition)'  , 'type-definition']     ,
                        \ }

"---------------------=[ Garbages ]=----------------------"
" let g:which_key_map.f = { 'name' : '+file' }
" let g:which_key_map.f.s = 'save-file'
" nnoremap <silent> <leader>fd :e $MYVIMRC<CR>
" let g:which_key_map.f.d = 'open-vimrc'
" let g:mapleader = "\<Space>"
" let g:maplocalleader = ','
