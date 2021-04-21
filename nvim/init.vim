set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent

set exrc
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set incsearch
set scrolloff=8
set noshowmode
set signcolumn=yes

set cmdheight=2

set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/completion-nvim'
" Collection of common configurations for the Nvim LSP client
Plug 'neovim/nvim-lspconfig'
" Extensions to built-in LSP, for example, providing type inlay hints
Plug 'nvim-lua/lsp_extensions.nvim'
" Autocompletion framework for built-in LSP
Plug 'nvim-lua/completion-nvim'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'
Plug 'gruvbox-community/gruvbox'
Plug 'maxmellon/vim-jsx-pretty'                             " JSX syntax
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'sbdchd/neoformat'
" Plug 'rstacruz/vim-closer'
" Plug 'tmsvg/pear-tree'
Plug 'leafOfTree/vim-vue-plugin'
call plug#end()

lua require("gu")

" colorscheme one
" set background=dark
" let g:one_allow_italics = 1
" let g:airline_theme='one'

syntax on
filetype plugin indent on
set t_Co=256
set cursorline
colorscheme gruvbox
let g:airline_theme='gruvbox'
hi Normal guibg=NONE ctermbg=NONE

let mapleader = " "

" QuickList
nnoremap <C-k> :cnext<CR>zz
nnoremap <C-j> :cprev<CR>zz
nnoremap <leader>k :lnext<CR>zz
nnoremap <leader>j :lprev<CR>zz
"Global list
nnoremap <C-q> :call ToggleQFList(1)<CR> 
nnoremap <leader>q :call ToggleQFList(0)<CR>

" Telescope
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <Leader>gf :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>fg :lua require('telescope.builtin').live_grep()<cr>
nnoremap <Leader>ff :lua require('telescope.builtin').find_files()<CR>
nnoremap <Leader>vb :lua require('telescope.builtin').buffers()<CR>
nnoremap <Leader>fb :lua require('telescope.builtin').file_browser()<CR>
nnoremap <leader>vrc :lua require('gu.telescope').search_dotfiles()<CR>

" Nvim tree
nnoremap <leader>tt :NvimTreeToggle<CR>
nnoremap <leader>tr :NvimTreeRefresh<CR>
nnoremap <leader>tn :NvimTreeFindFile<CR>
let g:nvim_tree_follow = 1
" NvimTreeOpen and NvimTreeClose are also available if you need them

" Emmmet
let g:user_emmet_leader_key=','

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" use <Tab> as trigger keys
imap <Tab> <Plug>(completion_smart_tab)
imap <S-Tab> <Plug>(completion_smart_s_tab)
