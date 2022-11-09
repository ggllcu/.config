set path+=**
set wildignore+=*/node_modules/*
set wildignore+=*/.git/*
set wildignore+=*/vendor/*
set wildignore+=*/deps/*
set wildmenu
set nu rnu
set cursorline
set cursorcolumn
set shiftwidth=4 " Set shift width to 4 spaces.
set tabstop=4 " Set tab width to 4 columns.
set expandtab " Use space characters instead of tabs.
set smartcase
set mousemodel=extend
set completeopt=menu,menuone,noselect
set hidden
set splitbelow splitright

filetype plugin on
filetype indent on
syntax on

set termguicolors

let mapleader = " " " map leader to Space

" Window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

noremap x "_x " do not yank with x
noremap r "_r " do not yank with r
noremap + <C-a> " increment
noremap - <C-x> " decrement

nnoremap <leader>h :split<Space>
nnoremap <leader>v :vsplit<Space>

nnoremap <esc> :noh<CR><esc>

let g:vimwiki_list = [{'syntax': 'markdown','ext': '.md'}]
let g:vimwiki_ext2syntax = {'md': 'markdown', 'markdown': 'markdown', '.mdown': 'markdown'}
let g:vimwiki_markdown_link_ext = 1

let g:taskwiki_markup_syntax = 'markdown'
let g:markdown_folding = 1

let g:minimap_width = 10
let g:minimap_auto_start = 0
let g:minimap_auto_start_win_enter = 1

nnoremap <leader>mm :MinimapToggle<CR>

" Neovim only
set laststatus=3
set winbar=%=%m\ %f

lua require('plugins')
lua require('init')

colorscheme carbonfox

highlight Normal ctermbg=NONE guibg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
