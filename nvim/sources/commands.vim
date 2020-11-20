lua require'lspconfig'.html.setup{}
lua require'lspconfig'.intelephense.setup{}
lua require'lspconfig'.vuels.setup{}
lua require'lspconfig'.tsserver.setup{}

autocmd BufEnter * lua require'completion'.on_attach()
