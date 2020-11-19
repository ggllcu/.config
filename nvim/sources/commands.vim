lua require'lspconfig'.tsserver.setup{}
autocmd BufEnter * lua require'completion'.on_attach()
