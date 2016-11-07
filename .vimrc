"
" General
"
filetype plugin on
syntax on

if !empty(glob('~/.vim/colors/monokai.vim'))
    colorscheme monokai
else
    colorscheme default
    set background=dark
endif

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
set shortmess=a
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

"
" Insert Mode Cursor (iTerm2)
" 
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

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
" Plugins
"
if !empty(glob('~/.vim/autoload/plug.vim'))
    call plug#begin('~/.vim/plugged')
        Plug 'scrooloose/syntastic'
        Plug 'valloric/youcompleteme'
        Plug 'pangloss/vim-javascript'
        Plug 'raimondi/delimitmate'
    call plug#end()
endif

"
" Syntastic
"
if isdirectory($HOME . '/.vim/plugged/syntastic')
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
endif
