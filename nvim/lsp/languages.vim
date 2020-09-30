:lua << END
  require'nvim_lsp'.html.setup{on_attach=require'completion'.on_attach}
  require'nvim_lsp'.tsserver.setup{on_attach=require'completion'.on_attach}
  require'nvim_lsp'.vuels.setup{on_attach=require'completion'.on_attach}
END
