set path+=**
set wildmenu
set nu rnu
set cursorline
" set cursorcolumn
set shiftwidth=4 " Set shift width to 4 spaces.
set tabstop=4 " Set tab width to 4 columns.
set expandtab " Use space characters instead of tabs.
set smartcase
set mousemodel=extend
set completeopt=menu,menuone,noselect
set hidden

filetype plugin on
filetype indent on
syntax on

colorscheme molokai
hi Normal guibg=NONE ctermbg=NONE
set termguicolors

let mapleader = " " " map leader to Space

let g:vimwiki_list = [{'syntax': 'markdown','ext': '.md'}]
let g:vimwiki_ext2syntax = {'md': 'markdown', 'markdown': 'markdown', '.mdown': 'markdown'}
let g:vimwiki_markdown_link_ext = 1

let g:taskwiki_markup_syntax = 'markdown'
let g:markdown_folding = 1

" Neovim only
set laststatus=3
set winbar=%=%m\ %f

lua require('plugins')
lua require('init')
