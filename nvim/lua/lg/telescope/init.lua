local present, telescope = pcall(require, "telescope")

if not present then
    return
end


local options = {
    defaults = {
        prompt_prefix = "   ",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
            horizontal = {
                prompt_position = "top",
                preview_width = 0.55,
                results_width = 0.8,
            },
            vertical = {
                mirror = false,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
        },
        path_display = { "truncate" },
        winblend = 0,
        border = {},
        borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
        mappings = {
            n = { ["q"] = require("telescope.actions").close },
        },
    },
    pickers = {
        buffers = {
            mappings = {
                i = {
                    ["<c-d>"] = "delete_buffer",
                }
            }
        }
    }
}

telescope.setup(options)

require("telescope").load_extension "file_browser"

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


vim.api.nvim_set_keymap(
    "n",
    "<space>fb",
    ":Telescope file_browser grouped=true<CR>",
    { noremap = true }
)

vim.api.nvim_set_keymap(
    "n",
    "<space>fc",
    ":Telescope file_browser path=%:p:h<CR>",
    { noremap = true }
)
