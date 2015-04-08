" setup vundle {
set nocompatible
filetype off

let iCanHazVundle=1

if !filereadable(expand('~/.vim/bundle/vundle/README.md'))
  echo "Installing Vundle..."
  echo ""

  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle

  let iCanHazVundle=0
endif

set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" useful plugins
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'fatih/vim-go'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'tpope/vim-fugitive'

" color schemes
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-vividchalk'

call vundle#end()

if iCanHazVundle == 0
  echo "Installing Plugin..."
  echo ""

  :PluginInstall
endif
"}

" filetype config {
filetype plugin on
filetype indent on
"}

" misc stuff {
set nocompatible
set modeline
set history=1000
set backspace=indent,eol,start
set selection=inclusive
set completeopt=longest,menu,preview
set diffopt+=vertical
set autoread
"}

" tab related {
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab
set cindent
"}

" status related {
set ruler
set showcmd
set nonumber
set shortmess=aoOtTI
set laststatus=1
"}

" search related {
set hlsearch
set incsearch
set ignorecase
set smartcase
set scrolloff=3
set sidescrolloff=5
"}

" encoding related {
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set fileencodings=utf-8,latin1,default
"}

" bell related {
set noerrorbells
set vb t_vb=
"}

" backup related {
set nobackup
"}

" swap related {
set swapfile
"}

" grep related {
set grepprg=grep\ -nH\ $*
"}

" mouse related {
set mouse=a
"}

" folding related {
set foldcolumn=0
set foldmethod=indent
set foldnestmax=100
set nofoldenable
set foldlevel=1
"}

" coloring related {
set background=dark
set t_Co=256
"}

" show syntax {
syntax on
"}

" select scheme {
colorscheme vividchalk
"}

" folding mapping {
map <F5> zo
map <F6> zc
map <F7> zR
map <F8> zM
"}

" switch tabs {
map <F9> gT
map <F10> gt
"}

" past switch {
set pastetoggle=<F11>
"}
