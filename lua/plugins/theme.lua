local M = {
    "deparr/tairiki.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("tairiki").setup {
            transparent = true,
            style = "dark",
            term_colors = true,
            highlights = {
                Visual = {
                    fmt = "reverse",
                },
                CursorLineNr = {
                    fg = "$purple",
                },
            },
            lualine = {
                transparent = true,
            },
        }

        require('tairiki').load()
    end,
}

return M
