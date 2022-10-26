require "./lg.lsp"
require "./lg.telescope"
require "./lg.cmp"
require "./lg.treesitter"
require('nvim_comment').setup()
require('monokai').setup { palette = require('monokai').pro }
require('lualine').setup { options = {
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
}}
-- vim.cmd[[colorscheme tokyonight-storm]]
-- require('monokai').setup { palette = require('monokai').pro }
-- require('onenord').setup()
-- require('onedark').setup {
--     style = 'warm'
-- }
-- require('onedark').load()
