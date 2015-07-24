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
Plugin 'Shougo/neocomplete.vim'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'ivalkeen/vim-ctrlp-tjump'
Plugin 'sgur/ctrlp-extensions.vim'
Plugin 'bling/vim-airline'
Plugin 'Raimondi/delimitMate'
Plugin 'majutsushi/tagbar'
Plugin 'junegunn/vim-easy-align'
Plugin 'scrooloose/nerdtree'
Plugin 'nsf/gocode', {'rtp': 'vim/'}

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

" incsearch plugin {
hi search ctermfg=red ctermbg=yellow
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
"}

" neocomplete plugin {
let g:neocomplete#sources#omni#functions = {'go': 'go#complete#Complete'}
autocmd FileType go setlocal omnifunc=gocomplete#CompleteTags
"}




set wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip


set completeopt-=preview
set completeopt+=longest
set wildmode=longest,list



autocmd BufRead,BufNewFile *.go syntax on
autocmd BufRead,BufNewFile *.go set ai
" autocmd FileType go runtime! autoload/gocomplete.vim
au BufRead,BufNewFile *.go set filetype=go
" set the autocomplete when loading a go file
autocmd FileType go set omnifunc=gocomplete#Complete




autocmd BufEnter * silent! lcd %:p:h



" open Godoc under cursor
nnoremap <Leader>h :GoDoc <C-r><C-w> <CR>



" CTRLP Funky
let g:ctrlp_extensions = ['funky']
nnoremap <Leader>fu :CtrlPFunky<CR>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<CR>

" Ctrlp settings {
let g:ctrlp_map = '<c-o>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr|svn)($|[/\\])|__init__\.py'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_by_filename = 0
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0

" Neocomplete config
" Launches neocomplete automatically on vim startup.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Use camel case completion.
let g:neocomplete#enable_camel_case_completion = 0
" Sets minimum char length of syntax keyword.
let g:neocomplete#min_syntax_length = 3
" buffer file name pattern that locks neocomplete. e.g. ku.vim or fuzzyfinder
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 1

"delimitMate settings
let g:delimitMate_expand_cr=1
let g:delimitMate_expand_space=1

"delimitMate and neocomplete mapping to work on enter
imap <expr> <CR> pumvisible() ? neocomplete#close_popup() : '<Plug>delimitMateCR'




"UltiSnips split vertical and snippets directory {
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetDirectories= ['bundle/ultisnips/UltiSnips']
"}




" Colors config for EasyMotion {
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment
"}




" Supertab {
let g:SuperTabDefaultCompletionType = "context"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
"}




" Syntastic options {
let g:syntastic_always_populate_loc_list=1
"}



" configuration airline bar {
let g:airline#extensions#syntastic#enable=1
let g:airline#extensions#branch#enable=1
let g:airline#extensions#modified#enable=1
let g:airline#extensions#paste#enable=1
let g:airline#extensions#whitespace#enable=1
"}




" Tagbar Go {
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
"}

nmap <F8> :TagbarToggle<CR>


map <C-n> :NERDTreeToggle<CR>


" vim-easy-align {
" For visual mode (e.g. vip<Enter>)
vmap <Enter>   <Plug>(EasyAlign)

" For normal mode, with Vim movement (e.g. <Leader>aip)
nmap <Leader>a <Plug>(EasyAlign)

" Repeat alignment in visual mode with . key
vmap . <Plug>(EasyAlignRepeat)
" }
