require "./lg.lsp"
require "./lg.telescope"
require "./lg.cmp"
require "./lg.treesitter"
require "./lg.saga"
require("mason").setup()
require('nvim_comment').setup()
require('lualine').setup { options = {
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
}}
require("symbols-outline").setup()
require("nvim-autopairs").setup {}
require('aerial').setup()
require'lspconfig'.sumneko_lua.setup{}
require('gitsigns').setup {}
require("which-key").setup {}
require('leap').add_default_mappings()
