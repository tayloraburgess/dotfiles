"
" General
"
filetype plugin on
syntax on

set t_Co=256
set number
set showcmd
set nocompatible
set ruler
set laststatus=2
set showmode
set incsearch
set hlsearch
set ignorecase
set smartcase
set termguicolors
set directory^=$HOME/.vim/swap//
set wildignore+=*/node_modules/*,*/.git/*
colorscheme slate

runtime macros/matchit.vim

"
" Indent
"
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
if has ('autocmd')
    filetype plugin indent on
endif
