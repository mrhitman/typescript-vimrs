set number
filetype on
set noshowmode
set noswapfile
set relativenumber number
set hlsearch
set incsearch
set tabstop=2 shiftwidth=2 expandtab

syntax enable
set background=dark
autocmd vimenter * ++nested colorscheme gruvbox

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
let g:typescript_opfirst='\%([<>=,?^%|*/&]\|\([-:+]\)\1\@!\|!=\|in\%(stanceof\)\=\>\)'
setlocal indentkeys+=0
autocmd FileType typescript :set makeprg=tsc

map <C-n> :NERDTreeToggle<CR>

call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'tpope/vim-fugitive'

  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'

  Plug 'fatih/vim-go'

  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'micha/vim-colors-solarized'
  Plug 'morhetz/gruvbox'

  Plug 'kien/ctrlp.vim'
  Plug 'ajh17/vimcompletesme'
call plug#end()
