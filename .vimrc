if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))


NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'linux' : 'make',
      \    },
      \ }
NeoBundle 'Quramy/tsuquyomi'
NeoBundle 'jason0x43/vim-js-indent'
NeoBundle 'scrooloose/nerdtree'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

filetype on
set noshowmode
set noswapfile
set relativenumber number
set tabstop=2 shiftwidth=2 expandtab
set conceallevel=0

let g:typescript_opfirst='\%([<>=,?^%|*/&]\|\([-:+]\)\1\@!\|!=\|in\%(stanceof\)\=\>\)'
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd FileType typescript :set makeprg=tsc
