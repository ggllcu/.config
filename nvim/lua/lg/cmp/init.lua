local lspkind = require "lspkind"
lspkind.init()

local cmp = require "cmp"

cmp.setup {
    mapping = {
        ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c'  }),
        ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c'  }),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c'  }),
        ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
        ['<C-e>'] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        }),

        ['<CR>'] = cmp.mapping.confirm({ select = true  }),
    },

    sources = {
        { name = "buffer", keyword_length = 3 },
        { name = "nvim_lsp" },
        { name = "path" },
        { name = "zsh" },
        { name = "nvim_lua" },
    },

    formatting = {
        -- Youtube: How to set up nice formatting for your sources.
        format = lspkind.cmp_format {
            with_text = true,
            menu = {
                buffer = "[buf]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[api]",
                path = "[path]",
                luasnip = "[snip]",
                gh_issues = "[issues]",
            },
        },
    },

    experimental = {
        -- I like the new menu better! Nice work hrsh7th
        native_menu = false,

        ghost_text = true,
    },
}
