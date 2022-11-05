return require('packer').startup(function(use)
    use 'tpope/vim-fugitive'
    use 'tpope/vim-surround'
    use 'wbthomason/packer.nvim'
    use {'vimwiki/vimwiki', branch = 'dev'}

    -- Neovim only
    use 'nvim-lua/plenary.nvim' -- resources for other plugins
    use 'williamboman/mason.nvim'
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
    use 'EdenEast/nightfox.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'simrat39/symbols-outline.nvim'
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    use 'glepnir/lspsaga.nvim'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'MunifTanjim/prettier.nvim'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    -- use 'sumneko/lua-language-server'
    use 'folke/which-key.nvim'
    use 'lewis6991/gitsigns.nvim'
    use 'ggandor/leap.nvim'
    use 'ThePrimeagen/harpoon'
    use {
        'stevearc/aerial.nvim',
        config = function() require('aerial').setup() end
    }
end)
