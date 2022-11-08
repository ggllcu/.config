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
require('aerial').setup({
    vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle!<CR>'),

    backends = { "treesitter", "lsp", "markdown"},
    layout = {
        default_direction = "prefer_left",
        max_width = { 60, 0.3 },
        placement = "window",
        width = 40
    },
    filter_kind = {
    "Class",
    "Constructor",
    "Enum",
    "Function",
    "Interface",
    "Module",
    "Method",
    "Struct",
  },
})
require'lspconfig'.sumneko_lua.setup{}
require('gitsigns').setup {}
require("which-key").setup {}
require('leap').add_default_mappings()
require("symbols-outline").setup()
