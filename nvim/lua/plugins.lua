return require('packer').startup(function(use)
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  use 'wbthomason/packer.nvim'
  use {'vimwiki/vimwiki', branch = 'dev'}

  -- Neovim only
  use 'nvim-lua/plenary.nvim' -- resources for other plugins
  use 'neovim/nvim-lspconfig'
  use 'ryanoasis/vim-devicons'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'michaeljsmith/vim-indent-object'
  use 'onsails/lspkind.nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/nvim-cmp'
  use 'terrortylor/nvim-comment'
  -- use 'rmehri01/onenord.nvim'
  -- use 'navarasu/onedark.nvim'
  -- use 'folke/tokyonight.nvim'
  use 'tanvirtin/monokai.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'simrat39/symbols-outline.nvim'
  end)
