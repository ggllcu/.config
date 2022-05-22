-- Vim Plug
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug('nvim-lua/popup.nvim') -- required by telescope

Plug('nvim-lua/plenary.nvim') -- required by telescope
Plug('nvim-telescope/telescope.nvim')
Plug('nvim-telescope/telescope-fzy-native.nvim')

Plug('nvim-treesitter/nvim-treesitter')
Plug('nvim-treesitter/playground')

-- Plug('mhartington/formatter.nvim')

Plug('neovim/nvim-lspconfig')

Plug('hrsh7th/cmp-nvim-lsp' )
Plug('hrsh7th/cmp-nvim-lua' )
Plug('hrsh7th/cmp-buffer' )
Plug('hrsh7th/cmp-path' )
Plug('hrsh7th/nvim-cmp' )

Plug('onsails/lspkind-nvim' )

Plug('hoob3rt/lualine.nvim')

Plug('kyazdani42/nvim-web-devicons')  -- for file icons
Plug('kyazdani42/nvim-tree.lua')

Plug('tpope/vim-surround')
Plug('mattn/emmet-vim')
-- Plug('mhartington/oceanic-next')
Plug('EdenEast/nightfox.nvim')

Plug('jiangmiao/auto-pairs')
Plug('ray-x/lsp_signature.nvim')

Plug('akinsho/bufferline.nvim')

-- Lateral window for register
-- Plug('junegunn/vim-peekaboo')

Plug('vimwiki/vimwiki')

Plug('numToStr/Comment.nvim')

Plug('nvim-telescope/telescope-file-browser.nvim')

Plug('folke/which-key.nvim')

Plug('lukas-reineke/indent-blankline.nvim')

Plug('catppuccin/nvim')
-- Plug('morhetz/gruvbox')

-- Plug 'tjdevries/colorbuddy.vim'
-- Plug 'tjdevries/gruvbuddy.nvim'

vim.call('plug#end')

-- Set neovim settings
local set = vim.opt

-- Set the behavior of tab
set.expandtab = true
set.shiftwidth = 2
set.softtabstop = 2
set.smartindent = true

-- Set line numbers
set.relativenumber = true
set.nu = true

-- Ring the bell (beep or screen flash) f
set.errorbells = false

-- Set incremental search
set.incsearch = true

-- Search also for capital match
set.smartcase = true

-- Remove Search Highlight
set.hlsearch = true

-- Set Scroll Offset
set.scrolloff = 8

-- Always show SignColumn
set.signcolumn = "yes"

-- Set options for Ins completion in Inse
set.completeopt = "menu,menuone,noselect"

-- Highlight cursorline
set.cursorline = true

-- Set terminal colors
set.termguicolors = true

-- Set colorscheme
vim.cmd[[
colorscheme catppuccin

hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
]]

-- Use space as a the leader key
vim.g.mapleader = ' '

-- Use comma as a the leader key for emmet
vim.g.user_emmet_leader_key = ','
vim.g.user_emmet_mode = 'a'


require("lg")
vim.cmd 'source ~/.config/nvim/lua/lg/keymaps.vim'
