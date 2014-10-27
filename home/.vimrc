filetype plugin on
filetype indent on

let use_xhtml=1
let html_use_css=1
let html_ignore_folding=1
let html_use_encoding="UTF-8"

set modeline

set shiftwidth=2
set tabstop=2
set expandtab
set smarttab

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

set nocompatible
set shortmess=aoOtTI
set viminfo='20,\"500,h
set history=100
set autoindent
set smartindent
set backspace=indent,eol,start
set selection=inclusive
set nonumber
set numberwidth=3
set ruler
set showcmd
set laststatus=1
set hlsearch
set incsearch
set ignorecase
set smartcase
set scrolloff=3
set sidescrolloff=5
set scrolljump=1
set completeopt=longest,menu,preview
set diffopt+=vertical
set background=dark

setlocal spelllang=en

syntax on
colorscheme molokai

map <F5> zo
map <F6> zc
map <F7> zR
map <F8> zM
map <A-Right> gt
map <A-Left> gT

set pastetoggle=<F11>
set foldlevel=1000
set fileencodings=utf-8,latin1,default
set nobackup
set swapfile
set grepprg=grep\ -nH\ $*
