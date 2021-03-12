set tabstop=4 softtabstop=4 
set shiftwidth=4
set expandtab
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

call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

colorscheme gruvbox
highlight Normal guibg=none
highlight Normal ctermbg=none
highlight NonText ctermbg=none

let mapleader = " "

" Telescope
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <Leader>gf :lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>ff :lua require('telescope.builtin').find_files()<CR>

" LSP
lua << EOF
require'lspconfig'.html.setup{}
require'lspconfig'.intelephense.setup{}
require'lspconfig'.vuels.setup{}
EOF

" Treesitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true
    },
}
EOF

" Nvim tree
nnoremap <leader>tt :NvimTreeToggle<CR>
nnoremap <leader>tr :NvimTreeRefresh<CR>
nnoremap <leader>tn :NvimTreeFindFile<CR>
" NvimTreeOpen and NvimTreeClose are also available if you need them
