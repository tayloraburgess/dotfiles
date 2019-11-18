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
colorscheme desert

runtime macros/matchit.vim

au BufEnter,BufRead *.ts,*.tsx set filetype=javascript


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

"
" Plugins
"
if !empty(glob('~/.vim/autoload/plug.vim'))
    call plug#begin('~/.vim/plugged')
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-fugitive'
    Plug 'mileszs/ack.vim'
    call plug#end()
endif


"
" ack
"
if executable('ag')
  let g:ackprg = 'ag --vimgrep --hidden --ignore .git'
endif

"
" CtrlP
"
let g:ctrlp_working_path_mode = 'r'

"
" Airline
"
let g:airline_theme='distinguished'
