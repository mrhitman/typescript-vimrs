call plug#begin('~/.vim/plugged')
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'preservim/nerdtree'
  Plug 'easymotion/vim-easymotion'

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/playground'

  " Theme
  Plug 'morhetz/gruvbox'

  " LSP
  Plug 'neovim/nvim-lsp'
  Plug 'neoclide/coc.nvim'
call plug#end()

" Find files using Telescope command-line sugar.
map <C-p> :Telescope find_files<CR>
map <C-b> :Telescope buffers<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-x> :! node %<CR>

nmap <C-i> :CocCommand tsserver.organizeImports<cr>
nmap <C-q>  <Plug>(coc-fix-current)
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)

filetype on
set noshowmode
set noswapfile
set number
set hlsearch
set incsearch
set tabstop=2 shiftwidth=2 expandtab
set nobackup
set nowritebackup
set updatetime=300

syntax enable
colorscheme gruvbox
