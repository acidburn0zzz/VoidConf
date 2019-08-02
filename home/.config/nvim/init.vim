"--------------------------=[ Load configurations ]=-------------------------------"
"            tip: all files in plugin/ directory will load automatically :)        "
"----------------------------------------------------------------------------------"
runtime ./general.vim
runtime ./symbols.vim
runtime ./shortcuts.vim
runtime functions/function_uncap_ex.vim
runtime functions/function_strip_trailing_whitespace.vim

"-------------------------=[ VIM-Plug ]=--------------------------------------"
call plug#begin('~/.config/nvim/plugged')

" Themes and Color-Shcemes
Plug 'tomasr/molokai'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Plug 'fannheyward/coc-texlab', {'do': 'yarn install --frozen-lockfile'}

" Sessions
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'

" Local bins
Plug '/usr/bin/fzf'
Plug 'LnL7/vim-nix'
Plug 'jceb/vim-orgmode'

Plug 'mileszs/ack.vim'

" Show keymaps
Plug 'liuchengxu/vim-which-key'

" Git in Vim :)
Plug 'tpope/vim-fugitive'

" Sysncax checker
Plug 'vim-syntastic/syntastic'

" Run Async Tasks in vim
Plug 'skywind3000/asyncrun.vim'

" Languages
Plug 'dart-lang/dart-vim-plugin', { 'for': 'dart' }
Plug 'derekwyatt/vim-fswitch'

" Langauge Server protocol(LSP)
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

" Snippets
Plug 'SirVer/ultisnips' " Track the engine.
Plug 'honza/vim-snippets' " Snippets are separated from the engine. Add this if you want them:

" Automatically Pair paranthesis, brackets, etc..
Plug 'jiangmiao/auto-pairs'

" Debugger
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'idanarye/vim-vebugger'

call plug#end()
colorscheme molokai
