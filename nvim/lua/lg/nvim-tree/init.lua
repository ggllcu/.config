vim.g.nvim_tree_highlight_opened_files = 1

require'nvim-tree'.setup{
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
  view = {
    width = 60,
  }
}

