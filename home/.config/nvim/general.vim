"---------------------------=[ General ]=------------------------------------"
set nowrap " Don't Wrap lines!
set mouse=a " Mouse Integration
set cindent " This turns on C style indentation
set t_Co=256 " makes Vim use 256 colors
set noswapfile " Avoid swap files
set autoindent " Automatic indentation
set smartindent " Smart indent
set showmatch " Show matching braces but not for too long
set number relativenumber " Display Relative line numbers
set history=1000 " Set history to 1000

" show spaces
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list
set undofile " Maintain undo history between sessions
set undodir=~/.config/nvim/undodir

" Show interesting stuff at the bottom of the window.
set showcmd
set ruler

" Open windows as split always in below or right
set splitbelow
set splitright

set path+=** " For clever completion with the :find command
"set autochdir                  " automatically change window's cwd to file's dir
set noautochdir                 " Don't change directory(it's important for build projects)
set autowrite
set expandtab                   " When expandtab is set, hitting Tab in insert mode will produce the appropriate number of spaces.
set tabstop=4                   " Set tabstop to tell vim how many columns a tab counts for. Linux kernel code expects each tab to be eight columns wide.

" Use incremental search, with highlighting, case-insensitive unless we actually type some mixed-case stuff.
set incsearch
set hlsearch                    " Highlight in search
set ignorecase
set smartcase

set hidden
set arabicshape!
set nocompatible            " Enter the current millenium " This changes the values of a LOT of options, enabling features which are not Vi compatible but really really nice
set laststatus=2            " This makes Vim show a status line even when only one window is shown
set shiftwidth=4            " Set shiftwidth to control how many columns text is indented with the reindent operations (<< and >>) and automatic C-style indentation.
set softtabstop=4           " Set softtabstop to control how many columns vim uses when you hit Tab in insert mode. If softtabstop is less than tabstop and expandtab is not set, vim will use a combination of tabs and spaces to make up the desired spacing. If softtabstop equals tabstop and expandtab is not set, vim will always use tabs. When expandtab is set, vim will always use the appropriate number of spaces.
set colorcolumn=80          " Draw a vertical line in column 80
set clipboard=unnamedplus
set shell=/bin/sh

" Better command-line completion, but don't show some stuff we don't care about.
set wildmenu                " Display all matching files when we tab complete
set wildmode=list:longest,full
set wildignore+=.DS_Store,Thumbs.db
set wildignore+=*.so,*.dll,*.exe,*.lib,*.pdb
set wildignore+=*.pyc,*.pyo
set wildignore+=*.swp"

" or you can do this
"set tabstop=4 shiftwidth=4 expandtab

" Enable relative/absolute line numbers
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

filetype on                 " Enable file type detection
syntax enable               " syntax highlighting
filetype plugin on          " This line enables loading the plugin files for specific file types
let mapleader = "," " change \ to ,
"let maplocalleader = " "
autocmd TermOpen * set bufhidden=hide "keep terminal open even if you leave it:)

" setlocal foldmethod=indent  " Set folding method
" set laststatus=2
"set rtp^=/usr/share/vim/vimfiles/
