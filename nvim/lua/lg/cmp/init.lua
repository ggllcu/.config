local lspkind = require "lspkind"
lspkind.init()

local cmp = require "cmp"

cmp.setup {
      mapping = {
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-e>"] = cmp.mapping.close(),
    ["<c-y>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    },
    ["<c-q>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },

    ["<c-space>"] = cmp.mapping.complete(),
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
