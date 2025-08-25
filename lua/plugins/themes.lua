local M = {
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
            -- require("neomodern").load()
            -- vim.api.nvim_set_hl(0, "Visual", { reverse = true })
        end,
    },
    {
        "mellow-theme/mellow.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.mellow_bold_functions = true
            vim.g.mellow_transparent = true
            vim.g.mellow_highlight_overrides = {
                Visual = { reverse = true },
            }

            -- vim.cmd.colorscheme("mellow")
        end,
    },
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("kanagawa").setup({
                transparent = true,
                keywordStyle = { italic = false },
                colors = {
                    theme = {
                        all = {
                            ui = {
                                bg_gutter = "none",
                            },
                        },
                    },
                },
                overrides = function()
                    return {
                        Visual = { reverse = true },
                        TelescopeBorder = { bg = "none" },
                    }
                end,
            })

            -- vim.cmd.colorscheme("kanagawa")
        end,
    },
    {
        "vague2k/vague.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("vague").setup({
                transparent = true,
                style = {
                    strings = "none",
                },
                on_highlights = function(highlights)
                    highlights["LspReferenceText"] = { gui = "bold" }
                end,
            })

            vim.cmd.colorscheme("vague")
            vim.api.nvim_set_hl(0, "Visual", { reverse = true })
        end,
    },
}

return M
