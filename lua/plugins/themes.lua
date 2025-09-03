local M = {
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
