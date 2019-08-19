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

" Langauge Server protocol(LSP)
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

" Languages
Plug 'dart-lang/dart-vim-plugin', { 'for': 'dart' }
Plug 'derekwyatt/vim-fswitch'

" Debugger
Plug 'huawenyu/neogdb.vim'

" Snippets
Plug 'SirVer/ultisnips' " Track the engine.
Plug 'honza/vim-snippets' " Snippets are separated from the engine. Add this if you want them:

" Sysncax checker
Plug 'vim-syntastic/syntastic'

" Show keymaps
Plug 'liuchengxu/vim-which-key'

" Run Async Tasks in vim
Plug 'skywind3000/asyncrun.vim'

" Git in Vim :)
Plug 'tpope/vim-fugitive'

" Sessions
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'

" Searching
Plug 'kien/ctrlp.vim'
Plug 'jceb/vim-orgmode'

" Automatically Pair paranthesis, brackets, etc..
Plug 'jiangmiao/auto-pairs'

" Latex
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

call plug#end()
colorscheme molokai

"Plug 'fannheyward/coc-texlab', {'do': 'yarn install --frozen-lockfile'}
"Plug 'junegunn/fzf'
"Plug '/usr/bin/fzf'
"Plug 'junegunn/fzf.vim'
"Plug 'mileszs/ack.vim'
"Plug 'LnL7/vim-nix'
"Plug 'Shougo/vimproc.vim', {'do' : 'make'}
"Plug 'idanarye/vim-vebugger'
"Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh \| UpdateRemotePlugins' }
