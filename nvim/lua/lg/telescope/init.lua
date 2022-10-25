local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>FF', function() require("telescope.builtin").find_files { hidden = true, no_ignore = true } end, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>FW', function()
    require("telescope.builtin").live_grep {
        additional_args = function(args) return vim.list_extend(args, { "--hidden", "--no-ignore" }) end,
    }
end, {})
vim.keymap.set('n', '<leader>bb', builtin.buffers, {}) 
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})

-- require("telescope.builtin").live_grep {
--     additional_args = function(args) return vim.list_extend(args, { "--hidden", "--no-ignore" }) end,
-- }

require("telescope").load_extension "file_browser"

vim.api.nvim_set_keymap(
  "n",
  "<space>fb",
  ":Telescope file_browser <CR>",
  { noremap = true }
)
