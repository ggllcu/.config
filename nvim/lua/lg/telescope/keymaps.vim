" Telescope
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <Leader>gf :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>fg :lua require('telescope.builtin').live_grep()<cr>
nnoremap <Leader>ff :lua require('telescope.builtin').find_files()<CR>
nnoremap <Leader>vb :lua require('telescope.builtin').buffers()<CR>
nnoremap <Leader>fb :lua require('telescope.builtin').file_browser()<CR>
nnoremap <leader>vrc :lua require('lg.telescope').search_dotfiles()<CR>