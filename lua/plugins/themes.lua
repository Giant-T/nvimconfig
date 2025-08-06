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

            vim.cmd.colorscheme("mellow")
        end,
    },
}

return M
