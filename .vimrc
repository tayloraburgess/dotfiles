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
" Buffer Mappings
"
nnoremap <Leader>e :Explore<CR>
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

"
" Plugins
"
if !empty(glob('~/.vim/autoload/plug.vim'))
    call plug#begin('~/.vim/plugged')
    Plug 'valloric/youcompleteme'
    Plug 'pangloss/vim-javascript'
    Plug 'raimondi/delimitmate'
    Plug 'mxw/vim-jsx'
    Plug 'cakebaker/scss-syntax.vim'
    Plug 'elmcast/elm-vim'
    Plug 'kien/ctrlp.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-fugitive'
    Plug 'morhetz/gruvbox'
    call plug#end()
endif

runtime macros/matchit.vim

colorscheme gruvbox
set termguicolors

"
" elm-vim
"
let g:elm_setup_keybindings = 0

"
" vim-jsx
"
let g:jsx_ext_required = 0

"
" YouCompleteMe
"
let g:ycm_semantic_triggers = {
            \ 'elm' : ['.'],
            \}

"
" CtrlP
"
let g:ctrlp_working_path_mode = 'r'

"
" Airline
"
let g:airline_theme='distinguished'

"
" Autocmds
"
if has("autocmd")
    autocmd BufRead * normal zR
endif
