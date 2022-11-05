require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    ensure_installed = {
        "bash",
		"comment",
		"css",
        "dockerfile",
        "elixir",
        "fish",
		"html",
		"javascript",
		"json",
        "latex",
		"lua",
		"markdown",
        "php",
        "sql",
        "tsx",
        "vim",
        "vue",
		"regex",
		"scss",
		"toml",
		"typescript",
		"yaml",
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },
    indent = {
        enable = true
    },
    autotag = {
        enable = true
    }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
