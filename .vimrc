"
" Plugins
"
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/syntastic'
Plug 'valloric/youcompleteme'
Plug 'pangloss/vim-javascript'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'raimondi/delimitmate'
call plug#end()

"
" General
"
filetype plugin on
syntax on
syntax enable
colorscheme default
set background=dark
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
set shortmess=a
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

"
" Statusline
"
set statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

"
" Insert Mappings
"
imap jk <Esc>

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
" Syntastic
"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"
" Indent Guides
"
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
