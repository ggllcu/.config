vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    filters = {
        dotfiles = true,
    },
    view = {
        float = {
            enable = true,
            open_win_config = {
                width = 60,
                height = 60,
            }
        }
    }

})
