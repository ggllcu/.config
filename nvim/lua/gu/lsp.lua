local nvim_lsp = require'lspconfig'

require'lspconfig'.html.setup{ on_attach=on_attach }
require'lspconfig'.intelephense.setup{ on_attach=on_attach }
require'lspconfig'.vuels.setup{ on_attach=on_attach }
require'lspconfig'.tsserver.setup{ on_attach=on_attach }

