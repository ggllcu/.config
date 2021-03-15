local on_attach = require'completion'.on_attach

require'lspconfig'.html.setup{ on_attach=on_attach }
require'lspconfig'.intelephense.setup{ on_attach=on_attach }
require'lspconfig'.vuels.setup{ on_attach=on_attach }
