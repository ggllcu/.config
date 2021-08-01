set expandtab
set shiftwidth=4
set softtabstop=4
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

set cmdheight=1

set completeopt=menuone,noselect
" let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'glepnir/lspsaga.nvim'
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'
Plug 'mhartington/oceanic-next'
Plug 'jiangmiao/auto-pairs'
Plug 'ray-x/lsp_signature.nvim'
call plug#end()

lua require("lg")

filetype plugin indent on
set cursorline

" if (has("termguicolors"))
"  set termguicolors
" endif

set t_Co=256

" Theme
syntax enable
colorscheme OceanicNext

hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE

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
nnoremap <leader>vrc :lua require('lg.telescope').search_dotfiles()<CR>

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

