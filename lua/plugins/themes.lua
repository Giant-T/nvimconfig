local M = {
    {
        "ramojus/mellifluous.nvim",
        lazy = false,
        version = "1.2.0",
        priority = 1000,
        config = function()
            require("mellifluous").setup({
                styles = {
                    comments = { italic = false },
                },
                highlight_overrides = {
                    dark = function(highlighter, colors) -- dark theme
                        highlighter.set("Visual", { reverse = true })
                    end,
                },
                transparent_background = {
                    enabled = true,
                }
            })
            -- vim.cmd.colorscheme("mellifluous")
        end,
    },
    {
        "cdmill/neomodern.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("neomodern").setup({
                theme = "hojicha",
                variant = "dark",
                transparent = true,
                plain_float = true,
            })
            require("neomodern").load()
            vim.api.nvim_set_hl(0, "Visual", { reverse = true })
        end,
    },
}

return M
