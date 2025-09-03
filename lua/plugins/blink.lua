return {
    "saghen/blink.cmp",
    event = "BufReadPre",
    version = "1.*",
    dependencies = {
        -- Snippets
        { "rafamadriz/friendly-snippets" }, -- useful snippets
    },
    opts = {
        keymap = { preset = "default" },
        sources = {
            default = { "lsp", "snippets", "buffer" },
        },
        fuzzy = { implementation = "prefer_rust" },
    },
    opts_extend = { "sources.default" },
}
